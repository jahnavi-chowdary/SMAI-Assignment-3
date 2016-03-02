function [projected_Fisher] = FisherLDA(X,labels)  

[val ind] = sort(labels);
pl = unique(labels);
for i = 1:size(pl,1)
    class_pol(i,1) = size((find(labels == pl(i,1))),1);
end

no_of_classes = size(pl,1);
dim = size(X,1);
Class_population_1 = cumsum(class_pol);
Class_population = [0;Class_population_1];

projected_PCA = PCA(X',(dim - no_of_classes));
projected_PCA = projected_PCA(ind);
projected_PCA = projected_PCA'; % projected_PCA -> (N - C) x #instances 



%Calculating the mean of each class in eigenspace
mean_PCA = mean(projected_PCA,2); 
m = zeros(dim-no_of_classes,no_of_classes); 
Sw = zeros(dim-no_of_classes,dim-no_of_classes);
Sb = zeros(dim-no_of_classes,dim-no_of_classes); 

for i = 1 : no_of_classes
    m(:,i) = mean( ( projected_PCA(:,(1 + Class_population(i,1)): Class_population((i+1),1)) ), 2 )';    
    
    S  = zeros(dim-no_of_classes,dim-no_of_classes); 
    for j = (1 + Class_population(i,1)) : (Class_population((i+1),1))
        S = S + (projected_PCA(:,j)-m(:,i))*(projected_PCA(:,j)-m(:,i))';
    end
    
    Sw = Sw + S; 
    Sb = Sb + (m(:,i)-mean_PCA) * (m(:,i)-mean_PCA)'; 
end

% Calculating Fisher discriminant basis's

[J_eigvec, J_eigval] = eig(Sb,Sw); % Cost function J = inv(Sw) * Sb
J_eigvec = fliplr(J_eigvec); % J_eigvec -> (N - C) x (N - C)

% Eliminating zero eigens and sorting in descend order
for i = 1 : no_of_classes-1 
    V_Fisher(:,i) = J_eigvec(:,i); % V_Fisher -> (N - C) x 1
end

% Projecting images onto Fisher linear space
for i = 1 : 100
    projected_Fisher(:,i) = V_Fisher' * projected_PCA(:,i); % projected_Fisher -> 1 x #instances
end

projected_Fisher = projected_Fisher';
projected_Fisher = projected_Fisher(ind);
end