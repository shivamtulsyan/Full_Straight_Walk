function [ M ] = RotZ( Q )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
M = [cos(Q),-sin(Q),0,0;sin(Q),cos(Q),0,0;0,0,1,0;0,0,0,1];

end

