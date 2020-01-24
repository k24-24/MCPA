currentX= 0; % current position
currentV= 0; %current velocity
m= 9.11e-31; % mass of electron
f=1;   % F=1N
a=f/m; % acceleration
dt=1e-10; %time step
vd=0; % drift velocity

for i=1:2000
    if(rand<0.05)
        currentV=0;
    end
    currentX=currentX + (dt*currentV);
    currentV=currentV + (dt*a);
    v_s(i) = currentV;
    vd=mean(v_s);
    pause(0.05)
    subplot(1,3,1);
    plot(i,currentX,'b.');
    hold on
    xlabel('Time');
    ylabel('Position');
    subplot(1,3,2);
    plot(i,currentV,'r.');
    hold on
    xlabel('Time');
    ylabel('Velocity');
    subplot(1,3,3);
    plot(i,vd,'g.');
    hold on
    xlabel('Time');
    ylabel('Drift Velocity');
    
    
end