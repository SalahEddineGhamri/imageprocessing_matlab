clear all
close all 
clc 

% Chargement de l'image
RGB_image = imread('TP1.2.jpg');
% Conversion RGB gris
grayimg = gray_image(RGB_image);
imwrite(grayimg,'grayimg.png');
% imshow(grayimg);
% % Bruitage poivre sel 
%poi_sel_img = poivre_sel(grayimg,2); % 2% des pixels
%RMSE(grayimg,poi_sel_img);
% show_image(poi_sel_img); 
% % Bruitage Gaussien
%gaussimg = add_gauss(grayimg);
%imwrite(gaussimg,'gaussimg.png');
% show_image(gaussimg);
% 
%% Filtrage
% filtre moyenneur
%size = 3; %doit étre impair
%kernel = ones(size) ./ size^2 ;
%fil_moy_img = apply_mask(grayimg,kernel);
%imwrite(fil_moy_img,'fil_moy_img.png');
% show_image(fil_moy_img);

% filre Gaussien 
%kernel = kernel_gauss_generation(1.029,11); %sigma et la taille
%gauss_img = apply_mask(gaussimg,kernel);
%imwrite(gauss_img,'gauss_img.png');
% show_image(gauss_img,gaussimg);
% 
% filtre median
%med_img = median_mask(poi_sel_img,3);
%imwrite(poi_sel_img,'poi_sel_img.png');
% show_image(med_img,poi_sel_img);

% filtre knn

% filtre sigma 

% filtre SNN

% filtre min-max


