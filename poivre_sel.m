function image = poivre_sel(image,sizee)
    a = size(image);
    sizee = sizee * (a(1) * a(2))/100;
    x = randi([1 a(1)],1,sizee);%randn
    y = randi([1 a(2)],1,sizee);%randn
    r = randn(1,sizee);
    for p=1:sizee%m
        for k=1:3
            image(x(p),y(p),k)=r(p);
            if image(x(p),y(p),k)>1
                    image(x(p),y(p),k)=1;
                else if image(x(p),y(p),k)<0
                        image(x(p),y(p),k)=0;
                    end
            end
        end
    end