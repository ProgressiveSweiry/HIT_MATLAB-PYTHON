function [] = img2xl (file_name, img_mat)

dims = ndims(img_mat);

if(not(isstring(file_name)))
    disp("File Name Error (NOT STRING) (first argument)")
elseif(not(isa(img_mat,'uint8')))
    disp("Image matrix not of class uint8 (second argument)")
elseif not((dims == 2) || (dims == 3))
    disp("Second argument isn't matrix/tensor")
else
    
    if(isfile(file_name))
        tmpName = convertStringsToChars(file_name);
        file_name = append( tmpName(1:(end-5)), 'New', '.xlsx');
    end

    if(dims == 2)
        writematrix(img_mat, file_name, 'Sheet', 'Grey');
    else
        writematrix(img_mat(:,:,1), file_name, 'Sheet', 'RedColor');
        writematrix(img_mat(:,:,2), file_name, 'Sheet', 'GreenColor');
        writematrix(img_mat(:,:,3), file_name, 'Sheet', 'BlueColor');
    end

    disp(["Image Saved To File: ", file_name])
end
end







