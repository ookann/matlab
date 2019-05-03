x=[1;3;4;9];

y=[5.5;7;12.3;16];

xb=3.5;
bul=find(xb<x,1);

x1=x(bul);
x0=x(bul-1);

y1=y(bul);
y0=y(bul-1);


m=(y1-y0)/(x1-x0);
y=y0+m*(xb-x0);


y=b0+b1(x-x0)+b2(x-x0)(x-x1)


