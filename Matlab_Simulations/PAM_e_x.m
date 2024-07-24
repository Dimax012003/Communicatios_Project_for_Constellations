Eg=0.0117;
constellation=[];
e=0:0.0001:2.69;
for i=-15:2:15
    constellation=[constellation i*sqrt(Eg)];
end
energy_levels=constellation.^(2);
%for i=1:16
 %   energy_levels(i)=energy_levels(i)-e;
%end
p = [];
energy=zeros(length(e),length(energy_levels));
for i=1:length(e)
    for j=1:16
        
        if(energy_levels(j)-e(i)<=0)
            energy_levels(j)=0;
            energy(i,j)=0;
        

        else
            energy(i,j)=energy_levels(j)-e(i);
        end

    end
end
p=[];
for k=1:length(e)
    ser=0;
    d=0;
    for j=1:16
        if(j==1)
            if energy(k,j)==0
                ser=1/16;
            else 
                ser = (1/16)*(qfunc(abs((sqrt(energy(k,j))-sqrt(energy(k,j+1))))/(0.03)));
            end
        end
        
        if(j==16)
            if energy(k,j)==0
                ser=1/16;
            else
                ser = (1/16)*(qfunc(abs((sqrt(energy(k,j))-sqrt(energy(k,j-1))))/(0.03)));
                
            end
        end
        if(j==8 || j==9)
            if energy(k,j)==0
                ser=1/16;

            else
                ser = (1/16)*(qfunc(abs((sqrt(energy(k,j))/(0.03))))+qfunc(abs((sqrt(energy(k,j))-sqrt(energy(k,10))))/(0.03)));
            end
        end
        if (j>1 && j<16 && j~=8 && j~=9)
                if energy(k,j)==0
                    ser=1/16;
                else
                    ser = (1/16)*(qfunc(abs((sqrt(energy(k,j))-sqrt(energy(k,j-1))))/(0.03))+qfunc(abs((sqrt(energy(k,j))-sqrt(energy(k,j+1))))/(0.03)));
                end 
        end

    d=d+ser;
    end
    p=[p d];
end

plot(e,p);
ylabel('Πιθανότητα σφάλματος 16-PAM');
xlabel('ε(χ)');
grid on;


