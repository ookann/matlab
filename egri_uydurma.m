x=[1 3 7 9 10];
y=[5.5 7 12.3 16 17.5];


n=2;  % polinomun derecesi
S=[]; % toplamlar matrisi
Y=[]; % fonksiyonun matrisi


for i=0:n
	for j=0:n
		S=[S sum(x.^(j+i))]; %matsiri oluþturur		
	end
	Y=[Y sum(y.*(x.^i))];  
end

k=n+1;
j=1;

for i=1:k
	Sy(i,:)=S(k*(j-1)+1:k*j)
	j=j+1;
end

a=inv(Sy)*y