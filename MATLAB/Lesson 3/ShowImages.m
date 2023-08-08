function [] = ShowImages(arr)
    s = size(arr);
    arr_size = s(2);
    if arr_size == 1
        imshow(arr{1});
    else 
        for i = 1:arr_size
            subplot(1,arr_size,i);
            imshow(arr{i});
        end
    end
end
