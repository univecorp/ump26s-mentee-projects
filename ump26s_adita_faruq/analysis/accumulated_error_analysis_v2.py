import csv
import math
import random

ACC_WIDTH = 17
MODULUS = 1 << ACC_WIDTH
MASK = MODULUS - 1
TRIALS = 1000
SEED = 20261021
LENGTHS = [1, 3, 8, 16, 32, 64, 128]

rng = random.Random(SEED)

def analyze_sequence(sequence):
    # Unbounded sums isolate approximation error.
    exact_wide = 0
    approx_wide = 0

    # 17-bit sums reproduce RTL accumulator wrapping.
    exact_rtl = 0
    approx_rtl = 0

    exact_overflow = False
    approx_overflow = False

    for a, b in sequence:
        exact_product = a * b
        approx_product = (a & 0xFC) * (b & 0xFC)

        exact_wide += exact_product
        approx_wide += approx_product

        exact_sum = exact_rtl + exact_product
        approx_sum = approx_rtl + approx_product

        if exact_sum > MASK:
            exact_overflow = True
        if approx_sum > MASK:
            approx_overflow = True

        exact_rtl = exact_sum & MASK
        approx_rtl = approx_sum & MASK

    return {
        "exact_wide": exact_wide,
        "approx_wide": approx_wide,
        "wide_error": exact_wide - approx_wide,
        "exact_rtl": exact_rtl,
        "approx_rtl": approx_rtl,
        "rtl_abs_difference": abs(exact_rtl - approx_rtl),
        "exact_overflow": exact_overflow,
        "approx_overflow": approx_overflow,
    }

# Validate the original testbench sequence.
test = analyze_sequence([(3, 4), (5, 6), (2, 10)])
assert test["exact_wide"] == 62
assert test["approx_wide"] == 16
assert test["exact_rtl"] == 62
assert test["approx_rtl"] == 16

print("Testbench sequence: exact=62, approximate=16, difference=46")
print()

summary = []

with open("accumulated_error_details_v2.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow([
        "Length", "Trial",
        "Exact_Wide_Sum", "Approx_Wide_Sum",
        "Wide_Approximation_Error",
        "Exact_RTL_Output", "Approx_RTL_Output",
        "RTL_Absolute_Output_Difference",
        "Exact_Overflow", "Approx_Overflow"
    ])

    for length in LENGTHS:
        wide_errors = []
        rtl_differences = []
        exact_overflows = 0
        approx_overflows = 0
        rtl_matches = 0

        for trial in range(1, TRIALS + 1):
            sequence = [
                (rng.randrange(256), rng.randrange(256))
                for _ in range(length)
            ]

            result = analyze_sequence(sequence)
            wide_errors.append(result["wide_error"])
            rtl_differences.append(result["rtl_abs_difference"])

            exact_overflows += result["exact_overflow"]
            approx_overflows += result["approx_overflow"]

            if result["exact_rtl"] == result["approx_rtl"]:
                rtl_matches += 1

            writer.writerow([
                length, trial,
                result["exact_wide"], result["approx_wide"],
                result["wide_error"],
                result["exact_rtl"], result["approx_rtl"],
                result["rtl_abs_difference"],
                int(result["exact_overflow"]),
                int(result["approx_overflow"])
            ])

        wide_mae = sum(wide_errors) / TRIALS
        wide_rmse = math.sqrt(
            sum(e * e for e in wide_errors) / TRIALS
        )
        wide_max = max(wide_errors)
        wide_mean = wide_mae

        rtl_mae = sum(rtl_differences) / TRIALS
        rtl_max = max(rtl_differences)
        rtl_match_percent = 100 * rtl_matches / TRIALS

        row = [
            length, TRIALS,
            wide_mae, wide_rmse, wide_max, wide_mean,
            rtl_mae, rtl_max, rtl_match_percent,
            exact_overflows, approx_overflows
        ]
        summary.append(row)

with open("accumulated_error_summary_v2.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow([
        "Length", "Trials",
        "Wide_Mean_Absolute_Error",
        "Wide_RMSE", "Wide_Maximum_Error",
        "Wide_Mean_Signed_Error_Exact_Minus_Approx",
        "RTL_Mean_Absolute_Output_Difference",
        "RTL_Maximum_Output_Difference",
        "RTL_Exact_Match_Percentage",
        "Sequences_With_Exact_Overflow",
        "Sequences_With_Approx_Overflow"
    ])
    writer.writerows(summary)

print("=== Accumulated Error: Wide Sums vs. 17-bit RTL ===")
print("Wide errors isolate truncation; RTL differences include wrapping.")
print()

for row in summary:
    (length, _, wide_mae, wide_rmse, wide_max, _,
     rtl_mae, rtl_max, match, exact_ov, approx_ov) = row

    print(
        f"N={length:3d} | "
        f"Wide MAE={wide_mae:10.2f} | "
        f"Wide RMSE={wide_rmse:10.2f} | "
        f"Wide max={wide_max:8d} | "
        f"RTL output MAE={rtl_mae:10.2f} | "
        f"RTL max={rtl_max:6d} | "
        f"matches={match:5.2f}% | "
        f"overflow sequences={exact_ov}/{approx_ov}"
    )

print()
print("Created accumulated_error_details_v2.csv")
print("Created accumulated_error_summary_v2.csv")
