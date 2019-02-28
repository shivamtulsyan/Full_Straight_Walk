k=3; %variable
for t=0:30
    X=-2.5;
    Y= 5+ k - 2*k*t/30;
    Z= 30*cos(pi/10);
    x1=0;y1=0;z1=0;
    x2=-5;y2=10;z2=0;
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    view([90 0])

    pause(0.0001)
    
end

for t=0:100
    X=-2.5 + 5*t/100;
    Y=5-k;
    Z=cubiceqn1(t/20) + 30*cos(pi/10);
    x1=0;y1=0;z1=0;
    x2=-5 + 10*t/100;
    y2=10;
    z2=cubiceqn2(t/10);
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    view([90 0])
    pause(0.0001)
end

for t=0:30
    X=2.5;
    Y=5-k + 2*k*t/30;
    Z= 30*cos(pi/10);
    x1=0;y1=0;z1=0;
    x2=5;y2=10;z2=0;
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    view([90 0])
    pause(0.0001)
end

for t=0:100
    X=2.5 + 5*t/100;
    Y=5+k;
    Z=cubiceqn1(t/20) + 30*cos(pi/10);
    x1=10*t/100;
    y1=0;
    z1=cubiceqn2(t/10);
    x2=5;y2=10;z2=0;
    
    M = Full_Transformation(X,Y,Z,x1,y1,z1,x2,y2,z2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    view([90 0])
    pause(0.0001)
end

    
    