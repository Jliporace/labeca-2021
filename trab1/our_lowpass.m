function [y_low] = our_lowpass(t, y)
Fs = 1/(t(2)-t(1));
y_low = lowpass(y, 10, Fs);
end