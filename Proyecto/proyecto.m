
function x = proyecto(imgname)
imrgb=imread(imgname);

imgray=rgb2gray(imrgb);

imfilt2 = medfilt2(imgray,[3 3]);
imresized=imresize(imfilt2, [150,150]);
%figure, imshow(imrgb);
%figure, imshow(imresized);
b=Binarizacion(imresized,200);
%figure, imshow(b);
cropped = imcrop(b, [2 2 147 147]);
segmented = segmentar(cropped);

%imedge=edge(segmented, 'canny');
%figure, imshow(imedge);
figure, imshow(segmented);
x = HuMom(segmented);
end