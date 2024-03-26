df = function(x, f, t = 10^-4)
{
  n = length(x)
  g = c()
  for (i in 1 : n)
  {
    e.i = rep(0, n)
    e.i[i] = 1
    g[i] = (f(x + t * e.i) - f(x - t * e.i)) / (2 * t)
  }
  return(g)
}

f = function(x)
{
  x[1]^2*x[2] + 2 * x[2]^5
}

x = c(2,3)
result = df(x, f)
print(result)


