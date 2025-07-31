clc; clear; close all;

% Given constants
C_R = 0.2;  % Chord/R ratio
sigma = 0.13;  % Solidity Ratio
Ct = 0.013;  % Thrust Coefficient
T_air = 1.2;  % Thrust in Air (N)
T_water = 1;  % Thrust in Water (N)
rho_air = 1.225;  % Air Density (kg/m^3)
rho_water = 1000;  % Water Density (kg/m^3)
V_air = 15;  % Airflow speed (m/s)
V_water = 0.5;  % Water flow speed (m/s)

% Range of propeller diameters to test
D_values = linspace(0.1, 1, 100);  % Testing D from 0.1m to 1m

min_diff = inf;
optimal_D = 0;

for D = D_values
    R = D / 2;
    
    % Compute n_air (Rotations Per Second in Air)
    n_air = sqrt(T_air / (Ct * rho_air * D^4));
    J_air = V_air / (n_air * D);
    
    % Compute n_water (Rotations Per Second in Water)
    n_water = sqrt(T_water / (Ct * rho_water * D^4));
    J_water = V_water / (n_water * D);
    
    % Compute percentage difference
    diff_percent = abs(J_air - J_water) / J_air * 100;
    
    % Update optimal D if the difference is smaller
    if diff_percent < min_diff
        min_diff = diff_percent;
        optimal_D = D;
        best_J_air = J_air;
        best_J_water = J_water;
    end
end

% Display results
fprintf('Optimal Diameter (D) = %.4f m\n', optimal_D);
fprintf('J_air = %.5f, J_water = %.5f\n', best_J_air, best_J_water);
fprintf('Percentage Difference = %.5f%%\n', min_diff);
