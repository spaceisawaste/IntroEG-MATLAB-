%Conor Nailos
%2/16/16
%makes a list of classes containing title course # and maximum# of vs
%enrolled seats. Checks for classes with at least 5 open seats and displays
%their names. Uses funtion makeNewClass
clear;clc
%% Parameters
openNeeded=5;
%% Make class list
classList(1)=makeNewClass('Introduction to Engineering',10111,[45,32]);
classList(2)=makeNewClass('Computers in Psychology',20000,[28,25]);
classList(3)=makeNewClass('Writing and Rhetoric',12100,[14,14]);
classList(4)=makeNewClass('Beginning Spanish',10101,[19,13]);
classList(5)=makeNewClass('Introduction to Africana Studies',20082,[36,32]);

%% Check for space in class
disp(['We want classes with at least ',num2str(openNeeded),' seats']);
for i=1:length(classList)
    if classList(i).seats(1)-classList(i).seats(2)>=openNeeded
        disp([classList(i).title,' has enough open seats']);
    end
end