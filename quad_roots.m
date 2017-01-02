function [r1,r2] = quad_roots(a2, a1, a0)
% quad_roots(a2,a1,a0) 
% returns the two roots of the polynomial a2*x^2 + a1*x + a0.

t1 = -a1/2./a2;
t2 = sqrt(a1.^2 - 4*a2.*a0)/2./a2;
r1 = t1 + t2;
r2 = t1 - t2;
