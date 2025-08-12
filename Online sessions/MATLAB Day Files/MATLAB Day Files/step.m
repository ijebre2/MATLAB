% Define the function
f = @(x) (x.^2).*(abs(x)<1) + 2.*(abs(x)==1) ;

% Define the range of x values
x_values = linspace(-2, 2, 1000);

% Evaluate the function for each x value
y_values = f(x_values);

% Plot the function
plot(x_values, y_values, 'LineWidth', 2);
xlabel('x');
ylabel('f(x)');
title('Plot of f(x)');
grid on;
