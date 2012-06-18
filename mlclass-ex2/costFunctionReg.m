function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

mytheta = theta;
mytheta(1) = 0;

% Initialize some useful values
m = length(y); % number of training examples

al = lambda/(2*m)*sum(mytheta.^2);

% You need to return the following variables correctly 
h = sigmoid(X*theta);
p1= y'*log(h);
p2= (1-y)'*log(arrayfun (@(zz) 1-zz,h));

% You need to return the following variables correctly 
J = (p1+p2)/-m+al;

grad = (X'*(h-y)+lambda*mytheta)/m;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
