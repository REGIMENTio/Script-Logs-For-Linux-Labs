# Revision Notes: Advanced Engineering Mathematics

This document covers the key concepts, formulas, and methods from Unit I (Differential Calculus) and the beginning of Unit II (Integral Calculus).

---
## 1. Key Trigonometric Identities

These are essential for simplifying complex functions before differentiation or integration.

### Power-Reduction Formulas
- **`cos²(x) = (1 + cos(2x)) / 2`**
- **`sin²(x) = (1 - cos(2x)) / 2`**
- **`sin³(x) = (3sin(x) - sin(3x)) / 4`**

### Product-to-Sum Formulas
- **`cos(A)cos(B) = (1/2)[cos(A-B) + cos(A+B)]`**
- **`sin(A)sin(B) = (1/2)[cos(A-B) - cos(A+B)]`**
- **`sin(A)cos(B) = (1/2)[sin(A+B) + sin(A-B)]`**

### Combining Terms (R-Formula)
- An expression of the form `a·cos(x) + b·sin(x)` can be rewritten as **`R·cos(x-α)`**.
- Where **`R = √(a² + b²)`**.
- And **`α`** is an angle such that `cos(α) = a/R` and `sin(α) = b/R`.

---
## 2. Unit I: Differential Calculus

### Mean Value Theorems
- **Rolle's Theorem:** If f(x) is continuous on [a,b], differentiable on (a,b), and f(a)=f(b), then there exists a 'c' in (a,b) where `f'(c) = 0`.
- **Lagrange's MVT:** If f(x) is continuous on [a,b] and differentiable on (a,b), then `f'(c) = (f(b) - f(a)) / (b - a)`.
- **Cauchy's MVT:** For two functions f(x) and g(x), `f'(c)/g'(c) = (f(b) - f(a)) / (g(b) - g(a))`.

### Successive Differentiation
- **Leibnitz's Theorem (for products uv):**
  `Dⁿ(uv) = (nC₀)uₙv + (nC₁)uₙ₋₁v₁ + (nC₂)uₙ₋₂v₂ + ...`
- **Strategy:** Always choose the polynomial part as 'v' so its derivatives become zero.

### Taylor & Maclaurin Series
- **Goal:** Approximate a function with an infinite polynomial around a point 'a'.
- **Taylor Series Formula:**
  `f(x) = f(a) + f'(a)(x-a) + (f''(a)/2!)(x-a)² + ...`
- **Maclaurin Series:** A special case where the expansion is around `a=0`.
- **Lagrange's Form of Remainder (The Error Term):**
  `Rₙ(x) = (f⁽ⁿ⁺¹⁾(c) / (n+1)!) * (x-a)ⁿ⁺¹` for some 'c' between 'a' and 'x'.

### Functions of Several Variables
- **Partial Derivative (∂f/∂x):** Differentiate with respect to one variable, treating all others as constants.
- **Homogeneous Function:** A function `f(x,y)` is homogeneous of degree 'n' if `f(tx, ty) = tⁿ · f(x,y)`.
- **Euler's Theorem (First Order):** If `f` is homogeneous of degree 'n', then:
  `x·∂f/∂x + y·∂f/∂y = n·f`
- **Euler's Theorem (Second Order):**
  `x²·∂²f/∂x² + 2xy·∂²f/∂x∂y + y²·∂²f/∂y² = n(n-1)f`
- **Jacobian Determinant:** The determinant of the matrix of all first-order partial derivatives. For `u(x,y)` and `v(x,y)`:
  `J = ∂(u,v)/∂(x,y) = | (∂u/∂x ∂u/∂y) , (∂v/∂x ∂v/∂y) |`
- **Maxima/Minima Test:**
  1. Find critical points by setting `fₓ = 0` and `fᵧ = 0`.
  2. Calculate the discriminant `D = fₓₓ·fᵧᵧ - (fₓᵧ)²` at each critical point.
  3. **If D > 0, fₓₓ > 0:** Local Minimum.
  4. **If D > 0, fₓₓ < 0:** Local Maximum.
  5. **If D < 0:** Saddle Point.
  6. **If D = 0:** Test is inconclusive.

---
## 3. Unit II: Integral Calculus (Introduction)

### Definite Integrals
- **Fundamental Theorem:** `∫ₐᵇ f(x)dx = F(b) - F(a)`, where F is the antiderivative of f.
- **Key Property (King's Rule):** `∫ₐᵇ f(x)dx = ∫ₐᵇ f(a+b-x)dx`.

### Double Integrals
- **Concept:** Calculates the volume under a 3D surface `z = f(x,y)` over a region