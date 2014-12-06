
function x = proyecto(imgname)
imrgb=imread(imgname);

imgray=rgb2gray(imrgb);

imfilt2 = medfilt2(imgray,[3 3]);
imresized=imresize(imfilt2, [18,18]);

b=Binarizacion(imresized,200);
disp(b);
%cropped = imcrop(b, [1 1 18 18]);
%disp(cropped);
segmented = segmentar(b);
segmented = imresize(segmented, [10 10]);
segmented = uint8(segmented);
%figure, imshow(segmented);
segmented(segmented ~= 0) = 1;
disp(segmented);

%imedge= edge(segmented, 'canny');
%imedge = uint8(imedge);
%imedge(imedge == 1) = 255;
%a = HuMom(imedge);
x = reshape(segmented, [1,100]);
disp(x');
x = double(x);
end