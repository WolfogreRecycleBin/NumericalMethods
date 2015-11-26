function [y] = Q(x)
y = vpa((x-3)*x, 4);
y = vpa((y + 3)*x - 1, 4);
end

