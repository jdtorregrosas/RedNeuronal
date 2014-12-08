function x=segmentacion(imagen)
% SEGMENTACI�N
% Si la imagen es RGB, la pasa a escala de grises

if size(imagen,3)==3 %3 planos: RGB
gris=rgb2gray(imagen);
else
gris=imagen;
end
    figure, imshow(gris);
% Binarizaci�n con umbral autom�tico *0.60
bina=im2bw(gris,graythresh(gris)*0.60);
    figure, imshow(bina);
% Procesamiento morfol�gico
bina=bwmorph(bina,'open'); % Eliminar picos
bina=bwmorph(bina,'close'); % Eliminar huecos
    figure, imshow(bina);
% Etiquetar los objetos de la imagen
L=bwlabel(bina);
    figure, imshow(L);
% Calcular "�rea" y "caja" de objetos
prop=regionprops(L,{'Area','BoundingBox'});
    
% Tomar el �rea m�xima
[m pam]=max([prop.Area]);

% "roi" contiene solo la imagen m�s grande
roi=ismember(L,pam);
ee=strel('disk',18,0);
roi=imdilate(roi, ee);
    figure, imshow(roi);
% Obtener los l�mites del �rea m�xima
limites=prop(pam).BoundingBox;

% Presentar el �rea de inter�s (roi)
imagesc(roi)
colormap gray