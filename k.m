%Conor
%22/2/16
clear;clc
%%

dadValue = 1;
for ix = 2:3:10
    for iy = 1:3
        myArray(iy, ix) = dadValue;
        dadValue = dadValue + 2;
    end
end