
function x = proyecto(imgname)
imrgb=imread(imgname);
imresized=imresize(imrgb, [150,150]);
imgray=rgb2gray(imresized);
%figure, imshow(imrgb);
%figure, imshow(imresized);
b=Binarizacion(imgray,200);
%figure, imshow(b);

segmented = segmentar(b);

%imedge=edge(segmented, 'canny');
%figure, imshow(imedge);
%figure, imshow(segmented);
x = HuMom(segmented);
end