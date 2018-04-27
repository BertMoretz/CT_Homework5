fid=fopen('camera_log.txt')
s=textscan(fid,'%f %f %f','headerlines',23)
fclose(fid);
x=s{1};
y=s{2};
z=s{3};
plot(y,z);
