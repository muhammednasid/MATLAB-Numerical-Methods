%% ============================================================
% 2D Laplace Equation using Finite Difference Method
%
% Governing Equation:
%
% ∂²u/∂x² + ∂²u/∂y² = 0
%
% Numerical Method:
% Jacobi Iterative Method
%
% Author : Muhammed Nasid K T
% ============================================================

clear;
clc;
close all;

% Parameters

Nx = 50;
Ny = 50;

u = zeros(Ny,Nx);

% Boundary Conditions

u(:,1) = 100;     % Left boundary
u(:,end) = 50;     % Right boundary
u(1,:) = 75;      % Top boundary
u(end,:) = 25;    % Bottom boundary

% Iterative Solver

tolerance = 1e-6;
maxIter = 5000;

for k = 1:maxIter

    u_old = u;

    for i = 2:Ny-1
        for j = 2:Nx-1

            u(i,j) = 0.25*(u_old(i+1,j) + u_old(i-1,j) + u_old(i,j+1) + u_old(i,j-1));

        end
    end

    error = max(max(abs(u-u_old)));

    if error < tolerance
        fprintf('Converged after %d iterations.\n',k);
        break;
    end

end

% Surface Plot
[X,Y] = meshgrid(1:Nx,1:Ny);

figure
surf(X,Y,u)

shading interp
colormap(parula)

xlabel('x')
ylabel('y')
zlabel('Potential')

title('2D Laplace Equation using FDM')

colorbar

view(135,30)

axis tight

% Contour Plot

figure

contourf(u,20)

colorbar

title('Contour Plot of 2D Laplace Equation')

xlabel('x')

ylabel('y')