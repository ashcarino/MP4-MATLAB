function projectile_motion(v,h,theta,Ax,Ay)
if Ay == 0 
    disp('Error: vertical acceleration is equal to 0');
end

T =(sqrt((v*sind(theta))^2-2*Ay*h) - v*sind(theta))/Ay;
if T <= 0
    T =(-sqrt((v*sind(theta))^2-2*Ay*h) - v*sind(theta))/Ay;
end

t = 0:0.001:T;
Vx = v.*cosd(theta);
Vy = v.*sind(theta);
x = Vx .*t + (0.5) .* Ax .* (t).^2;
y = Vy .* t + (0.5) .* Ay .* (t).^2 + h;

plot(x,y)
xlabel('Distance')
ylabel('Height')
title('Projectile Motion')
grid on
end