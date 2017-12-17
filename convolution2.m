function output = convolution2(image,kernel)
    %kernel doit etre une matrix carrée
    [m,n,p] = size(image);
    ke_size = size(kernel);
    mid_index = (ke_size(1)+1)/2;
    for i=1:m
        for j=1:n
            copy_image = zeros(ke_size(1),ke_size(2));
            for k=1:ke_size(1)
                for e=1:ke_size(2)
                    if ((i+(k-mid_index))>0 && (j+(e-mid_index))>0)&&((i+(k-mid_index)<=m)&&(j+(e-mid_index)<=n))
                        copy_image(k,e) = image(i+(k-mid_index),j+(e-mid_index));
                    end 
                end
            end
            output(i,j) = sum(sum(copy_image .* kernel));
        end
    end
end
