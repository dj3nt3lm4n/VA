
def suma(x,y)

res = x+y.to_i
return res

end

def resta(x,y)

  res = x-y.to_i
  return res

end

def multi(x,y)

  res = x*y.to_i
  return res

end

def divi(x,y)

  res = x/y.to_i
  return res
  
end

sum = suma(10,20)
rest = resta(10,20)
mul = multi(10,20)
divi = divi(10,20)

puts sum,rest,mul,divi
