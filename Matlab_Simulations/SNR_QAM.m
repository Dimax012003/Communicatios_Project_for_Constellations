p = [0,0.2,0.5];
SNR = 0:0.001:15;

a = 10.^(SNR/10);
ps1 = 3*qfunc(0.5*sqrt(3.2*a*(1-p(1))))-2.25*qfunc(0.5*sqrt(3.2*a*(1-p(1)))).^(2);
ps2 = 3*qfunc(0.5*sqrt(3.2*a*(1-p(2))))-2.25*qfunc(0.5*sqrt(3.2*a*(1-p(2)))).^(2);
ps3 = 3*qfunc(0.5*sqrt(3.2*a*(1-p(3))))-2.25*qfunc(0.5*sqrt(3.2*a*(1-p(3)))).^(2);

figure (6);
semilogy(SNR,ps1,SNR,ps2,SNR,ps3);

xlabel('SNR Εb/No');
ylabel('SEP');
legend('ε(χ)=0','ε(χ)=0.2','ε(χ)=0.5')
grid on;