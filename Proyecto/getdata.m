files = dir('../proyecto/letrasc/*.jpg');
files2 = dir('../proyecto/letrasj/*.bmp');
files3 = dir('../proyecto/letras/*.bmp');
files4 = dir('../proyecto/letras8bits/*.jpg');
files5 = dir('../proyecto/letras5/*.png');
Cs = dir('../proyecto/Cs/*.png');
Y = [];
counter = 1;
counterfin = 0;
for file = files'
    bmp = file.name;
    new_row = proyecto(bmp);
    new_row(end + 1) = counter;
    Y = [Y; new_row]; 
    counter = counter + 1;
    counterfin=counterfin+1;
end
counter = 1;
for file = files2'
    bmp = file.name;
    new_row = proyecto(bmp);
    new_row(end + 1) = counter;
    Y = [Y; new_row]; 
    counter = counter + 1;
    counterfin=counterfin+1;
end
counter = 1;
for file = files3'
    bmp = file.name;
    new_row = proyecto(bmp);
    new_row(end + 1) = counter;
    Y = [Y; new_row]; 
    counter = counter + 1;
    counterfin=counterfin+1;
end
counter = 1;
for file = files4'
    bmp = file.name;
    new_row = proyecto(bmp);
    new_row(end + 1) = counter;
    Y = [Y; new_row]; 
    counter = counter + 1;
    counterfin=counterfin+1;
end
counter = 1;
for file = files5'
    bmp = file.name;
    new_row = proyecto(bmp);
    new_row(end + 1) = counter;
    Y = [Y; new_row]; 
    counter = counter + 1;
    counterfin=counterfin+1;
end
counter = 3;
for file = Cs'
    bmp = file.name;
    new_row = proyecto(bmp);
    new_row(end + 1) = counter;
    Y = [Y; new_row]; 
    %counter = counter + 1;
    counterfin=counterfin+1;
end
disp(counterfin);
save('data.mat','Y');
