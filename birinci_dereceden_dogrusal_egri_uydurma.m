x=[1 3 5 7 10 12 13 16 18 20];
y=[4 5 6 5 8 7 6 9 12 11];

X=[sum(x) length(x); sum(x.^2) sum(x)];
Y=[sum(y); sum(x.*y)];

a=inv(X)*Y; % katsayılar matrisi
