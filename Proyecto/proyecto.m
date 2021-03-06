
function x = proyecto(imgname)

imrgb=imread(imgname);
        %figure, imshow(imrgb);
imgray=rgb2gray(imrgb);
[ancho, alto] = size(imgray);
        %figure, imshow(imgray);
if alto<=7
    imresized=imgray;  
else
    imfilt2 = medfilt2(imgray,[3 3]);
    imresized=imresize(imfilt2, [17,15]);
end
        %figure, imshow(imresized);
%disp(imresized)
b=Binarizacion(imresized,250);
        %figure, imshow(b);
%disp(b);
%cropped = imcrop(b, [1 1 18 18]);
%disp(cropped);
%disp(b);
[anchoSeg, altoSeg] = size(b);
cropped = imcrop(b, [2 2 anchoSeg-1 altoSeg-1]);%crop
        %figure, imshow(cropped);
segmented = segmentar(cropped);
        %figure, imshow(segmented);
%disp(segmented);
segmented = uint8(segmented);
%disp(segmented);
disp(anchoSeg)
segmented = imresize(segmented, [7 5]);
%segmented = imcrop(segmented, [1 1 5 5]);
        %figure, imshow(segmented);
segmented(segmented > 110) = 255;
segmented(segmented <= 110) = 0;
%segmented = imresize(segmented, [7 5]);

%disp(segmented);
%segmented=Binarizacion(segmented,100);
%disp(segmented);
%segmented=Binarizacion(segmented,250);
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
        x(i)=1;
    else
        x(i)=-1;
    end
end
%disp(x');
x = double(x);
end