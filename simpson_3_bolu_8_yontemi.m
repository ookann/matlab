f=@(x)(x^3+2*x-3)/(x-1);
a=2;
b=12;
n=8;
h=(b-a)/n;
s1=f(a);

for i=1:3
    x(i)=a+i*h;
    if(i==1) | (i==2)
        s1=s1+3*(f(x(i)));  
    end
    s1=s1+f(x(i));
    
end
s2=0;
for i=3:6
    x(i)=a+i*h;
    if(i==4) | (i==5)
        s2=s2+3*(f(x(i)));
    end
    s2=s2+f(x(i));
end
sonuc=(3*h/8)*s1+(3*h/8)*s2
