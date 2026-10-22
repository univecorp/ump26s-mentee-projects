import csv
import random
import math

WIDTH = 8
ACC_WIDTH = 2 * WIDTH + 1
ACC_MODULUS = 1 << ACC_WIDTH
ACC_MASK = ACC_MODULUS - 1
TRIALS = 1000
SEED = 20261021

rng = random.Random(SEED)
sequence_lengths = [1, 3, 8, 16, 32, 64, 128]

def simulate_mac(sequence, approximate=False):
    result = 0
    overflow_events = 0

    for a, b in sequence:
        if approximate:
            a = a & 0xFC
            b = b & 0xFC

        product = a * b
        unwrapped_sum = result + product

        if unwrapped_sum >= ACC_MODULUS:
            overflow_events += 1

        # Match the 17-bit RTL accumulator.
        result = unwrapped_sum & ACC_MASK

    return result, overflow_events

# First, validate the three pairs from the existing testbenches.
test_sequence = [(3, 4), (5, 6), (2, 10)]

exact_result, _ = simulate_mac(test_sequence)
approx_result, _ = simulate_mac(test_sequence, approximate=True)

print("=== Existing Testbench Sequence ===")
print(f"Exact accumulated result      : {exact_result}")
print(f"Approximate accumulated result: {approx_result}")
print(f"Absolute output difference    : {abs(exact_result - approx_result)}")

assert exact_result == 62
assert approx_result == 16

# Run randomized accumulated-error analysis.
summary_rows = []

with open("accumulated_error_details.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow([
        "Sequence_Length", "Trial",
        "Exact_Result", "Approx_Result",
        "Signed_Difference_Approx_Minus_Exact",
        "Absolute_Output_Difference",
        "Exact_Overflow_Events", "Approx_Overflow_Events"
    ])

    for length in sequence_lengths:
        abs_differences = []
        signed_differences = []
        exact_matches = 0
        exact_overflow_sequences = 0
        approx_overflow_sequences = 0
        max_abs_difference = 0

        for trial in range(1, TRIALS + 1):
            sequence = [
                (rng.randrange(256), rng.randrange(256))
                for _ in range(length)
            ]

            exact, exact_overflows = simulate_mac(sequence)
            approx, approx_overflows = simulate_mac(
                sequence, approximate=True
            )

            difference = approx - exact
            abs_difference = abs(difference)

            abs_differences.append(abs_difference)
            signed_differences.append(difference)
            max_abs_difference = max(
                max_abs_difference, abs_difference
            )

            if exact == approx:
                exact_matches += 1

            if exact_overflows > 0:
                exact_overflow_sequences += 1

            if approx_overflows > 0:
                approx_overflow_sequences += 1

            writer.writerow([
                length, trial, exact, approx,
                difference, abs_difference,
                exact_overflows, approx_overflows
            ])

        mae = sum(abs_differences) / TRIALS
        rmse = math.sqrt(
            sum(x * x for x in abs_differences) / TRIALS
        )
        mean_signed_difference = sum(signed_differences) / TRIALS
        exact_match_percent = 100 * exact_matches / TRIALS

        summary_rows.append([
            length, TRIALS, mae, rmse,
            max_abs_difference, mean_signed_difference,
            exact_match_percent,
            exact_overflow_sequences,
            approx_overflow_sequences
        ])

with open("accumulated_error_summary.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow([
        "Sequence_Length", "Trials",
        "Mean_Absolute_Output_Difference",
        "RMSE_Output_Difference",
        "Maximum_Absolute_Output_Difference",
        "Mean_Signed_Difference_Approx_Minus_Exact",
        "Exact_Match_Percentage",
        "Sequences_With_Exact_Overflow",
        "Sequences_With_Approx_Overflow"
    ])
    writer.writerows(summary_rows)

print()
print("=== Randomized Accumulated MAC Error Analysis ===")
print(f"Accumulator width: {ACC_WIDTH} bits")
print(f"Random seed: {SEED}")
print(f"Trials per sequence length: {TRIALS}")
print()

for row in summary_rows:
    (length, trials, mae, rmse, max_error, mean_signed,
     match_percent, exact_ov, approx_ov) = row

    print(
        f"Length={length:3d} | "
        f"MAE={mae:10.3f} | "
        f"RMSE={rmse:10.3f} | "
        f"Max={max_error:6d} | "
        f"Mean signed={mean_signed:10.3f} | "
        f"Exact matches={match_percent:6.2f}% | "
        f"Overflow sequences exact/approx={exact_ov}/{approx_ov}"
    )

print()
print("Generated files:")
print("  accumulated_error_details.csv")
print("  accumulated_error_summary.csv")
