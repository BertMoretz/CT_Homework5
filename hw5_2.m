fid=fopen('robot.txt');
s=textscan(fid,'%f %f %f %f %f','headerlines',23);
fclose(fid);
t=s{1};
x=s{2};
angle=s{3};
Vl = s{4};
Vr = s{5};

%prepare arrays for our x and y
xc=zeros;
y = zeros;
%number of iterations in for
j = size(angle);

lastx = 0.0;
lasty = 0.0;
last_angle = 0.0;
last_time = t(1);

%computaitons according to the attached document
for i = 1:j
    dt = t(i) - last_time;
    
    left = 0.0471 * Vl(i);
    right = 0.0471 * Vr(i);
    
    if abs(left-right)<0.00000001
        currx = lastx + left * cos(last_angle) * dt;
        curry = lasty + left * sin(last_angle) * dt;
        
        current_angle = last_angle;
    else 
        r = (15 / 2) * ((right + left) / ((right - left)));
        omdt = dt * (right - left) / 15;
        
        iccx = lastx - r * sin(last_angle);
        iccy = lasty + r * cos(last_angle);
        
        cos_temp = cos(omdt);
        sin_temp = sin(omdt);
        
        
        currx = cos_temp * (lastx - iccx) - sin_temp * (lasty - iccy) + iccx;
        curry = sin_temp * (lastx - iccx) + cos_temp * (lasty - iccy) + iccy;
        current_angle = last_angle + omdt;
    end
    xc(i) = currx;
    y(i) = -1 * curry;
    
    lastx = currx;
    lasty = curry;
    last_angle = current_angle;
    last_time = t(i);
end
%plotting
plot(xc,y);

        