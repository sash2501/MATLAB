% Question: The 3500-lb automobile shown in Fig. is traveling down the 10 inclined road at a speed of 20 ft/s. If the driver jams on the brakes, causing his wheels to lock. determine how far his tires skid on the road. The coefficient of kinetic friction between the wheels and the road is uk= 0.5

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Work Energy Principle %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Data from the problem
W = 3500; %lb
%% EQ of MOTION: y components of force.
%N_A - W*cos(10) so...
N_A = W * cosd(10); %lb
fprintf('Magnitude of the normal force = %0.2f lb\n', N_A)
%Calculate the friction force.
mu_k = 0.5;
F_A = mu_k .* N_A; %Newtons
fprintf('Friction force = %0.2f lb\n', F_A)
%% Calculate the skid distance
% T1+ SigmaU =T2
%(0.5*W*v(1)*20/32.2)+W*s*sind(10) - F_A*s =0
v(1) = 20; %ft/s
s = (0.5 .* W .* v(1).^2 /32.2)/ (F_A - W * sind(10)); %meters
fprintf('Skid distance = %0.1f ft\n', s) 
