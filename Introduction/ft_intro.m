clc;
clear all;
close all;
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
y=fft(S);
f = (0:length(y)-1)*fs/length(y);
plot(f,abs(y));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Fourier Transform');

%!!checkout the fourier transform graph and find the reason for duplication
%of plot