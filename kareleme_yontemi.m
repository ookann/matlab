x=[1 3 5 7 10 12 13 16 18 20];
y=[4 5 6 5 8 7 6 9 12 11];

n=6;

xy=x.*y;
x2=x.^2;

xtop=sum(x);
ytop=sum(y);

xytop=sum(xy);
x2top=sum(x2);

d=[n xtop; xtop x2top];
f=[ytop; xytop ];

a=f/d;


disp(['y=',num2str(a(2)),'x+',num2str(a(1))]);