% 2D Heat Equation using Finite Difference Method
clear;
clc;
close all;

% Parameters
Lx = 1;
Ly = 1;

Nx = 50;
Ny = 50;

alpha = 0.1;
T = 0.1;

dx = Lx/Nx;
dy = Ly/Ny;

dt = 0.0005;

r = alpha*dt/dx^2;

if r > 0.25
    error('Scheme is unstable. Reduce dt.');
end

% Grid
x = linspace(0,Lx,Nx+1);
y = linspace(0,Ly,Ny+1);

[X,Y] = meshgrid(x,y);

% Initial Temperature

u = zeros(Ny+1,Nx+1);

u(20:30,20:30)=100;

% Time Loop

Nt = round(T/dt);

for n=1:Nt

    unew=u;

    for i=2:Ny
        for j=2:Nx

            unew(i,j)=u(i,j)+r*( ...
                u(i+1,j)+u(i-1,j)+ ...
                u(i,j+1)+u(i,j-1)- ...
                4*u(i,j));

        end
    end

    u=unew;

end

% Plot

figure

surf(X,Y,u)

shading interp

xlabel('x')
ylabel('y')
zlabel('Temperature')

title('2D Heat Equation using FDM')

colorbar

grid on

exportgraphics(gcf,'heat_equation_1d.png','Resolution',300);
