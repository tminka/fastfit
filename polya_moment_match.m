function a = polya_moment_match(data)
% DATA is a matrix of count vectors (rows)

sdata = row_sum(data);
nzrows = (sdata > 0);
nzcols = (col_sum(data) > 0);
if issparse(data)
  p = sparse(rows(data),cols(data));
  a = sparse(1,cols(p));
else
  p = zeros(size(data));
  a = zeros(1,cols(p));
end
p(nzrows,nzcols) = data(nzrows,nzcols) ./ repmat(sdata(nzrows)+eps,1,sum(nzcols));
a = dirichlet_moment_match(p);
