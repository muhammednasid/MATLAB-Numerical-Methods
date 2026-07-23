% ============================================================
% 2D Poisson Equation using Finite Difference Method
%
% Governing Equation:
%
% ∂²u/∂x² + ∂²u/∂y² = f(x,y)
%
% Numerical Method:
% Jacobi Iterative Method
%
% Author : Muhammed Nasid K T
% ============================================================

clear;
clc;
close all;

% Grid Parameters

Nx = 50;
Ny = 50;

Lx = 1;
Ly = 1;

dx = Lx/(Nx-1);
dy = Ly/(Ny-1);

[x,y] = meshgrid(linspace(0,Lx,Nx),linspace(0,Ly,Ny));

% Initialize Solution

u = zeros(Ny,Nx);

% Source Function

f = 100*exp(-50*((x-0.5).^2 + (y-0.5).^2));

% Boundary Conditions

u(:,1)   = 0;
u(:,end) = 0;
u(1,:)   = 0;
u(end,:) = 0;

% Jacobi Iteration

tol = 1e-6;
maxIter = 5000;

for k = 1:maxIter

    u_old = u;

    for i = 2:Ny-1
        for j = 2:Nx-1

            u(i,j) = 0.25*( ...
                u_old(i+1,j) + ...
                u_old(i-1,j) + ...
                u_old(i,j+1) + ...
                u_old(i,j-1) ...
                - dx^2*f(i,j));

        end
    end

    err = max(max(abs(u-u_old)));

    if err < tol
        fprintf('Converged after %d iterations.\n',k);
        break;
    end

end

% Surface Plot

figure

surf(x,y,u)

shading interp
colormap(parula)
colorbar

xlabel('x')
ylabel('y')
zlabel('u(x,y)')

title('2D Poisson Equation using FDM')

view(135,30)

% Contour Plot

figure

contourf(x,y,u,20)

colorbar

xlabel('x')
ylabel('y')

title('Contour Plot of 2D Poisson Equation')