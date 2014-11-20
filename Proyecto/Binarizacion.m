function [I]=Binarizacion(imagen,umbral)
[f,c]=size(imagen);
   for i=1:f
       for j=1:c
         if double(imagen(i,j))<umbral
             I(i,j)=255;
         else
             I(i,j)=0;
         end
       end
   end
   I=uint8(I);