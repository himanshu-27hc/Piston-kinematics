function [v] = piston_kinematics(bore,stroke,con_rod,cr,start_crank,end_crank)
% Otto cycle piston kinematics
a=stroke/2;
r = con_rod/a;
v_s = (pi/4)*bore^2*stroke;
v_c = v_s/(cr-1);
theta = linspace(0,180,100);
term1 = .5*(cr-1);
term2 = r+1-cosd(theta);
term3 = (r^2-sind(theta).^2).^.5;
v = (1+term1*(term2-term3)).*v_c;
end
