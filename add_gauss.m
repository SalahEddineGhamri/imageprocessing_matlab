function output = add_gauss(image)
    [m,n,p] = size(image);
    for j=1:m
        for k=1:n
            l=randn(1,1)/10;
            for i=1:p   
                image(j,k,i)=image(j,k,i)+l;
                if image(j,k,i)>1
                    image(j,k,i)=1;
                else if image(j,k,i)<0
                        image(j,k,i)=0;
                    end
                end
            end
        end
    end
    output = image;
end