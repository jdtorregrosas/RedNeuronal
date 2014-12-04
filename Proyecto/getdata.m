files = dir('../proyecto/letrasc/*.jpg');
files2 = dir('../proyecto/letrasj/*.bmp');
files3 = dir('../proyecto/letras/*.bmp');
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

disp(counterfin);
save('data.mat','Y');
