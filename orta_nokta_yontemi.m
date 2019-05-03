
a=0;

b=1;

n=4;

h=(b-a)/n;

s1=0;

s2=0;



for i=0:n:n
    
	x=a+i*(h+h/2);  %x deðerlerini bulmak için kullanýrýz 
    		s1=s1+(1/(x^2+1));

end


for i=1:n-1
    
	x=a+i*h;
    
	s2=s2+(1/(x^2+1));

end

sonuc=h*(s1/2+s2)

