v = [4,2,1,0];
n = 4;
e = 0:0.0001:4.2;
dmin=0.1;
p = [0.5,1.866,2.92,400];
p1=[];
energy=0;
for i=1:length(e)
    d=0;
    for j=1:4
        energy = p(j)*(dmin*dmin)-e(i);
        if energy<0.00000000000000000000000001
            d=d+0.25;
        else
            d=d+v(j)*0.25*qfunc((sin(pi/4)*sqrt(energy))/0.006);
        end
    
    end
    p1=[p1 d];
end 
plot(e,p1);
grid on;
xlabel('Harvest energy ε(χ)');
ylabel('SEP');