%jacobi
% 5x1-2x2+3x3=-1
% -3x1+9x2+x3=2
% 2x1-x2-7x3=3
% tol=1e-4

% baþlangýç þartlarý x1=x2=x3=0
% x1=(-1-(-2x2+3x3))/5
% x2=(2-(-3x1+x3))/9
% x3=(3-(2x1-x2))/-7

x1_0=1; x1_1=0;
x2_0=1; x2_1=0;
x3_0=1; x3_1=0;
tol=1e-4;
   % en az bir þart bile saðlýyorsa bu yöntemle çözülür
while abs(x1_0-x1_1)>tol || abs(x2_0-x2_1)>tol || abs(x3_0-x3_1)>tol
    
    x1_0=x1_1;
    x2_0=x2_1;
    x3_0=x3_1;
    
    %kök deðerleri = x1_1 x2_1 x3_1 
    x1_1=(-1-(-2*x2_0+3*x3_0))/5;
    x2_1=(2-(-3*x1_0+x3_0))/9;
    x3_1=(3-(2*x1_0-x2_0))/-7;
    
    fprintf('%f\t %f\t %f\t',x1_1,x2_1,x3_1);
end
