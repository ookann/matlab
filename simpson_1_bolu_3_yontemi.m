f=@(x)(x^3+2*x-3)/(x-1);
a=2;
b=12;
n=8;
h=(b-a)/n;
s1=f(a);

for i=1:2:n-1
    x(i)=a+i*h;
    s1=s1+4*f(x(i));
end

for i=2:2:n-2
    x(i)=a+i*h;
    s1=s1+2*f(x(i));
end

s1=s1+f(b);
sonuc=h*s1/3
