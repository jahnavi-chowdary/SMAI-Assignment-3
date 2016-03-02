% clc;
% clear;
% close all;

tic;
train_s = importdata('train_data.txt');
train_l = importdata('train_labels.txt');
test_s = importdata('valid_data.txt');
test_l = importdata('valid_labels.txt');

ks = [10 100 1000];
for i = 1:3
    k = ks(1,i)
    
    randorder = randperm(size(train_s,1));
    rand_samples = train_s(randorder, :);
    rand_labels = train_l(randorder, :);
    
    train_s = rand_samples;
    train_l = rand_labels;
    
    randorder = randperm(size(test_s,1));
    rand_samples = test_s(randorder, :);
    rand_labels = test_l(randorder, :);
    
    test_s = rand_samples;
    test_l = rand_labels;
    
    % PCA
    train_s_new = PCA(train_s,k);
    test_s_new = PCA(test_s,k);
    
    acc_pca = NaiveBayes_gaussian(train_s_new, train_l, test_s_new, test_l);
    acc_pca;
    accu_pca(1,i) = acc_pca;
    
end

% Fisher LDA
train_s_n = FisherLDA(train_s',train_l);
test_s_n = FisherLDA(test_s',test_l);

acc_lda = NaiveBayes_gaussian(train_s_n, train_l, test_s_n, test_l);
acc_lda;
accu_lda(1,1) = acc_lda;

x = [1 2 3];
figure;plot(x,accu_pca);

mean_accu = mean(accu_pca)
std = std(accu_pca)

accu_lda

toc