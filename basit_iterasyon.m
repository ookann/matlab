%-x^3+2x^2-x=0 denklemini basit iterasyon ile ��z�n
%x=g(x)   x=-x^3+2x^2 b�t�n x'ler bulunur.
x1=1;

x2=2;

hata=1E-8;
while (abs(x2-x1)>hata)
    x1=x2;
    x2=-x1^3+2*(x1^2) %ger�ek de�er
    
    
end
