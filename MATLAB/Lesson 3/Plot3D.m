function [] = Plot3D(cellArr, str)
    xx = cellArr{1};
    yy = cellArr{3};
    zz = cellArr{5};
    xStr = cellArr(2);
    yStr = cellArr(4);
    zStr = cellArr(6);
    switch str
        case 'surfc'
            surfc(xx,yy,zz);
            xlabel(xStr);
            ylabel(yStr);
            zlabel(zStr);
        case 'surf'
            surf(xx,yy,zz);
            xlabel(xStr);
            ylabel(yStr);
            zlabel(zStr);
        case 'contour'
            contour(xx,yy,zz,'ShowText','on');
            xlabel(xStr);
            ylabel(yStr);
            zlabel(zStr);
        otherwise
            subplot(2,2,1);
            surfc(xx,yy,zz);
            subplot(2,2,2);
            surf(xx,yy,zz);
            subplot(2,2,[3,4]);
            contour(xx,yy,zz,'ShowText','on');
    end
end