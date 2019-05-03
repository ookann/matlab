
% gauss jordan eliminasyon yöntemi ile çözün
A=[2 -1 3;1 4 -3; -6 -2 9];  %x+y-z=9    y+3z=3    -x-2z=2   gauss eliminasyon yöntemi ile çözün
B=[4;-1;7];
[N N]=size(A);
x=zeros(N,1);
A=genis(1:N,1:N);
B=genis(1:N,N+1);
x(N)=B(N)/A(N,N);
for k=N-1:-1
    x(k)=(B(k)-A(k,k+1:N)*x(k+1:N))/A(k,k);    
end
x