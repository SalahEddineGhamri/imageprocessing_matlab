function output = apply_mask(image,kernel)
    for i=1:3
        output = convolution2(image(:,:,i),kernel);
    end
end