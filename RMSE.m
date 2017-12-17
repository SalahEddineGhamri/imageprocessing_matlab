function error = RMSE(image1,image2)
   error = sqrt(mean(power(image1(:)-image2(:),2)));
end
