clear
% generate a transfer function object
p(1,1,1) = tf(9.694, [0.227, 1]);  % "Nominal" plant
p(1,1,2) = tf(4.498, [0.092, 1]);  % Low gain plant
p(1,1,3) = tf(19.968, [0.641, 1]); % High gain plant

w=[0.175,1.6,3,10,30,100]; % Define design frequencies
ws=10.^([-20,4,4,4,4,4]/20);% Define design specifications

bnd=sisobnds(2,w,ws,p); % Calculate nominal bounds from specs
plotbnds(bnd) % Plot
lpshape(w,bnd,p(1,1,1)) % Perform design
