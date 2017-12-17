function output = median_mask(image,ke_size)
    %kernel doit etre une matrix carrée
    [m,n,p] = size(image);
    mid_index = (ke_size+1)/2;
    for i=1:m
        for j=1:n
            copy_image = zeros(ke_size,ke_size);
            for k=1:ke_size
                for e=1:ke_size
                    if ((i+(k-mid_index))>0 && (j+(e-mid_index))>0)&&((i+(k-mid_index)<=m)&&(j+(e-mid_index)<=n))
                        copy_image(k,e) = image(i+(k-mid_index),j+(e-mid_index));
                    end 
                end
            end
            output(i,j) = median(median(copy_image));
        end
    end
end