function [ M ] = RotY( Q )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
M = [cos(Q),0,sin(Q),0;0,1,0,0;-sin(Q),0,cos(Q),0;0,0,0,1];

end

