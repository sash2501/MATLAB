%Question: The man pushes on the 50 kg crate with a force of F = 150 N. Determine the power supplied by the man when t = 4 sec. The coefficient of kinetic friction between the floor and the crate is 0.2. Initially the crate was at rest.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculating power %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Data from the problem ...
M = 50; %kg
P = [150*cosd(37) -150*sind(37)]; %Newtons
g = 9.807; %meters/s^2
mu_k = 0.2;
%Calculate the weight of the crate.
W = -M .* g; %Newtons
fprintf('\nW = %1.1f N\t\t', W)
%% EQ of MOTION: y components of force.
%N_c + W + P(2) = 0 so...
N_c = -W - P(2); %Newtons
fprintf('N_c = %1.1f N\n', N_c)
%Calculate the friction force, F.
F= mu_k .* N_c; %Newtons - this equation does not account for direction
F = -F; %Newtons - Sign changed since F acts in -x direction
fprintf('F = %1.1f N\t\t', F)
%% EQ of MOTION: x components of force.
%P_x + F = M * a_x so...
a_x = (P(1) + F) ./ M; %m/s^2
fprintf('a_x = %1.3f m/s^2\n\n', a_x)
%% Calculate the velocity after three seconds.
v_o = 0; %m / s
delta_t = 4; %s
a = a_x; %m/s^2
v = v_o + a .* delta_t; %m/s
fprintf('v = %1.3f m/s\n\n', v)
%% Calculate the power
Power_p=P(1)*v;
fprintf('Power = %1.3f Watt\n\n', Power_p) 
