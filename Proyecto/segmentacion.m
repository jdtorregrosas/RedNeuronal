function x=segmentacion(imagen)
% SEGMENTACIÓN
% Si la imagen es RGB, la pasa a escala de grises

if size(imagen,3)==3 %3 planos: RGB
gris=rgb2gray(imagen);
else
gris=imagen;
end
    figure, imshow(gris);
% Binarización con umbral automático *0.60
bina=im2bw(gris,graythresh(gris)*0.60);
    figure, imshow(bina);
% Procesamiento morfológico
bina=bwmorph(bina,'open'); % Eliminar picos
bina=bwmorph(bina,'close'); % Eliminar huecos
    figure, imshow(bina);
% Etiquetar los objetos de la imagen
L=bwlabel(bina);
    figure, imshow(L);
% Calcular "área" y "caja" de objetos
prop=regionprops(L,{'Area','BoundingBox'});
    
% Tomar el área máxima
[m pam]=max([prop.Area]);

% "roi" contiene solo la imagen más grande
roi=ismember(L,pam);
ee=strel('disk',18,0);
roi=imdilate(roi, ee);
    figure, imshow(roi);
% Obtener los límites del área máxima
limites=prop(pam).BoundingBox;

% Presentar el área de interés (roi)
imagesc(roi)
colormap gray