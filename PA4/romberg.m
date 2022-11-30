
function val = romberg (I,n,order,berg)
  if(n<=1)
    val = berg(1,1);
  else
    for i= 1:1:log2(n)
      berg(1,i) = ((2^order)*I(1,i)-I(1,i+1))/(2^order-1);
    end
    val= romberg(I,n/2,order+2,berg);
  end
end
