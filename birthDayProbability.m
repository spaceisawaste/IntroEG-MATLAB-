function Pbirthday=birthDayProbability(Npeople,Nsamples)
bdays=randi(365,Nsamples,Npeople);
nMatch=0;

for i=1:Nsamples;
    if vectorHasMatch(bdays(i,:));
        nMatch=nMatch+1;
    end
end
Pbirthday=nMatch/Nsamples;