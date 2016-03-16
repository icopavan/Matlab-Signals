




%%%%%Question 1a%%%%%

clear

clc

%time interval

t=0:0.1:10;

%frequency value

f=2;

%angular frequency value

w=2*pi*f;

%theta

theta=30;

%function

x1=1+0.1*cos(t)-0.2*sin(w*t+theta);

%plot

plot(t,x1)

grid




%%%%%Question 1b %%%%%


%%

clear

clc

%time interval

t=0:0.01:10;

%frequency value

f=2;

%angular frequency vaqlue

w=2*pi*f;

%theta

theta0=0/180 * pi;

theta1=45/180 * pi;

theta2=90/180 * pi;

theta3=135/180 * pi;

theta4=180/180 * pi;



    hold on

%function

x1=1+0.1*cos(t)-0.2*sin(w*t+theta0);

x2=1+0.1*cos(t)-0.2*sin(w*t+theta1);

x3=1+0.1*cos(t)-0.2*sin(w*t+theta2);

x4=1+0.1*cos(t)-0.2*sin(w*t+theta3);

x5=1+0.1*cos(t)-0.2*sin(w*t+theta4);

%plot

plot(t,x1,t,x2,t,x3,t,x4,t,x5)

grid

legend('x1','x2','x3','x4','x5')

xlabel('time')

ylabel(' x1(t)= 1+ 0.1cos(t) - 0.2sin(?t + ?)')


hold off


% 1C

%period of cos(t) = 1s

%period of sin(wt+theta) where w=4pi

%T=2pi/4pi=1/2s

%iff T1/T2 is rational its periodic

%1/0.5=2 s/s hence it its rational




%%%%%%%%%%Question 2a

%%

t=0.00001:0.1:10;

e=exp(-0.1*pi*t);

x2=exp(-0.1*pi.*t).*sin(4*pi.*t);

plot(t,e,'r--',t,x2)

xlabel('time')

ylabel('e-0.1pitsin(4pit) and e-0.1pit')

legend('x2','e')


%%%%%%%%%%Question 2b

%%

t=0.00001:0.1:10;

y=heaviside(t-2)-heaviside(t-5);

xr=x2.*y;

%%

%%%Question 3a

%impedace = 0.88 -2.076i

%in polar coordinates , r=2.26 angle=66 degree


%%

%%Question 3b

%The current is 8.8cos(3*pi*t +46);



t=0:0.01:10;

v=20*cos(3*pi*t-20);

c=8.8*cos(3*pi*t-46);


plot(t,v,t,c)

legend('c','v')

xlabel('time')

ylabel('voltage and current')
%%
%Question 4
f=@check;
f()
%%
%Question 5
x=-6:1:6;
%x = linspace(-pi, pi, 1e3);
y = -3.*sign(x).*exp(x*pi.*x-0.25*x);

% Plot absolute value and phase
figure;
subplot(2,1,1);
plot(x, abs(y));
title('absolute value');
xlabel('time');
ylabel('abs value');
subplot(2,1,2);
plot(x, angle(y));
title('phase');
xlabel('time');
ylabel('phase');
% Plot real and imaginary parts
figure;
subplot(2,1,1);
plot(x, real(y));
title('real');
xlabel('time');
ylabel('real');
subplot(2,1,2); 
plot(x, imag(y));
title('imaginary');
xlabel('time');
ylabel('imaginary');

%%
%Question 5 b
x=-6:1:6;
y = -3.*sign(x).*exp(x*pi.*x-0.25*x);
z=rectangularPulse(1/4,1/4,x);
%xnew = inline(['(' char(y) ')*(' char(z) ')']);
%new function
%xnew = @(x)y(x)*z(x)
xnew=y.*z


% Plot absolute value and phase
figure;
subplot(2,1,1);
plot(x, abs(xnew));
title('absolute value');
xlabel('time');
ylabel('abs value');
subplot(2,1,2);
plot(x, angle(xnew));
title('phase');
xlabel('time');
ylabel('phase');
% Plot real and imaginary parts
figure;
subplot(2,1,1);
plot(x, real(xnew));
title('real');
xlabel('time');
ylabel('real');
subplot(2,1,2); 
plot(x, imag(xnew));
title('imaginary');
xlabel('time');
ylabel('imaginary');


% Question 6
g=@check;
g()