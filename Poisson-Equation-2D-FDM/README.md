# 2D Poisson Equation using Finite Difference Method

## Description

This project solves the two-dimensional Poisson equation using the Finite Difference Method (FDM) and the Jacobi iterative method. A Gaussian source term is applied at the center of the computational domain.

## Governing Equation

∂²u/∂x² + ∂²u/∂y² = f(x,y)

where:

- **u(x,y)** = Solution variable
- **f(x,y)** = Source function

## Source Function

A Gaussian source is used:

f(x,y) = 100 exp(-50((x-0.5)² + (y-0.5)²))

## Boundary Conditions

- u = 0 on all boundaries
- Dirichlet boundary conditions

## Numerical Method

- Finite Difference Method (FDM)
- Jacobi Iterative Method
- Uniform grid

## Features

- MATLAB implementation
- Gaussian source term
- Surface plot visualization
- Filled contour plot
- Convergence criterion

## Output

- 3D surface plot
- Filled contour plot

## Author

**Muhammed Nasid K T**
