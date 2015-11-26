function [y] = R(x)
y = vpa((x-1)*(x-1),4);
y = vpa(y*(x-1),4);
end

