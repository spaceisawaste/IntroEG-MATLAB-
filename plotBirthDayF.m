    function plotBirthdayF(handles)

Nmax=str2double(handles.NmaxEditText.String);
Npeople=[2:Nmax];
Nsamples=str2double(handles.NsamplesEditText.String);
hwb=waitbar(0,'Calculating...','Name','Building Graph');

for i=1:length(Npeople)
    x(i)=birthDayProbability(Npeople(i),Nsamples);
    waitbar(i/length(Npeople), hwb);
end
bar(handles.bdayAxes,x);
title(handles.bdayAxes,'Same birthday probability');
ylabel(handles.bdayAxes,'Probability');
xlabel(handles.bdayAxes,'N people');
close(hwb);