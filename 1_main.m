% clc;
% clear;
% close all;

[col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11 col12 col13 col14 col15 col16 col17] = textread('./bank.csv', '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s', 'delimiter',';');
init_data = [col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11 col12 col13 col14 col15 col16 col17];
init_data = init_data(2:4522,:);

rows = size(init_data,1);
cols = size(init_data,2);
data = zeros(rows,cols);

for i = 1:cols

    a = init_data(:,i);
    if i == 1
        for j = 1:rows
            var = a{j,1};
            var = str2num(var);
            data(j,i) = var;
        end
    end
    
    if i == 2
        for j = 1:rows
            if strcmp(a(j,1), '"admin."') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"unknown"') 
                data(j,i) = 2; 
            end 
            if strcmp(a(j,1), '"unemployed"') 
                data(j,i) = 3; 
            end 
            if strcmp(a(j,1), '"management"') 
                data(j,i) = 4; 
            end 
            if strcmp(a(j,1), '"housemaid"') 
                data(j,i) = 5; 
            end 
            if strcmp(a(j,1), '"entrepreneur"') 
                data(j,i) = 6; 
            end 
            if strcmp(a(j,1), '"student"') 
                data(j,i) = 7; 
            end 
            if strcmp(a(j,1), '"blue-collar"') 
                data(j,i) = 8; 
            end 
            if strcmp(a(j,1), '"self-employed"') 
                data(j,i) = 9; 
            end 
            if strcmp(a(j,1), '"retired"') 
                data(j,i) = 10; 
            end 
            if strcmp(a(j,1), '"technician"') 
                data(j,i) = 11; 
            end 
            if strcmp(a(j,1), '"services"') 
                data(j,i) = 12; 
            end 
        end
    end
    
    if i == 3
        for j = 1:rows
            if strcmp(a(j,1), '"married"') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"divorced"') 
                data(j,i) = 2; 
            end 
            if strcmp(a(j,1), '"single"') 
                data(j,i) = 3;
            end
        end
    end
    
    if i == 4
        for j = 1:rows
            
            if strcmp(a(j,1), '"unknown"') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"secondary"') 
                data(j,i) = 2; 
            end 
            if strcmp(a(j,1), '"primary"') 
                data(j,i) = 3; 
            end
            if strcmp(a(j,1), '"tertiary"') 
                data(j,i) = 4; 
            end
        end
    end
    
    if i == 5
        for j = 1:rows
            if strcmp(a(j,1), '"yes"') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"no"') 
                data(j,i) = 2; 
            end 
        end
    end
    
    if i == 6
        for j = 1:rows
            var = a{j,1};
            var = str2num(var);
            data(j,i) = var;
        end
    end
    
     if i == 7
        for j = 1:rows
            if strcmp(a(j,1), '"yes"') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"no"') 
                data(j,i) = 2; 
            end 
        end
     end
    
     if i == 8
        for j = 1:rows
            if strcmp(a(j,1), '"yes"') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"no"') 
                data(j,i) = 2; 
            end 
        end
     end
    
     
    if i == 9
        for j = 1:rows
           
            if strcmp(a(j,1), '"unknown"') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"telephone"') 
                data(j,i) = 2; 
            end 
            if strcmp(a(j,1), '"cellular"') 
                data(j,i) = 3;
            end
        end
    end
    
    if i == 10
        for j = 1:rows
            var = a{j,1};
            var = str2num(var);
            data(j,i) = var;
        end
    end
    
    if i == 11
        for j = 1:rows
            if strcmp(a(j,1), '"jan"') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"feb"') 
                data(j,i) = 2; 
            end 
            if strcmp(a(j,1), '"mar"') 
                data(j,i) = 3; 
            end 
            if strcmp(a(j,1), '"apr"') 
                data(j,i) = 4; 
            end 
            if strcmp(a(j,1), '"may"') 
                data(j,i) = 5; 
            end 
            if strcmp(a(j,1), '"jun"') 
                data(j,i) = 6; 
            end 
            if strcmp(a(j,1), '"jul"') 
                data(j,i) = 7; 
            end 
            if strcmp(a(j,1), '"aug"') 
                data(j,i) = 8; 
            end 
            if strcmp(a(j,1), '"sep"') 
                data(j,i) = 9; 
            end 
            if strcmp(a(j,1), '"oct"') 
                data(j,i) = 10; 
            end 
            if strcmp(a(j,1), '"nov"') 
                data(j,i) = 11; 
            end 
            if strcmp(a(j,1), '"dec"') 
                data(j,i) = 12; 
            end 
        end
    end
    
    if i == 12
        for j = 1:rows
            var = a{j,1};
            var = str2num(var);
            data(j,i) = var;
        end
    end
    
    if i == 13
        for j = 1:rows
            var = a{j,1};
            var = str2num(var);
            data(j,i) = var;
        end
    end
    
    if i == 14
        for j = 1:rows
            var = a{j,1};
            var = str2num(var);
            data(j,i) = var;
        end
    end
    
    if i == 15
        for j = 1:rows
            var = a{j,1};
            var = str2num(var);
            data(j,i) = var;
        end
    end
    
    if i == 16
        for j = 1:rows
            
            if strcmp(a(j,1), '"unknown"') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"other"') 
                data(j,i) = 2; 
            end 
            if strcmp(a(j,1), '"failure"') 
                data(j,i) = 3; 
            end
            if strcmp(a(j,1), '"success"') 
                data(j,i) = 4; 
            end
        end
    end
    
    if i == 17
        for j = 1:rows
            if strcmp(a(j,1), '"yes"') 
                data(j,i) = 1; 
            end 
            if strcmp(a(j,1), '"no"') 
                data(j,i) = 2; 
            end 
        end
     end
    
end

samples = data(:,1:16);
labels = data(:,17);
accu = zeros(1,10);

for i = 1:10
    rand_samples = [];
    rand_labels = [];
    randorder = randperm(rows);
    rand_samples = samples(randorder, :);
    rand_labels = labels(randorder, :);
    
    train_s = rand_samples(1:1000,:);
    train_l = rand_labels(1:1000,:);
    
    test_s = rand_samples(1001:2000,:);
    test_l = rand_labels(1001:2000,:);
    
    acc = NaiveBayes_normal(train_s, train_l, test_s, test_l);
    acc;
    accu(1,i) = acc;
    
end
x = [1 2 3 4 5 6 7 8 9 10];
figure;plot(x,accu);
mean_accu = mean(accu)
std = std(accu)

