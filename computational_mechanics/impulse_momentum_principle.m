% Question: The 15-Mg boxcar A is coasting at 1.5 m/s on the horizontal track when it encounters a 12-Mg tank B coasting at 0.75 m/s toward it. If the cars meet and couple together, determine
% (a) the speed of both cars just after the coupling, and 
% (b) the average force between them if the coupling takes place in 0.8 s.
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Impulse and Momentum Principle %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Data from the problem ...
Ma = 15000; %kg
Mb = 12000; 
va= 1.5;%meters/s
vb= -0.75;%meters/s
delta_t= 0.8; %s
%% Conservation of linear momentum
% Ma*va + Mb*vb= (Ma+Mb)*v2
v2=(Ma*va + Mb*vb)/(Ma+Mb);%meters/s
fprintf('Final velocity = %0.1f m/s\n', v2)
%% Impulse and Momentum Principle
%Ma*va + sigma (F*dt)= Ma*v2
Favg =(Ma*va - Ma*v2)/delta_t;
fprintf('Average Force = %1.3f N\n', Favg)
