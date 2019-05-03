%\\\\\\\\\\\\\\\sembolük çözüm yöntemi////////////
%x^5-2x+8 x=2 hata=0.01

f=@(x)  x^5-2*x+8;
ft=@(x) 5*x^4-2;

x0=2;
tol=0.01;
adim=0;

while (abs(f(x0))>tol)
    
    x=x0-f(x0)/ft(x0);  
    x0=x
    adim=adim+1

end