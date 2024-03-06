clc;
clear all;
close all;

%signal
f=50;
fs=1000;
t=0:1/fs:1/f;
y=sin(2*pi*f*t);
N=length(y);
subplot(3,1,1)
stem(t,y,'k');
title('Sampled input signal')

%dtft
w=-pi:0.01:pi;
m=0:50;
for i=1:length(w)
    X(i)=0;
    for k=1:N
          X(i)=X(i)+y(k).*exp(-j.*w(i).*m(k));
     end
end
subplot(3,1,2)
plot(w,X,'k');
title('DTFT');
xlabel('w');
ylabel('X(w)');

%dft(fft)
Y=zeros(1,N);
for n=1:N
    for k=1:N
        Y(k)=Y(k)+y(n)*exp((-1i*2*pi*(k-1)*(n-1))/N);
    end
end
subplot(3,1,3)
stem(abs(Y),'k');
title('DFT');
xlabel('k');
ylabel('X(k)')