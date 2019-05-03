%Gauss Seidel Y�ntemi
% 5x-2y+3z=-1
% -3x+9y+z=2
% 2x-y-7z=3
clear; clc;
format('long','g');
i=1;
x(i)=0; y(i)=0; z(i)=0;
hatax(i)=999;
hatay(i)=999;
hataz(i)=999;
tol=1e-4;

while hatax(i)>tol || hatay(i)>tol || hataz(i)>tol
    x(i+1)=(-1-(-2*y(i)+3*z(i)))/5;
    y(i+1)=(2-(-3*x(i+1)+z(i)))/9;
    z(i+1)=(3-(2*x(i+1)-y(i+1)))/-7;
    
    hatax(i+1)=abs(x(i+1)-x(i));
    hatay(i+1)=abs(y(i+1)-y(i));
    hataz(i+1)=abs(z(i+1)-z(i));
    i=i+1;

    fprintf('%f\t %f\t %f\n',x(i),y(i),z(i));
end