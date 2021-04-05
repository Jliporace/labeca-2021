data = load('dados.mat');

[t, u, y] = correct(data.t, data.u, data.y);

[y_low] = our_lowpass(t, y);

plot(t, y_low);

fun = 5 - y_low(1:0.4*1000);
area = trapz(fun)/1000;

tau3 = area / 5;

%---------------------------------

k = 1.25;
tau1 = 0.063;
tau2 = 0.095;

tf1 = tf(k, [tau1, 1]);
tf2 = tf(k, [tau2, 1]);
tf3 = tf(k, [tau3, 1]);

figure
hold on

opt = stepDataOptions;
opt.StepAmplitude = 4;
plot(t, y);
s1 = step(tf1, t, opt);
s2 = step(tf2, t, opt);
s3 = step(tf3, t, opt);
