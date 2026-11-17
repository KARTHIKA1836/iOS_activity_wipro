print(7 / 2) → 3
// Integer division truncates the decimal part.
print(7 % 2) → 1
// Remainder of 7 ÷ 2 is 1.
print(-7 % 3) → -1
// Swift keeps the sign of the first number (-7 = 3 * -2 + (-1)).
print(7.0 / 2) → 3.5
// Because 7.0 is a Double, Swift performs floating-point division.
print(10 - 2 * 3 + 4 / 2) → 6
// Operator precedence evaluates * and / first: 10 - 6 + 2 = 6.
print(5 > 3 && 2 > 4 || true) → true
// && runs before ||: (true && false) || true → false || true → true.
print(1 << 3) → 8
// Bitwise left shift moves binary 0001 three places left to 1000 (\(1 \times 2^3 = 8\)).
print(6 & 3, 6 | 3, 6 ^ 3) → 2 7 5
// In binary (6 = 110, 3 = 011): AND is 010 (2), OR is 111 (7), XOR is 101 (5).
print(x &+ 1) → 0
// &+ is Swift's overflow addition operator. An unsigned 8-bit integer (UInt8) maxes out at 255 and wraps around cleanly to 0 instead of crashing.