%Conor Nailos
%3/17/16
%Josephus Problem part A and B. Gives survival index given a pool of people n and kill
%frequency m

function [j,Results]= JosephusProblem(n,m)
A =1:n;
Carnage=ones(n,n);
A=A'; %I have no idea why but the function wont work without this line
for k = 1:n-1
    %This emulates a circular linked list that you might find in similar
    %java/C programs solving this problem. Essentially we are shifting the matrix by what ever the kill rate is
    %and killing the person at the back of the line after this rotation.
    A = circshift(A,[length(A)-mod(m+1,length(A)) + 1,0]);
    temp=A(end); %store value of index of most recently killed person
    Carnage(k:n,temp)=0; %change his 1 to a 0 in results
    A = A(1:(end-1));
    j=A;
end
Results=Carnage;
    