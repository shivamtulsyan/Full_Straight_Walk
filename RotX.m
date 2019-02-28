function [ M ] = RotX( Q )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
M=[1,0,0,0;0,cos(Q),-sin(Q),0;0,sin(Q),cos(Q),0;0,0,0,1];

end

