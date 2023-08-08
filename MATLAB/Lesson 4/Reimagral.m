function [A] = Reimagral(t,y,a,b)

if(isreal(t) && isreal(y) && isscalar(a) ...
        && isreal(a) && isscalar(b) && isreal(b))

    dis = abs(t-a);
    [m,ia] = min(dis);
    dis = abs(t-b);
    [m,ib] = min(dis);

    dt = gradient(t(ia:ib));
    f = y(ia:ib);

    recVec = dt .* f;
    A = sum(recVec);
else 
    A = [];
end

end



