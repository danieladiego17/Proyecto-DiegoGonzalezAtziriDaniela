U=ones(1,7998);
for i=1:7998
    if i<=1000
        U(1,i)=5.8;
    elseif i>=2000 && i<=3000
        U(1,i)=-5.8;
    elseif i>=4000 && i<=5000
        U(1,i)=5.8;
    elseif i>=6000 && i<=7000
        U(1,i)=-5.8;
    else
        U(1,i)=0;
    end
end
figure (2)
hold on
grid on
plot(U)
%plot(arduinoObj.UserData.DataS)