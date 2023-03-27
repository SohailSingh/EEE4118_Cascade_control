clear
% generate a transfer function object
s = tf('s');
p(1,1,1) = 9.694/(0.227*s^2 + s); % "Nominal" plant 2/s
p(1,1,2) = 4.498/(0.092*s^2 + s); % Low gain plant
p(1,1,3) = 19.97/(0.641*s^2 + s); % High gain plant

w=[0.221,1,3,10,30,100]; % Define design frequencies
ws=10.^([-20,4,4,4,4,4]/20);% Define design specifications

bnd=sisobnds(2,w,ws,p); % Calculate nominal bounds from specs
plotbnds(bnd) % Plot
lpshape(w,bnd,p(1,1,1)) % Perform design



