function answer=countemF(n0, N)
%Conor Nailos
%2/16/16
%Counts up from n0 to N in a for loop. Displays the results as a string,
%separated by commas and spaces.
answer=num2str(n0); 
for x=n0+1:N
   answer=[answer,', ',num2str(x)];
end
