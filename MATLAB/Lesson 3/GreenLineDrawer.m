function [vec] = GreenLineDrawer(img, width)
    if ndims(img) < 3 %ndims - check number of dimensions of a tensor
        vec = [];
    else
        if width <= 0 
            width = 2;
        end
        
        if mod(width,2)
            width = width + 1;
        end

        s = size(img);
        if width > s(1)
            width = round(s(1)/2);
        end

        center = s(1) / 2;
        startingOffset = center - width/2;
        endingOffset = center + width/2;

        for i = startingOffset:endingOffset
            img(i,:,1) = 0;
            img(i,:,2) = 255;
            img(i,:,3) = 0;
        end

        vec = img;
    end