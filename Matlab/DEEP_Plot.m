%--------------------------------------------------------------------------
%                          Deep Learning - Project
%--------------------------------------------------------------------------
% @ Victor Mangeleer
% @ Lucie  Navez
% @ Axelle Schyns
%
% Contains all the path to the differents files
path = ["../Models/SBOT_BI_750_0_20/";
        "../Models/SBOT_BI_750_0_20/"];

% Loading all the information
[loss_train, loss_valid] = DEEP_loaddata(path);

% Plotting the results
nb_epochs = linspace(1, length(loss_train), length(loss_train));

figure();
plot(nb_epochs, loss_train, "-o");
xlabel("Number of epochs [-]");
ylabel("Training Loss [-]");
grid minor;

figure();
plot(nb_epochs, loss_valid, "-o");
xlabel("Number of epochs [-]");
ylabel("Validation Loss [-]");
grid minor;


