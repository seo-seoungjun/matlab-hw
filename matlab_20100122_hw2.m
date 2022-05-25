f1 = 400; f2 = 500; f3=700;
deg1 = -20; deg2 = 30; deg3=143;
cos1 = cosd(deg1); cos2 = cosd(deg2);  cos3 = cosd(deg3);
sin1 = sind(deg1); sin2 = sind(deg2);  sin3 = sind(deg3);
x = [f1*cos1 f2*cos2 f3*cos3];
y = [f1*sin1 f2*sin2 f3*sin3];

x=sum(x);
y=sum(y);

f=sqrt(x^2+y^2);
seta = atand(y/x);  
