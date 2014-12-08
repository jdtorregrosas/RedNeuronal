
function x = proyecto(imgname)
[alto, ancho, dimension] = size(imgname);
imrgb=imread(imgname);
        figure, imshow(imrgb);
imgray=rgb2gray(imrgb);
        figure, imshow(imgray);
if alto==7
    imresized=imgray;  
else
    imfilt2 = medfilt2(imgray,[3 3]);
    imresized=imresize(imfilt2, [17,15]);
end
%figure, imshow(imgray);
%disp(imresized)
b=Binarizacion(imresized,250);
        figure, imshow(b);
%disp(b);
%cropped = imcrop(b, [1 1 18 18]);
%disp(cropped);
disp(b);
segmented = segmentar(b);
disp(segmented);
segmented = uint8(segmented);
disp(segmented);
        figure, imshow(segmented);
%segmented(segmented ~= 0) = 1;
segmented = imresize(segmented, [7 5]);
%disp(segmented);
segmented=Binarizacion(segmented,100);
%disp(segmented);
segmented=Binarizacion(segmented,250);
        figure, imshow(segmented);
%disp(segmented);
%imedge= edge(segmented, 'canny');
%imedge = uint8(imedge);
%imedge(imedge == 1) = 255;
%a = HuMom(imedge);

% VECTOR DE PIXELES 
y = reshape(segmented, [1,35]);
x=zeros;
for i=1:35
    if y(i)==255
        x(i)=-1;
    else
        x(i)=1;
    end
end
%disp(x');
x = double(x);
end