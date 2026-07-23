# 2D Wave Equation using Finite Difference Method (FDM)

## Overview

This project presents the numerical solution of the **two-dimensional Wave Equation** using the **Explicit Finite Difference Method (FDM)** in MATLAB.

The wave equation models the propagation of waves such as vibrations, sound waves, water waves, and electromagnetic waves. The numerical solution is obtained by discretizing both the spatial and temporal domains using finite difference approximations.

---

## Governing Equation

\[
\frac{\partial^2 u}{\partial t^2}
=
c^2
\left(
\frac{\partial^2 u}{\partial x^2}
+
\frac{\partial^2 u}{\partial y^2}
\right)
\]

where

- \(u(x,y,t)\) = Wave amplitude
- \(c\) = Wave propagation speed

---

## Initial Conditions

The initial displacement is chosen as a Gaussian pulse centered in the domain.

$$
u(x,y,0)=
\exp\left(
-40\left[(x-0.5)^2+(y-0.5)^2\right]
\right)
$$

Initial velocity:

$$
\frac{\partial u}{\partial t}(x,y,0)=0
$$

---

## Boundary Conditions

Dirichlet Boundary Conditions

```
u = 0
```

on all four boundaries.


## Results

### 3D Surface Plot

The surface plot shows the wave amplitude across the computational domain.

### Contour Plot

The contour plot illustrates the propagation pattern of the wave.

## Author

**Muhammed Nasid K T**



## License

This project is released under the MIT License.
