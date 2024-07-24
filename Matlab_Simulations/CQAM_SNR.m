p = [0,0.2,0.5];
v = [4,2,1,1];
ps1=0;
ps2=0;
ps3=0;
t=[0.5,1.866,2.91,5.6];
SNR=0:0.001:15;
a = 10.^(SNR/10);
for i=1:4
    ps1 = ps1+0.25*v(i)*qfunc(sqrt(t(i)*a*4*0.36*(1-p(1))));
end
for i=1:4
    ps2 = ps2+0.25*v(i)*qfunc(sqrt(t(i)*a*4*0.36*(1-p(2))));
end
for i=1:4
    ps3 = ps3+0.25*v(i)*qfunc(sqrt(t(i)*a*4*0.36*(1-p(3))));
end
figure (2);
semilogy(SNR,ps1,SNR,ps2,SNR,ps3);

xlabel('SNR Εb/No');
ylabel('SEP');
legend('ε(χ)=0','ε(χ)=0.2','ε(χ)=0.5')
grid on;