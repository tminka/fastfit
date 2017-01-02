% test if dirichlet_fit is invariant to aggregation

a = [2 2 1];
a1 = [3 2 1];
a2 = [2 3 1];
n = 10000;
data1 = dirichlet_sample(a1,n*length(a1));
data2 = dirichlet_sample(a2,n*length(a2));
data = [data1; data2];
a = dirichlet_fit(data)
m1=a1/sum(a1);
m2=a2/sum(a2);
mean(data)
(m1+m2)/2
a/sum(a)

mean(log(data))
digamma(a) - digamma(sum(a))

proj = [1 0; 1 0; 0 1];
aproj = dirichlet_fit(data*proj)
a*proj

% the answer is no, dirichlet_fit is not invariant to aggregation
% because 'aproj' is not the same as marginalizing 'a'
% matching the mean is invariant to aggregation
