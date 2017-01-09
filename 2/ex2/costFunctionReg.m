function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
t = size(theta);
% You need to return the following variables correctly 
J = 0;
grad = zeros(t);
ptheta = theta;
ptheta(1) = 0;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

J = (1/m)*((-y'*log(sigmoid(X*theta))) - ((ones(m,1)-y)'* log(ones(m,1)- sigmoid(X*theta)))) + (lambda/(2*m))*sum(ptheta.^2);


grad = (1/m) * (X'*(sigmoid(X*theta)- y)) + (lambda/m)* ptheta;


% =============================================================

end
