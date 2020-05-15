% Question: The 50-kg crate rests on an horizontal plane for which the coefficient of kinetic friction is μk = 0.3. If the crate is subjected to a 400-N towing force at angle θ. If θ = 30, determine the velocity of the crate in 3 s starting from rest.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initial Acceleration and Velocity %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Data from the problem
M = 50; %kg
P = [400*cosd(30) 400*sind(30)]; %Newton
g = 9.807; %meters/s^2
mu_k = 0.3;
%Calculate the weight of the crate.
W = -M .* g; %Newtons
fprintf('\nW = %1.1f N\t\t', W)
%% EQ of MOTION: y components of force.
%N_c + W + P_y = 0 
N_c = - W - P(2); %Newton
fprintf('N_c = %1.1f N\n', N_c)
%Calculate the friction force, F.
F= mu_k .* N_c; %Newtons - this equation does not account for direction
F = -F; %Newtons - Sign changed since F acts in -x direction
fprintf('F = %1.1f N\t\t', F)
%% EQ of MOTION: x components of force.
%P_x + F = M * a_x 
a_x = (P(1) + F) ./ M; %m/s^2
fprintf('a_x = %1.3f m/s^2\n\n', a_x)
%% Calculate the velocity .
v_o = 0; %m / s
delta_t = 3; %s
a = a_x; %m/s^2
v = v_o + a .* delta_t; %m/s
fprintf('v = %1.3f m/s\n\n', v)
