# iOS_activity_wipro


My daily journal tracking my progress into iOS development using Swift. (Learning from Windows using online tools!)

Day 1: The Absolute Foundations (Variables, Constants, & Data Types)

#### 1. Storing Data (`var` vs `let`)
- **`var` (Variables)**: Used for values that **can change** over time (e.g., score, time elapsed).
- **`let` (Constants)**: Used for values that **never change** (e.g., date of birth, username). Swift highly optimizes for constants to keep apps fast and bug-free.

#### 2. The 4 Basic Data Types
- **`String`**: Textual data wrapped in double quotes (`"Hello, Bro!"`).
- **`Int`**: Whole numbers without any decimals (`25`, `-5`).
- **`Double`**: Precise decimal numbers (`3.14159`).
- **`Bool`**: Boolean values representing only `true` or `false` switches.

#### 3. Initializing Booleans (`Bool`)
- **Implicit (Type Inference)**: Letting Swift guess the type based on the value: `let active = true`
- **Explicit (Type Annotation)**: Explicitly declaring the type using a colon: `var isComplete: Bool = false`
- **Expression-based**: Initializing using a math or logic check: `let passes = score >= 50`
- **Default Constructor**: Calling `Bool()` automatically defaults the value to `false`.

---

### Code Snippet of the Day

```swift
// 1. Variables and Constants
let developerName: String = "Bro"
var dailyStreak: Int = 1
let codingTime: Double = 0.5

// 2. Different ways to initialize Booleans
let isSwiftAwesome = true                // Implicit
var isMacAvailable: Bool = false        // Explicit
let isStreakBroken = dailyStreak == 0   // Expression (evaluates to false)
let defaultState = Bool()               // Constructor (defaults to false)

// Quick verification print
print("Developer \(developerName) finished day \(dailyStreak) successfully!")
```

---

###  Progress Check
- [x] Day 1: Variables & Constants, Core Data Types (Strings, Ints, Doubles, Bools) & Bool Initialization, String Interpolation & Basic Math Operations
