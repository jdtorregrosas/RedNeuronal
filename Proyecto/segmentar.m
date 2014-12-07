function j = segmentar(imagen)
    rests = regionprops(imagen,'all');
    numbers = size(rests);
    for k = 1 : numbers
        thisBlobsBoundingBox = rests(k).BoundingBox;  % Get list of pixels in current blob.
        % Extract out this coin into it's own image.
        j = imcrop(imagen, thisBlobsBoundingBox);
        % Display the image with informative caption.
        %imshow(j);
    end
    