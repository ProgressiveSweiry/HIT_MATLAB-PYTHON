function [] = PlotSignal(signalsCell, n)
timeCol = 2*(n-1) + 1;
funcCol = timeCol+1; 
time = cell2mat(signalsCell(2:end, timeCol));
func = cell2mat(signalsCell(2:end, funcCol));
funcSize = size(func);
avg = repelem(mean(func), funcSize(1));
plot(time,func,"black", time, avg, 'red--');
legend("signal", "DC line");
title(signalsCell{1,funcCol});
end
