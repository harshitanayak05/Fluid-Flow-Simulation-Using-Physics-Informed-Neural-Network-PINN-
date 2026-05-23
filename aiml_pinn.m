clc; clear; close all;

%% STEP 1: Load CSV Data
% CSV should have columns: Time, FlowRate, Pressure
data = readtable('water_pipe_data.csv');   % keep CSV in same folder

time     = data.Time;        % Time (s)
flow     = data.FlowRate;    % Flow Rate (L/s)
pressure = data.Pressure;    % Pressure (bar or Pa)

%% STEP 2: Prepare Inputs and Targets
X = [time, flow];   % Input features (2D: time + flow rate)
Y = pressure;       % Target output (pressure)

%% STEP 3: Define Neural Network
hiddenLayerSize = 20;
net = fitnet(hiddenLayerSize, 'trainlm');   % Levenberg-Marquardt training

% Setup training ratios
net.divideParam.trainRatio = 70/100;  
net.divideParam.valRatio   = 15/100;  
net.divideParam.testRatio  = 15/100;  

%% STEP 4: Train the Network
[net, tr] = train(net, X', Y');   % Transpose for NN

%% STEP 5: Predictions
Y_pred = net(X');    % Predict pressure
Y_pred = Y_pred';    % Convert back to column

%% STEP 6: Plot Results (Measured vs Neural Network Pressure)

figure;

% Actual measured pressure from CSV
plot(time, pressure, '-ob', ...
    'LineWidth', 2, ...
    'MarkerSize', 6, ...
    'MarkerFaceColor', 'b');

hold on;

% Neural network predicted pressure
plot(time, Y_pred, '--sr', ...
    'LineWidth', 2, ...
    'MarkerSize', 6, ...
    'MarkerFaceColor', 'r');

xlabel('Time (s)');
ylabel('Pressure (Pa)');

title('Measured vs Neural Network Pressure');

legend('Measured Pressure', 'Neural Network Pressure');

grid on;

%% STEP 7: Error Analysis
mse_error = mean((Y - Y_pred).^2);
disp(['Mean Squared Error: ', num2str(mse_error)]);

%% STEP 8: 3D Contour Plot (Predicted Pressure)
% Create grid of Time & FlowRate
[tGrid, fGrid] = meshgrid(linspace(min(time), max(time), 50), ...
                          linspace(min(flow), max(flow), 50));

% Predict pressure for grid
X_grid = [tGrid(:), fGrid(:)]';
Z_pred = net(X_grid);
Z_pred = reshape(Z_pred, size(tGrid));

% Plot contour
figure;
contourf(tGrid, fGrid, Z_pred, 30, 'LineColor', 'none');
colorbar;
xlabel('Time (s)');
ylabel('Flow Rate (L/s)');
title('Predicted Pressure Contour');
