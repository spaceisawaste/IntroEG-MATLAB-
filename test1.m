%Conor Nailos
%2/16/16
%Finds age from 2009 to 2050 and displays results. Uses the yfmby function
clear;clc
%% Parameters
start=2009;
endYear=2050;
iCt=1;
iCt2=1;
%% Make list of ages
for i=start:endYear
    age(iCt)=yfmby(i);
    iCt=iCt+1;
end

%% Output
for j=start:endYear
    disp(['In ',num2str(j), ' I will turn ',num2str(age(iCt2))]);
    iCt2=iCt2+1;
end