% ballistic2D
%     model ballistic motion with (vector) drag force is:
%
%     Fdrag= -(1/2) rho Cd A |v|^2 vhat 
%                  where  vhat is unit vector in v direction
%
%               Author: CSL
%    Suggestion:
%                set hold on
%                  run with Cd=0 and Cd=0.5 to show drag effect
%                set hold ff
clear; clf; clc

%% set parameters

% baseball R=36 mm, M=150g, v=44 m/s, Cd=0.5

Cd = 0.5;
R=.036; % m
m=.144; % kg
rho=1.225; %kg/m^3
g=9.81; %m/s^2

% net drag coefficient  |Fd|= alpha v^2
alpha = 0.5 * rho * Cd * (pi*R^2)

% initial velocity, angle, and position
v0=-50; %m/s
y0=500;
vy0=v0;

%% initialize arrays
y(1)=y0;
t(1)=0;
vy(1)=vy0;

deltat=0.01;

%% time march with Verlet algorithm
it=1;
finished = false;
while ~finished
    t(it+1) = t(it) + deltat;
    vmag = vy(it);
    vhat = vy(it)/vmag;
    Fdrag = -alpha*(vmag^2)*vhat;
    
    vhalfy=vy(it) + (-g + Fdrag/m) * (deltat/2);
    
    y(it+1)=y(it) + vhalfy*deltat;

    vmag = vhalfy;
    vhat = vhalfy/vmag;
    Fdrag = -alpha*(vmag^2)*vhat;
    
    vy(it+1)=vhalfy + (-g + Fdrag/m) * (deltat/2);
    
    if y(it+1) <= 0
        Nt = it+1;
        finished = true;
    end
    it = it+1;
end

%% plot results


plot(t,y)
xlabel('Time(t)');
ylabel('y(m)');

%figure(2)
%plot(t(1:Nt),y(1:Nt))
%xlabel('t(s)');
%ylabel('y(m)');



