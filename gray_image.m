function output = gray_image(image)
  [m,n,page]=size(image);% extraction des tailles du tensor image 
  v = colormap(gray(256));% referencé le dris de l'image
  % boucle de 3: ligne , colone et la page
  for j=1:m
      for k=1:n
          for i=1:page
              somme = 0;
              for kolor=1:page
                  somme = somme + v(image(j,k,kolor)+1,kolor);
              end
              output(j,k,i)=somme/page;
          end
      end
  end
