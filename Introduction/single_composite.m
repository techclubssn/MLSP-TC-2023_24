clc;
clear all;
close all;

% Generating single tone and composite tone signals

%--------SINGLE TONE------------%
a=5; %amplitude of the signal
f=2; %frequency as 50Hz
t=0:0.001:1; %time period of 10s with stepts of 0.001s 
st=a*sin(2*pi*f*t);
subplot(1,2,1);
plot(t,st);
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('Single tone signal');

%------COMPOSITE SIGNAL----------%
% %lets generate a composite signal comprising 3 signals
% %defining amplitudes
a1=2;
a2=3;
a3=4;
%defining frequencies
f1=3;
f2=10;
f3=100;

fs=1000; %sampling frequency
t=0:1/fs:1; %constant
%generating signals
s1=a1*sin(2*pi*f1*t);
s2=a2*sin(2*pi*f2*t);
s3=a3*sin(2*pi*f3*t);
%generating the composite signal
S=s1+s2+s3;
subplot(1,2,2);
plot(t,S);
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('Composite tone signal');


