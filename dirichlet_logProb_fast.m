function p = dirichlet_logProb_fast(a, meanlog)

p = gammaln(sum(a)) - sum(gammaln(a)) + sum((a-1).*meanlog);
K = length(a);
flops(flops + (K+1)*flops_digamma + 3*K);
