# 1D Heat Equation using Explicit Finite Difference Method

## Description

This project solves the one-dimensional heat equation using the Explicit Finite Difference Method (FTCS). The numerical solution demonstrates how heat diffuses through a one-dimensional rod over time.

## Governing Equation

du/dt = α(d²u/dx²)

where:

- **u(x,t)** = Temperature
- **α** = Thermal diffusivity

## Initial Condition

The initial temperature distribution is:

u(x,0) = x(π − x)

## Boundary Conditions

- u(0,t) = 0
- u(π,t) = 0

## Numerical Method

- Explicit Finite Difference Method (FTCS)
- Uniform spatial and temporal discretization
- Stability condition verification (r ≤ 0.5)

## Features

- MATLAB implementation
- Explicit FTCS scheme
- Stable numerical solution
- Temperature distribution visualization

## Output

The program generates the temperature distribution at the final simulation time.

## Author

**Muhammed Nasid K T**
