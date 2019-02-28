function [ M ] = Full_Transformation( X, Y, Z, x1, y1, z1, x2, y2, z2 )
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here
M = zeros(4,19);
a=AngleA(Y, Z, z1);
b=AngleB(X, Z, x1, z1);
c=AngleC(X, Z, x1, z1);
p=AngleA(Y, Z, z2);
q=AngleB(X, Z, x2, z2);
r=AngleC(X, Z, x2, z2);
Foot1 = [x1;y1;z1;1];
Knee1 = Foot1 + RotX(a)*RotY(b)*TransZ(15);
Hip1 = Foot1 + RotX(a)*RotY(b)*TranslateZ(15)*RotY(c-pi)*TransZ(15);
Com = [X;Y;Z;1];
Foot2 = [x2;y2;z2;1];
Knee2 = Foot2 + RotX(p)*RotY(q)*TransZ(15);
Hip2 = Foot2 + RotX(p)*RotY(q)*TranslateZ(15)*RotY(r-pi)*TransZ(15);
Neck = Com + [0;0;20;1];
Head = Neck + [0;0;5;1];
Shoulder1 = Neck + [0;-5;0;1];
Shoulder2 = Neck + [0;5;0;1];
Hand1 = [x2;Y-5;Z+20-(100-(X-x2).^2).^0.5;1];
Hand2 = [x1;Y+5;Z+20-(100-(X-x1).^2).^0.5;1];

M(:,1) = Head;
M(:,2) = Neck;
M(:,3) = Shoulder1;
M(:,4) = Hand1;
M(:,5) = Shoulder1;
M(:,6) = Shoulder2;
M(:,7) = Hand2;
M(:,8) = Shoulder2;
M(:,9) = Neck;
M(:,10)= Com;
M(:,11)= Hip1;
M(:,12)= Knee1;
M(:,13)= Foot1;
M(:,14)= Knee1;
M(:,15)= Hip1;
M(:,16)= Com;
M(:,17)= Hip2;
M(:,18)= Knee2;
M(:,19)= Foot2;
end

