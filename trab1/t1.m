out = load('dados.mat');

% Original Plot
figure('Position', [1000, 1000, 1200, 500]);

subplot(1,2,1)
plot(out.t, out.u)
hold on
plot(out.t, out.y)
title("Original signal")

subplot(1,2,2)
y_corrected = out.y - 4;
y_corrected = y_corrected(1002:end);
u_corrected = (out.u - 4);
u_corrected = u_corrected(1002:end);
t_corrected = out.t(1002:end) -1;
l = length(t_corrected);
zero = zeros(1, l);
plot(t_corrected, y_corrected)
hold on
plot(t_corrected, u_corrected)
hold on
plot(t_corrected, zero)
title('Corrected Plot')
