% ============================================================
% 2D Wave Equation using Explicit Finite Difference Method
%
% Governing Equation:
%
% ∂²u/∂t² = c²(∂²u/∂x² + ∂²u/∂y²)
%
% Numerical Method:
% Explicit Finite Difference Method
%
% Author : Muhammed Nasid K T
% ============================================================

clear;
clc;
close all;

% Parameters

Nx = 51;
Ny = 51;

Lx = 1;
Ly = 1;

dx = Lx/(Nx-1);
dy = Ly/(Ny-1);

dt = 0.005;

c = 1;

r = (c*dt/dx)^2;

Nt = 200;

[x,y] = meshgrid(linspace(0,Lx,Nx),linspace(0,Ly,Ny));

% Initial Conditions

u_old = zeros(Ny,Nx);

u = exp(-100*((x-0.5).^2+(y-0.5).^2));

% Time Marching

for n = 1:Nt

    u_new = u;

    for i = 2:Ny-1
        for j = 2:Nx-1

            u_new(i,j) = ...
                2*u(i,j)-u_old(i,j)+ ...
                r*( ...
                u(i+1,j)+u(i-1,j)+ ...
                u(i,j+1)+u(i,j-1)- ...
                4*u(i,j));

        end
    end

    u_new(1,:) = 0;
    u_new(end,:) = 0;
    u_new(:,1) = 0;
    u_new(:,end) = 0;

    u_old = u;
    u = u_new;

end

% Surface Plot

figure

surf(x,y,u)

shading interp

colormap(parula)

colorbar

xlabel('x')

ylabel('y')

zlabel('Amplitude')

title('2D Wave Equation using FDM')

view(135,30)

% Contour Plot

figure

contourf(x,y,u,20)

colorbar

xlabel('x')

ylabel('y')

title('Contour Plot of 2D Wave Equation')