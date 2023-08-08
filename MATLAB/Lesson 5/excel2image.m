function [img_mat] = excel2image(file_name)

tmpSheets = size(sheetnames(file_name));

if(tmpSheets(1) == 1)
    disp("Image Is Greyscale")
    img_mat = uint8(readmatrix(file_name));
elseif(tmpSheets(1) == 3)
    disp("Image Is RGB")
    matRed = uint8(readmatrix(file_name,'Sheet','RedColor'));
    matGreen = uint8(readmatrix(file_name,'Sheet','GreenColor'));
    matBlue = uint8(readmatrix(file_name,'Sheet','BlueColor'));
    img_mat = cat(3, matRed, matGreen, matBlue);
else
    disp("Number Of Sheets ERROR")
end
end