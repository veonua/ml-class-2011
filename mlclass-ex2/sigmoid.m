function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = arrayfun (@(zz) 1/(1+e^-zz),z);

% =============================================================

end
