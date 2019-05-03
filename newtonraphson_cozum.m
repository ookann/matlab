%4x^2+10x
%türev 8x+10
%x0=1 hata=1E-5


x0=1;
tol=1E-5;
x1=0;
hata=999;
while (hata>tol)
    fx0=4*x0^2+10*x0;
    ftx0=8*x0+10;
    x1=x0-fx0/ftx0;
    hata=abs(x1-x0); %hata=abs((x1-x0)/x1);
    x0=x1
end