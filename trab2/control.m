kp = 1.216; % 3.628176101; % 1.77;
ki = 57.688; % 49.69
tf_pi = tf([1.5 * kp ki], [1 0])
tf_fb = feedback(tf_pi * tf1, 1)
figure;
step(tf_fb);
figure;
rlocus(tf_pi * tf1);
