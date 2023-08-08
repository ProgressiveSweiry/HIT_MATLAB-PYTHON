%% 1
n = 3;
load('signals.mat', 'signals');
PlotSignal(signals, n);

%% 2
format long
t = 0:0.0001:pi;
y = sin(t);
a = 0.5*pi;
b = 0.75*pi;
disp(Reimagral(t,y,a,b))
format default
