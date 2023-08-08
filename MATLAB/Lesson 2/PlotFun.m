function [] = PlotFun(s, e, t)
    timeVec = linspace(s,e,t);

    % const
    c = 0.1 * 10^(-6);
    R = 10000;
    
    % functions (used anon functions, discussed with Vladi)
    fun1 = @(t) (1/(R*c)) * exp(2*t); 
    y1 = arrayfun(fun1, timeVec);
    fun2 = @(t) ((0.3*R*atan(t))/pi);
    y2 = arrayfun(fun2, timeVec);
    
    % plot
    plot(timeVec, y1, 'red');
    title("exercise 2");
    hold on

    plot(timeVec,y2, 'green');

    legend('exp(2*t)/R*c', '0.3*R*atan(t)/pi');
    hold off
end
    