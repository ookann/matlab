%4x-cos(x)-e^x
%türev 4+sin(x)-e^x
%hata = 1E-4
%secant yöntemi ile çözün
x1=0;
x2=1;
tol=1E-4;
while (abs(x2-x1)>tol)
    fx1=4*x1-cos(x1)-exp(x1);
    fx2=4*x2-cos(x2)-exp(x2);
    x3=x2-(fx2*(x2-x1))/(fx2-fx1);
    x1=x2;
    x2=x3;
    
    fprintf('%f\t %f\t %f\n',x1,x2,x3);
end