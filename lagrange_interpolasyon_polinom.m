x=[1 4 6];
y=[0 1.38 1.79];

xb=2;

[m n]=size(x);//3x3 matris

p=0;

//�arp�mlar�n toplam�

for k=1:n
	deger=1;
	for j=1:n
		if(j~=k) //e�it de�il
			deger=deger*((xb-x(j))/(x(k)-x(j)));
		end
	end
	p=p+y(k)*deger;
end

p
