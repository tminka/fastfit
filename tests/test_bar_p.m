% example of using the 3rd argument to dirichlet_fit_newton

a = [0.1 0.2 0.3 0.4]*7;
%a(2) = 0;
bar_p = digamma(a) - digamma(sum(a))
a = [1 1 1 1];
dirichlet_fit_newton([],a,bar_p)
