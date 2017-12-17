function show_image(image1,image2)
    figure;
    if nargin == 1
        imshow(image1);
    elseif nargin == 2
            h(1)= subplot(1,2,1);
            imshow(image1);
            h(2)= subplot(1,2,2);
            imshow(image2);
    end
    
  
  