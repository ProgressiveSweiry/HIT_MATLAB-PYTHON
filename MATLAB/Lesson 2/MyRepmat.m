function [mat, vec] = MyRepmat(ID)
    tmpVec = str2num(ID);
    if (tmpVec(end) == 0 || tmpVec(end) == 1)
        tmpVec(end) = 6;
    end
    mat = repmat(tmpVec, tmpVec(end), 1);
    vec = mat(end, :);
end
    
