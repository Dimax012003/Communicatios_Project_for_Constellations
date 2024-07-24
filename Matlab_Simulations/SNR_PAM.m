p = [0,0.2,0.5];
SNR = 0:0.001:25;

a = 10.^(SNR/10);
ps1 = 1.875*qfunc(sqrt(0.094*a*(1-p(1))));
ps2 = 1.875*qfunc(sqrt(0.094*a*(1-p(2))));
ps3 = 1.875*qfunc(sqrt(0.094*a*(1-p(3))));

figure (2);
semilogy(SNR,ps1,SNR,ps2,SNR,ps3);

xlabel('SNR Εb/No');
ylabel('SEP');
legend('ε(χ)=0','ε(χ)=0.2','ε(χ)=0.5')
grid on;