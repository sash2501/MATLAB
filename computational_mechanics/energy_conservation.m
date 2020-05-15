% Question: The gantry structure shown is used to test the response of an airplane during a crash. The plane, with mass 8Mg is hoisted back until theta = 60*. With the plane at test in that position, the cable AC is released.
% a) Determine the speed of the plane in m/sec just before impact with the ground at theta = 15*. Neglect any aerodynamic effects and treat the plane as a particle.
% b) Find maximum tension in cable.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Conservation of Energy %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Data from the problem ...
M = 8000; %kg
th1=60;
th2 =15;%DEGREES
L =20;%meters
g = 9.807; %meters/s^2
%Calculate the weight of the crate.
W = -M .* g; %Newtons
%% Conservation of energy
% TA + VA= TB+VB
TA= 0;
VA= W* L* cosd(th1);
Energy_A= TA+VA;
%TB= (0.5 .* M .* v(1).^2)
VB= W* L* cosd(th2);
v_2 = sqrt((Energy_A - VB)/  (0.5 .* M )); %meters/s
fprintf('Final velocity = %0.1f m/s\n', v_2)
%% EQ of MOTION: y components of force.
%T+W*cosd(th2)=M*v_2/L so...
T=-W*cosd(th2)+(M*v_2*v_2/L); %m/s^2
fprintf('Tension = %1.3f N\n', T)
