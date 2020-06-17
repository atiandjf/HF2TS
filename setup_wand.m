%
%% Virtual Object Properties
% Center of object in XYZ (m) vo_c = [0 0 -75.0] * 1e-3;
vo_c = [0 75 -75] * 1e-3;
% Radius of object (m)
vo_r = 50.0 * 1e-3;
%
%% Stiffness Gain
% XYZ gains (N/m) kp_x = 500; cube kp_x = 110;
kp_x = 80;
kp_y = kp_x;
kp_z = kp_x;
% Yaw and Roll gains (N/rad)
kp_yaw = 2*kp_x;
kp_roll = kp_yaw;
% Stiffness gain (N/m, N/rad)
kp = [kp_x kp_y kp_z kp_yaw kp_roll];
%
%% Damping Gain
% XYZ gains (N/m)  kd_x = kp_x / 100;
kd_x = kp_x/ 100;
kd_y = kd_x;
kd_z = kd_x;
% Yaw and Roll gains (N.s/rad)
kd_yaw = kp_yaw / 10;
kd_roll = kd_yaw;
% Damping gain (N.s/m, N.s/rad)
kd = [kd_x kd_y kd_z kd_yaw kd_roll];
%
%% Filter Parameters
% Natural Frequency (rad/s)
%wn_f = 150;
wn_f = 150;
% Damping ratio zeta_f = 1;
zeta_f = 1;
%
%% Inputs/Ouputs
% Current Sensor (A/V): 0.5 A/V
K_CURR = 0.5 * [1 1 -1 -1 1 1];
%
%% Setpoint
% Convert mm to m and deg to rad
toSI = [1e-3 1e-3 1e-3 pi/180 pi/180];
% Convert mm to m and deg to rad
fromSI = [1e3 1e3 1e3 180/pi 180/pi];
% Initial Position (m,rad)
wd_0 = zeros(1,5);
% Speed Limit of Linear Trajectory (m/s,rad/s)
v_lim = 50*toSI;
%
%% Virtual Reality Settings
% VR Rendering sampling time (s)
%dt_p = 0.05;
dt_p = 0.005;
%
%% Rotation Matrices
th = pi;
% Rotation of 180 degrees about Y-axis.
R_y_pi = [
    cos(th)     0   sin(th);
    0           1   0 ;
    -sin(th)    0   cos(th)];

%% Display
disp('Stiffness gain:');
kp
disp('Damping gain:');
kd
