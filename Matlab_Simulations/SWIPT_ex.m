SNR=[2,5,10];

M=16;
g=0.1266;
k=0.316;
r=0:0.001:1;


pg1=2*(1-(1/sqrt(M)))*qfunc(2*k*sqrt(g*10.^(SNR(1)/10)*(1-r)))-(1-(2/sqrt(M)+(1/M)))*qfunc(2*k*sqrt(g*10.^(SNR(1)/10)*(1-r)));
pm1=qfunc(0.7071*sqrt(10.^(SNR(1)/10))*(sqrt(1-r)*(sqrt(14.1)-sqrt(1.41*0.23))));

pg2=2*(1-(1/sqrt(M)))*qfunc(2*k*sqrt(g*10.^(SNR(2)/10)*(1-r)))-(1-(2/sqrt(M)+(1/M)))*qfunc(2*k*sqrt(g*10.^(SNR(2)/10)*(1-r)));
pm2=qfunc(0.7071*sqrt(10.^(SNR(2)/10))*(sqrt(1-r)*(sqrt(14.1)-sqrt(1.41*0.23))));

pg3=2*(1-(1/sqrt(M)))*qfunc(2*k*sqrt(g*10.^(SNR(3)/10)*(1-r)))-(1-(2/sqrt(M)+(1/M)))*qfunc(2*k*sqrt(g*10.^(SNR(3)/10)*(1-r)));
pm3=qfunc(0.7071*sqrt(10.^(SNR(3)/10))*(sqrt(1-r)*(sqrt(14.1)-sqrt(1.41*0.23))));


p1=(15/16)*pg1+(1/16)*pm1;
p2=(15/16)*pg2+(1/16)*pm2;
p3=(15/16)*pg3+(1/16)*pm3;

figure (6);
plot(r,p1,r,p2,r,p3);

xlabel('ε(χ)');
ylabel('SEP');
legend('SNR=2','SNR=5','SNR=10')
grid on;