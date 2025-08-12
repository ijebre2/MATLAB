% Define the piecewise function step2(x)
function y = f(x)
    if abs(x) < 1
        y = x^2;
    elseif abs(x) == 1
        y = 2;
    else
        y = Inf;
    end
end

% Generate x values
x_values = linspace(-2, 2, 1000);

% Compute corresponding y values using arrayfun with correct function name
y_values = arrayfun(@f(x); x_values);

% Plot the function
figure;
plot(x_values, y_values, 'b', 'LineWidth', 2);
hold on;
yline(2, 'r--', 'LineWidth', 1.5);
xlabel('x');
ylabel('f(x)');
title('Graph of f(x)');
grid on;
legend('f(x)', 'y = 2', 'Location', 'NorthWest');
