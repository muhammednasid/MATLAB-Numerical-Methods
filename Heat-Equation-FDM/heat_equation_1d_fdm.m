% FDM for 1D Heat Equation

L = pi;          % Length of the rod
T = 0.2;        % Total time
alpha = 1;      % Thermal diffusivity

M = 100;         % Number of spatial steps
N = 1000;       % Number of time steps

dx = L/M;
dt = T/N;
r = alpha*dt/dx^2;
if r > 0.5
    error('Unstable scheme: choose a smaller dt or larger dx.');
end

x = linspace(0, L, M+1);
u = zeros(M+1, N+1);

% Initial condition
u(:,1) = x.*(pi-x);

% Boundary conditions
u(1,:) = 0;
u(end,:) = 0;

% Time marching
for n = 1:N
    for i = 2:M
        u(i,n+1) = u(i,n) + r*(u(i+1,n) - 2*u(i,n) + u(i-1,n));
    end
end

% Plot solution at final time
plot(x, u(:,end), 'LineWidth', 2)
xlabel('Position along the rod (x)')
ylabel('Temperature u(x,t)')
title('Solution of 1D Heat Equation using FDM')
grid on

exportgraphics(gcf,'heat_equation_1d.png','Resolution',300);
