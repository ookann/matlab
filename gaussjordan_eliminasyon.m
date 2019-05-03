
% gauss jordan eliminasyon y�ntemi ile ��z�n
A=[2 -1 3;1 4 -3; -6 -2 9];  %x+y-z=9    y+3z=3    -x-2z=2   gauss eliminasyon y�ntemi ile ��z�n
B=[4;-1;7];
[N N]=size(A);
x=zeros(N,1);
C=zeros(1,N+1);%a ile b birle�ece�i i�in N+1 olur. (s�tun + 1) 3x4 (3 sat�r 4 s�tun)
genis=[A B];
for p=1:N-1
    [Y,J]=max(abs(genis(p:N,p)));     %matrisin en b�y�k eleman� %arada virg�l varsa bir de�er al�r  
    C=genis(p,:);
    genis(p,:)=genis(J+p-1,:);
    genis(J+p-1,:)=C;
    if genis(p,p)==0
        break
    end
    for k=p+1:N
        m=genis(k,p)/genis(p,p);
        genis(k,p:N+1)=genis(k,p:N+1)-m*genis(p,p:N+1);       
    end
end
    A=genis(1:N,1:N);
    B=genis(1:N,N+1);
    x(N)=B(N)/A(N,N);
    for k=N-1:-1:1
        x(k)=(B(k)-A(k,k+1:N)*x(k+1:N))/A(k,k);    
    end
    x