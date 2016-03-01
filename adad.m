%Conor Nailos
%1/28/16
%
clear;clc
%% Paramters
numRows=5;
numCols=4;
myArray=randi(50,numRows,numCols);
nPrime=0;

%% Print the loop
for iCol=1:numCols
    for(iRow=1:numRows)
      
        if(isprime(myArray(iRow,iCol)))
            disp(num2str(myArray(iRow,iCol)));
            nPrime=nPrime+1
            primeVector(nPrime)=myArray(iRow,iCol);
        end
    end
end
disp('The prime numbers in my array are: ');
disp(primeVector);