constellationx=zeros(4,4);
constellationy=zeros(4,4);
e=0:0.05:4;
dmin=0.632;
k=1;
l=1;
for i=3:-2:-3
    k=1;
    for j=-3:2:3
        constellationx(l,k) = dmin*j/(2);
        constellationy(l,k) = dmin*i/(2);
        k=k+1;
    end
    l=l+1;
end
p1=zeros(1,length(e));
for i=1:length(e)
    a1=constellationx(2,3)^(2)-e(i)*cos(pi/4)^2;
    a2=constellationx(2,4)^(2)-e(i)*cos(0.1*pi)^2;
    b1=constellationy(2,3)^(2)-e(i)*sin(pi/4)^2;
    b2=constellationy(1,3)^(2)-e(i)*sin(0.4*pi)^2;
    if a1<=0 
        p1(i) =1;%-(1-0.5-qfunc(sqrt(abs(constellationx(2,4)^(2)-e(i)*cos(0.16*pi)))/(0.06)))*(1-0.5-qfunc(abs(sqrt(b1)-sqrt(b2))/(0.06)));
    else
        p1(i)= 1-(1-qfunc((sqrt(abs(constellationx(2,3)^(2)-e(i)*cos(pi/4)^2))/(0.006))-qfunc((-sqrt(constellationx(2,3)^(2)-e(i)*cos(pi/4)^2)+sqrt(constellationx(2,4)^(2)-e(i)*cos(0.16*pi)^2))/(0.006))))*(1-qfunc(sqrt(abs(b1))/0.06)-qfunc(abs(sqrt(b1)-sqrt(b2))/0.006));

    end

end
p2=zeros(1,length(e));
for i=1:length(e)
    a1=constellationx(1,3)^(2)-e(i)*cos(0.10241*pi)^2;
    a2=constellationx(1,4)^(2)-e(i)*cos(0.25*pi)^2;
    b1=constellationy(1,3)^(2)-e(i)*sin(0.39758*pi)^2;
    b2=constellationy(2,3)^(2)-e(i)*sin(0.25*pi)^2;
    if a1<=0 
        p2(i) =1;%-(1-0.5-qfunc(sqrt(abs(constellationx(1,4)^(2)-e(i)*cos(0.16*pi)))/(0.06)))*(1-0.5-qfunc(abs(sqrt(b2)-sqrt(b1))/(0.06)));

    else
        p2(i)= 1-(1-qfunc(sqrt(abs(a1))/0.006)-qfunc(abs(sqrt(a1)-sqrt(a2))/0.006))*(1-qfunc(abs(sqrt(b2)-sqrt(b1))/0.006));

    end

end
p3=zeros(1,length(e));
for i=1:length(e)
    a1=constellationx(1,4)^(2)-e(i)*(cos(pi/4)^2);
    a2=constellationx(1,3)^(2)-e(i)*cos(0.1*pi)^2;
    b1=constellationy(1,4)^(2)-e(i)*(sin(pi/4)^2);
    b2=constellationy(2,4)^(2)-e(i)*sin(pi*0.4)^2;
   

    if a1>0
        p3(i)=1-(1-qfunc(abs(sqrt(a1)-sqrt(a2))/0.006))*(1-qfunc(abs(sqrt(b1)-sqrt(b2))/0.006));
    else
        p3(i)=1;
    end
end
p=(p1+p3)/4+p2/2;

plot(e,p);
ylabel('Πιθανότητα σφάλματος 16-QAM');
xlabel('ε(χ)');
grid on;

l=0;