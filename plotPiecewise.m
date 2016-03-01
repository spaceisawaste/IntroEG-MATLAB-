%Conor Nailos
%2.2.16
%Plots a piecewise function
clear;clc;clf
%% Paramters
xmin=-2;
xmax=2;
nX=100;
x=linspace(xmin,xmax,nX);

%% Calculation
for(i=1:nX)
    if(x(i)>=-3/2&&x(i)<=-1)
    y(i)=2*x(i)+3;
    elseif(x(i)>-1&&x(i)<1)
    y(i)=-sin((pi*x(i))/2);
    elseif(x(i)>=1&&x(i)<=3/2)
    y(i)=2*x(i)-3;   
    else
    y(i)=0; 
    end      
end
       
%% Plot
 for c=1:nX %idk why, but if you dont halve nT it goes around twice
     plot(x(1:c),y(1:c),'b')
     axis (1.2*[xmin xmax xmin xmax]);
     axis square
 end

