clear
clc
%%
x=linspace(0,10, 150);
y1=2*x;
y2=x.^2;
y3=sin(x);
%%
plot(x,y1, '--',...
    x,y2,':',...
    x,y3,'-');