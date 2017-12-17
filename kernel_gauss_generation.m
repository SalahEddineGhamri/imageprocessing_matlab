function kernel = kernel_gauss_generation(sigma, size)
    % size doit étre impair
    % 2 D fonction guassienne
    n = (size+1)/2;
    G = zeros(size);
    for i=1:size
        for j=1:size
            x = i-n;
            y = j-n;
            G(i,j) = (1/(2*pi*sigma^2))*exp(-((x/1.03)^2+(y/1.03)^2)/(2*sigma^2));
        end
    end
    kernel = G;
end 