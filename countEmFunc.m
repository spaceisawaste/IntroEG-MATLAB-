function answer=countemF(n0, N)

answer=num2str(n0); 
for(x=n0+1:N)
   answer=[answer,', ',num2str(x)];
end
disp(answer);