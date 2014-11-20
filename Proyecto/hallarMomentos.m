function momentos=hallarMomentos(imagenRGB)
    imrgb=imread(imagenRGB);
    imgray=rgb2gray(imrgb);
    imshow(imrgb);
    figure, imshow(imgray);

    b=Binarizacion(imgray,150);
    figure, imshow(b);

    imedge=edge(b, 'canny');
    figure, imshow(imedge);

    momentos=HuMom(imedge);
    
