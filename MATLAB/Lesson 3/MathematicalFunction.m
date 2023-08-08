function [cellArr] = MathematicalFunction()
    x = linspace(-15,15,100);
    y = x ;
    [xx,yy] = meshgrid(x,y);
    zz = sin((xx.^2 + yy.^2).^0.5) ./ (xx.^2 + yy.^2).^0.5;
    xStr = "x - axis";
    yStr = "y - axis";
    zStr = "z - axis";
    
    cellArr = {xx, xStr, yy, yStr, zz, zStr};
end

