# 2D Heat Equation using Explicit Finite Difference Method

## Description

This project solves the two-dimensional heat equation using the Explicit Finite Difference Method (FTCS). The numerical solution demonstrates how heat diffuses from a hot region to the surrounding area over time.

## Governing Equation

du/dt = α(d²u/dx² + d²u/dy²)

where:

- **u(x,y,t)** = Temperature
- **α** = Thermal diffusivity

## Initial Condition

A square region at the center of the computational domain is initialized with a high temperature, while the remaining domain is set to zero temperature.

## Boundary Conditions

- Temperature is fixed at zero on all four boundaries.
- Dirichlet boundary conditions are used.

## Numerical Method

- Explicit Finite Difference Method (FTCS)
- Uniform spatial discretization in both x and y directions
- Explicit time-stepping scheme
- Stability condition verification (r ≤ 0.25)

## Features

- MATLAB implementation
- Explicit FTCS scheme
- Two-dimensional heat diffusion simulation
- 3D surface plot visualization
- Colorbar for temperature distribution
- Stable numerical solution

## Output

The program generates a three-dimensional surface plot showing the temperature distribution across the computational domain at the final simulation time.

## Author

**Muhammed Nasid K T**
