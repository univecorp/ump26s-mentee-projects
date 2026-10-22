import csv
import math

# Exhaustively analyze all possible unsigned 8-bit input pairs.
WIDTH = 8
MAX_INPUT = (1 << WIDTH) - 1
TOTAL_PAIRS = (MAX_INPUT + 1) ** 2

total_abs_error = 0
total_squared_error = 0
total_relative_error = 0.0
relative_error_count = 0
exact_matches = 0
max_abs_error = 0
max_error_cases = []

# CSV files for detailed analysis.
with open("product_error_details.csv", "w", newline="") as detail_file:
    writer = csv.writer(detail_file)
    writer.writerow([
        "A", "B",
        "A_approx", "B_approx",
        "Exact_Product", "Approx_Product",
        "Signed_Error", "Absolute_Error",
        "Relative_Error_Percent"
    ])

    for a in range(MAX_INPUT + 1):
        for b in range(MAX_INPUT + 1):

            # Exact MAC product.
            exact_product = a * b

            # Approximate MAC: clear the two least significant bits.
            a_approx = a & 0xFC
            b_approx = b & 0xFC
            approx_product = a_approx * b_approx

            # Positive signed error means the approximate product
            # underestimates the exact product.
            signed_error = exact_product - approx_product
            abs_error = abs(signed_error)

            total_abs_error += abs_error
            total_squared_error += abs_error ** 2

            if exact_product != 0:
                relative_error = abs_error / exact_product
                total_relative_error += relative_error
                relative_error_count += 1
                relative_error_percent = 100 * relative_error
            else:
                # Relative error is undefined when the reference is zero.
                relative_error_percent = ""

            if abs_error == 0:
                exact_matches += 1

            if abs_error > max_abs_error:
                max_abs_error = abs_error
                max_error_cases = [(a, b, exact_product, approx_product)]
            elif abs_error == max_abs_error:
                max_error_cases.append(
                    (a, b, exact_product, approx_product)
                )

            writer.writerow([
                a, b,
                a_approx, b_approx,
                exact_product, approx_product,
                signed_error, abs_error,
                relative_error_percent
            ])

# Compute summary statistics.
mae = total_abs_error / TOTAL_PAIRS
rmse = math.sqrt(total_squared_error / TOTAL_PAIRS)
mean_relative_error = (
    100 * total_relative_error / relative_error_count
)

exact_match_percent = 100 * exact_matches / TOTAL_PAIRS

# Write a concise summary file.
with open("product_error_summary.csv", "w", newline="") as summary_file:
    writer = csv.writer(summary_file)
    writer.writerow(["Metric", "Value"])
    writer.writerow(["Total input pairs", TOTAL_PAIRS])
    writer.writerow(["Mean absolute error", mae])
    writer.writerow(["Maximum absolute error", max_abs_error])
    writer.writerow(["Root mean square error", rmse])
    writer.writerow([
        "Mean relative error (%)",
        mean_relative_error
    ])
    writer.writerow(["Exact matches", exact_matches])
    writer.writerow(["Exact match percentage (%)", exact_match_percent])
    writer.writerow([
        "Nonzero exact-product pairs used for relative error",
        relative_error_count
    ])

print("=== Exhaustive Product-Level Error Analysis ===")
print(f"Input pairs tested       : {TOTAL_PAIRS}")
print(f"Mean absolute error      : {mae:.6f}")
print(f"Maximum absolute error   : {max_abs_error}")
print(f"Root mean square error   : {rmse:.6f}")
print(f"Mean relative error      : {mean_relative_error:.6f}%")
print(f"Exact matches            : {exact_matches}")
print(f"Exact match percentage   : {exact_match_percent:.6f}%")
print()
print("Cases with maximum absolute error:")
for case in max_error_cases:
    a, b, exact_product, approx_product = case
    print(
        f"A={a}, B={b}, "
        f"exact={exact_product}, approximate={approx_product}"
    )

print()
print("Generated files:")
print("  product_error_details.csv")
print("  product_error_summary.csv")
