%%Lab 2

%Question 1a

%%

t=0:0.0000001:0.002;


m=3*cos(2*pi*1000*t);

c=10*cos(2*pi*20000*t);

k=0.2;

offset=1;



s=(m.*k+offset).*c;


plot(t,m,t,s)


%%

%Q 1b

t=0:0.0000001:0.002;


m=3*cos(2*pi*1000*t);

c=10*cos(2*pi*20000*t);

k=0.1;

offset=1;



s=(m.*k+offset).*c;


plot(t,m,t,s)

%The ammplitude of s(t) increases as k decreases

%Q 1c

%%

%yes , it is a time invariant system because

%s(t-t0)=(m(t-t0)*k +offset)*c(t-t0))

%%

%Q 1d


t=0:0.0000006:0.0025;

x1=3*cos(2*pi*3000*t);

k1=0.2;

offset=1;

c1=5*cos(2*pi*20000*t);

x2=5*cos(2*pi*2000*t);

k2=0.3;

c2=10*cos(2*pi*20000*t);


s=((x1.*k+offset).*c1)+(x2.*k2+offset).*c2


plot(t,s)

%the output signal is different in that the frequency increased overall

%with two signals added to each other with different frequencies.



%%
%Question 2
tspan=[0:0.1:15];
y0=[1];%current =1 A for zero input response

[t,y]=ode23('myfunc1',tspan,y0);

plot(t,y)
xlabel('time');
ylabel('Zero Input response y(t)');

%%
%Question 2b
tspan=[0:0.1:15];
y0=[1];%current =1 A for zero input response
y1=[0.5 0];
yconv=conv(y0,y1);


[t,y]=ode23('myfunc1',tspan,yconv);

plot(t,y)
xlabel('time');
ylabel('Output response y(t)');
%%
%Question 3 i
tspan=[0:0.1:15];
y0=[0];%current =0 A for zero input response


[t,y]=ode23('myfunc2',tspan,y0);

plot(t,y)
xlabel('time');
ylabel('Zero Unput response y(t)');
%%
%Question 3 ii
tspan=[0:0.1:15];
y0=[0];%current =0 A for zero input response and 5 A flowing through
y1=t*exp(-t);
yconv=conv(y0,y1);


[t,y]=ode23('myfunc2',tspan,yconv);

plot(t,y)
xlabel('time');
ylabel('Output response y(t)');
%%
%Questoin 3 iii
tspan=[0:0.1:15];
y0=[2];%current =2 A 
y1=1.5*cos(pi.*t);
yconv=conv(y0,y1);
[t,y]=ode23('myfunc2',tspan,yconv);

plot(t,y)
xlabel('time');
ylabel('Output response y(t)');
%%
%Question 4 i


tspan=[0:0.1:15];
y0=[0]%
y1=[8]%1st derrivative
[t,y]=ode23('myfunc3',tspan,y1);

plot(t,y)
xlabel('time');
ylabel('Zero input response y(t)');
%%
%Question 4 ii
tspan=[0:0.1:15]
y0=[2]
y1=sin(pi.*tspan)-cos(pi.*tspan);
yconv=conv(y0,y1);
[t,y]=ode23('myfunc3',tspan,yconv);

plot(t,y)
xlabel('time');
ylabel('Output response y(t)');
%%
% Question 5


tspan=[0:0.1:15]
y0=[2]
y1=sin(pi.*tspan)-cos(pi.*tspan);
yconv=conv(y0,y1);
[t,y]=ode23('myfunc4',tspan,yconv);

plot(t,y)
xlabel('time');
ylabel('Output response y(t)');
