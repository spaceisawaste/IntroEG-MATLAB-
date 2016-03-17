%Conor Nailos
%3/3/16
%Section 4
%Programming Challenge Version B
clear;clc;clf
%% Challenge 1
%see myfunc.m

%% Challenge 2 Calling the Function
myVal=1.1;
y1=myfunc(myVal);
disp(['For x = ',num2str(myVal),', myfunc yields the result: ',num2str(y1)]);

if y1>0
    disp('The value of y1 is positive');
elseif y1<0
    disp('The value of y1 is negative');
elseif y1==0
    disp('The value of y1 is 0.');
end

%% Challenge 3 Plotting
Nx=input('How many points would you like to plot? ');
myX=linspace(1,5,Nx);

%Generate y values
for i=1:Nx
    y(i)=myfunc(myX(i));
end
plot(myX,y,'blue');
xlabel('x');
ylabel('y');
title('myfunc.m Function');

%% Challenge 4 Animation
figure;
for i=1:Nx
    plot(myX(1:i),y(1:i),'blue',...
        myX(i),y(i),'o red');
    axis([1,5,-1,1]);
    xlabel('x');
    ylabel('y');
    title('myfunc.m Animation');
    drawnow
end

%% Challenge 5 Arrays and vectors
A=randi(25,6,7);
row=6;
col=7;
tot=0;
for(irow=1:row)
    for icol=1:col
        tot=A(irow,icol)+tot;
    end
end
avgA=tot./(row*col);
disp(['The average of A is ',num2str(avgA)]);
%% Challenge 6 WHILE loops and logic
N=input('Please enter a number greater than 150 and less than 1500: ');

while N<=150||N>=1500
    disp('Try again, that number is either too big or too small');
    N=input('Please enter a number greater than 150 and less than 1500: ');
end
IRand=randi(100,1,N);
irow=1;
icol=N;
imax=45;
icount=0;

for rowCt=1:irow
    for colCt=1:icol
        if IRand(rowCt,colCt)<imax
            icount=icount+1;
        end
    end
end
%Fun fact, the value will approach 45%
percent=(icount./(irow*icol))*100;
disp(['The percentage of numbers in IRand below ',num2str(imax),' is ',num2str(percent),'%']);