df <- function(x, f, del = 10^-4)
{
  out = (f(x + del) - f(x - del)) / (2*del)
  return(out)
}

f <- function(x)
{
  x^2
}

x <- 4
result = df(x, f)
print(result)