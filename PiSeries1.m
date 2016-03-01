%Conor Nailos
%1/27/16
%Approximates Pi using some formula a guy came up with. Because this
%isn't how Matlab is already approximating Pi or anything
clear;clc
%% Parameters
N=1*10^7;
approxSum=0;
for(k=1:N)
    approxSum=approxSum+(1/k^2);
end
disp(['Here is the approximation for N=',num2str(N)]);
disp(num2str(approxSum, 9));