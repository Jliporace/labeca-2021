ti = kp / ki
tf_pi_al = tf([kp * ti kp],[ti 0]);
tf_fb_al = feedback(tf_pi_al * tf1, 1);
step(tf_fb_al)

pole = 26;
b = 0.5