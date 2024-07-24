SNR=0:0.001:25;

M=16;
g=0.1266;
k=0.316;
r=[0,0.2,0.5];


pg1=2*(1-(1/sqrt(M)))*qfunc(2*k*sqrt(g*10.^(SNR/10)*(1-r(1))))-(1-(2/sqrt(M)+(1/M)))*qfunc(2*k*sqrt(g*10.^(SNR/10)*(1-r(1))));
pm1=qfunc(0.7071*sqrt(10.^(SNR/10))*(sqrt(1-r(1))*(sqrt(14.1)-sqrt(1.41*0.23))));

pg2=2*(1-(1/sqrt(M)))*qfunc(2*k*sqrt(g*10.^(SNR/10)*(1-r(2))))-(1-(2/sqrt(M)+(1/M)))*qfunc(2*k*sqrt(g*10.^(SNR/10)*(1-r(2))));
pm2=qfunc(0.7071*sqrt(10.^(SNR/10))*(sqrt(1-r(2))*(sqrt(14.1)-sqrt(1.41*0.23))));

pg3=2*(1-(1/sqrt(M)))*qfunc(2*k*sqrt(g*10.^(SNR/10)*(1-r(3))))-(1-(2/sqrt(M)+(1/M)))*qfunc(2*k*sqrt(g*10.^(SNR/10)*(1-r(3))));
pm3=qfunc(0.7071*sqrt(10.^(SNR/10))*(sqrt(1-r(3))*(sqrt(14.1)-sqrt(1.41*0.23))));


p1=(15/16)*pg1+(1/16)*pm1;
p2=(15/16)*pg2+(1/16)*pm2;
p3=(15/16)*pg3+(1/16)*pm3;

figure (6);
semilogy(SNR,p1,SNR,p2,SNR,p3);

xlabel('SNR Εb/No');
ylabel('SEP');
legend('ε(χ)=0','ε(χ)=0.2','ε(χ)=0.5')
grid on;