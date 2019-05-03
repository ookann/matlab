% x^3-6x^2+13.5x-9 denklemini orta nokta yöntemi ile çözün (ikiye bölme
% yöntemi

a=0.5; %sýnýr (sýnavda verilir)
b=1.5; %sýnýr (sýnavda verilir)
tol=0.001; %tolerans (hata) (sýnavda verilir)
iter=0; %sayac (kaç adýmda bitecek
while(abs((a-b)/a)>tol)
    fa=(a^3)-6*(a^2)+13.5*a-9;
    fb=(b^3)-6*(b^2)+13.5*b-9;
    x0=(a+b)/2;
    fx0=(x0^3)-6*(x0^2)+13.5*x0-9;
    if(fa*fx0<0)
        b=x0;
    else
        a=x0;
    end
    iter=iter+1;
    fprintf('%d\t %f\t %f\t% %f\t %f\n',iter,a,b,x0,abs((a-b)/a));
end
