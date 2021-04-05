function [t_corrected, u_corrected, y_corrected] = correct(t, u, y)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

% Original Plot
fig = figure('Position', [1000, 1000, 1200, 500]);

subplot(1,2,1)
plot(t, u)
hold on
plot(t, y)
title("Original signal")

subplot(1,2,2)
y_corrected = y - 3;
y_corrected = y_corrected(1002:end);
u_corrected = (u - 4);
u_corrected = u_corrected(1002:end);
t_corrected = t(1002:end) -1;
l = length(t_corrected);
zero = zeros(1, l);
plot(t_corrected, y_corrected)
hold on
plot(t_corrected, u_corrected)
hold on
plot(t_corrected, zero)
title('Corrected Plot')
saveas(fig, 'corrected.png')
end

