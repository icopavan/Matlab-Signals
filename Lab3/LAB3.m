%%
%Q1a
clear;
summation=0;
t=-4:0.001:4;
T=4;
%since a0 is 2/pi 
for n=1:2:30
    summation=summation + 8/(pi*n)^2*cos(n*2*pi*t/T);
end

 series=summation;
plot(t,series);
grid;
xlabel('time');
ylabel('amplitude');

%%
%Q1b
clear;
D_n=0;
m=0;
for n=-10:1:10
    m=m+1;
    if n==0;
        Dn=0;
    elseif n~=0
        Dn=2./(n*pi).^2.*(1-(-1).^n);
    end
    D_n(m)=Dn;
end
mag_Dn=D_n;
subplot(2,1,1);
n=-10:1:10;
stem(n,mag_Dn,'ro');
grid;
xlabel('n');
ylabel('|Dn|');
axis([-10 10 0 0.5]);
phase_Dn=angle(D_n)*180/pi;
subplot(2,1,2);
stem(n,phase_Dn,'ro')
grid;
xlabel('n');
ylabel('phase of Dn');
axis([-10 10 -180 180]);
%%
%1C
clear;
t=-4:0.001:4;
T=4;
sum_in=0;
sum=0;
for n=-25:2:25
    Dn=4/(pi*n)^2;
    xn=Dn.*exp(i*n*2*pi*1/T*t);
    yn=Dn.*exp(i*n*2*pi*1/T*t)*10/(30.5+1*n*2*pi*1/T);
    sum_in=sum_in +xn;
    sum=sum+yn;
end
series_in=sum_in;
series_out=sum;
subplot(1,1,1);
plot(t,series_in,t,series_out);
grid;
xlabel('time');
ylabel('amplitude');
legend('x(y)','y(t)');
%%
%Q2a
clear;
t=-4:0.001:4;
T=2;
sum_sq=0;
an=0;
for n=-25:2;25
    if n>0
        an=-i*4/pi/n/2*exp(i*n*2*pi*1/T*t);
    elseif n<0
        an=i*4/pi/(-n)/2*exp(i*n*2*pi*1/T*t);
    end 
    sum_sq=sum_sq+an;
end
series_sq=sum_sq;
plot(t,series_sq);
grid;
xlabel('time');
ylabel('x(t)');
%%
%Q2b
clear;
t=-4:0.001:4;
T=2;
sum_sq=0;
sum_sq_y=0;
for n=-25:2:25
    if n>0
        an =-i*4/pi/n/2*exp(i*n*2*pi*1/T*t);
        yn=-i*4/pi/n/2*exp(i*n*2*pi*1/T*t)*8/(20+i*n*2*pi*1/T);
    elseif n<0
        an =i*4/pi/n/2*exp(i*n*2*pi*1/T*t);
        yn=i*4/pi/n/2*exp(i*n*2*pi*1/T*t)*8/(20+i*n*2*pi*1/T);
    end
    sum_sq=sum_sq+an;
    sum_sq_y=sum_sq_y+yn;
end
plot(t,sum_sq,t,sum_sq_y);
grid;
xlabel('time');
ylabel('amplitude');
legend('x(t)','y(t)');
%%
%Q2c
clear;
t=-4:0.001:4;
T=2;
sum_sq=0;
sum_sq_y=0;
for n=-25:2:25
    if n>0
        an =-i*4/pi/n/2*exp(i*n*2*pi*1/T*t);
        yn=-i*4/pi/n/2*exp(i*n*2*pi*1/T*t)*8/(20+i*n*2*pi*1/T);
    elseif n<0
        an =i*4/pi/n/2*exp(i*n*2*pi*1/T*t);
        yn=i*4/pi/n/2*exp(i*n*2*pi*1/T*t)*8/(20+i*n*2*pi*1/T);
    end
    sum_sq=sum_sq+an;
    sum_sq_y=sum_sq_y+yn;
end
plot(t,sum_sq,t,sum_sq_y);
grid;
xlabel('time');
ylabel('amplitude');
legend('x(t)','y(t)');
%%
%%Q3a
clear;
sys=tf(8,[1 20]);
sys2=tf(8,[1 20]);
bode(sys,sys2)
grid;
legend('original impulse respnse','new impulse response');
%%
%Q3c
clear;
t=-4:0.001:4;
T=2;
sum_sq=0;
sum_sq_y=0;
for n= -25:2:25
    if n>0
        an =-i*4/pi/n/2*exp(i*n*2*pi*1/T*t);
        yn=-i*4/pi/n/2*exp(i*n*2*pi*1/T*t)*8/(20+i*n*2*pi*1/T);
    elseif n<0
        an =i*4/pi/n/2*exp(i*n*2*pi*1/T*t);
        yn=i*4/pi/n/2*exp(i*n*2*pi*1/T*t)*8/(20+i*n*2*pi*1/T);
    end
    sum_sq=sum_sq+an;
    sum_sq_y=sum_sq_y+yn;
end
plot(t,sum_sq,t,sum_sq_y);
grid;
xlabel('time');
ylabel('amplitude');
legend('x(t)','y(t)');
%%
%Q4
clear;
Rl=10;
C1=100e-6;
sys1=tf([C1*Rl 0],[C1*Rl 1])
bode(sys1)
grid;
%%
%Q5a
L=1e-3;
C=10e-6;
R=2;
sys2=tf(1,[L*C L/R 1]);
bode(sys2)
grid;
%%
%Q5b
clear;
L=1e-3;
C=10e-6;
R=200;
sys2=tf(1,[L*C L/R 1]);
bode(sys2)
grid;
%%As resistance increases the resonant frequency of the system changes, the
%%parallel capacitor contributes more into the system. from resonant
%%frequecny formula f=1/2Pisqrt(RC) with only small resistance values


        
   
        

