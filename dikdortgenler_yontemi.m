a=1;
b=8;
n=6;
h=(b-a)/n;
t=0;

for i=0:n-1
    x=a+i*h;  %x de�erlerini bulmak i�in kullan�r�z  
    t=t+h*((x+2)/(x^2+2));
end
t
