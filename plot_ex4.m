% Plot results
fig1 = figure('Renderer', 'painters', 'Position', [100 100 800 500]);
plot(T, Y(:,1), 'b', 'DisplayName', '$\theta$ [rad]', 'LineWidth', 1.5);
hold on;
plot(T, Y(:,2), 'r', 'DisplayName', '$\dot{\theta}$ [rad/s]', 'LineWidth', 1.5);
xlabel('Time [s]', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('States', 'Interpreter', 'latex', 'FontSize', 14);
title('Rimless Wheel Dynamics', 'FontSize', 18);
legend('Interpreter', 'latex', 'FontSize', 12, 'Location', 'northeast');
set(gca, 'FontSize', 12); grid on; box on;

% Save
exportgraphics(fig1, fullfile('plot_ex4', 'rimless_time_g.pdf'));


fig2 = figure('Renderer', 'painters', 'Position', [100 100 800 500]);
plot(Y(:,1), Y(:,2), 'b', 'DisplayName', '$\theta$ vs $\dot{\theta}$', 'LineWidth', 1.5);
hold on;
plot(Y(1,1), Y(1,2), 'r*', 'LineWidth', 2.5, 'DisplayName', 'Initial Point');
xlabel('$\theta$ [rad]', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('$\dot{\theta}$ [rad/s]', 'Interpreter', 'latex', 'FontSize', 14);
title('Rimless Wheel Limit Cycle', 'FontSize', 18);
legend('Interpreter', 'latex', 'FontSize', 12, 'Location', 'northeast');
set(gca, 'FontSize', 12); grid on; box on;

% save
exportgraphics(fig2, fullfile('plot_ex4', 'rimless_phase_g.pdf'));