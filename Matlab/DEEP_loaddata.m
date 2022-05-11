function [loss_train, loss_valid] = DEEP_loaddata(path)
    for i = 1 : length(path)
        % Creation of the different paths
        current_path = path(i);
        ltrain_path  = current_path + "SBOTV2_loss_train.txt";
        lvalid_path  = current_path + "SBOTV2_loss_valid.txt";
    
        % Loading the data
        loss_train(i, :) = fscanf(fopen(ltrain_path, 'r'), '%f');
        loss_valid(i, :) = fscanf(fopen(lvalid_path, 'r'), '%f');
    end
end