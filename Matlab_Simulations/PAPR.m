dmin=0.01:0.01:0.48;
papr1=8-33.*dmin.^(2);
papr2=4-5.2802.*dmin.^(2);
papr3=2.64.*dmin./dmin;
papr4=1.*dmin./dmin;
papr5=1.8.*dmin./dmin;
figure (5);
plot(dmin,papr1,dmin,papr2,dmin,papr3,dmin,papr4,dmin,papr5);
grid on;
legend('16-CQAM N=8','16-CQAM N=4','16-PAM','16-PSK','16-QAM')
title('Διάγραμμα PAPR');
ylabel('PAR');
xlabel('dmin');