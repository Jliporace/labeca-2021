kp = 1.216;
ki = 57.688;
tf_pi = tf([kp ki], [1 0])
tf_fb = feedback(tf_pi * tf1, 1)
figure;
step(tf_fb);
figure;
rlocus(tf_pi * tf1);
