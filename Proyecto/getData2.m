files4 = dir('../proyecto/letras8bits/*.jpg');
Y = [];
counter = 1;
counterfin = 0;
for file = files4'
    bmp = file.name;
    new_row = proyecto(bmp);
    new_row(end + 1) = counter;
    Y = [Y; new_row]; 
    counter = counter + 1;
    counterfin=counterfin+1;
end
disp(counterfin);
save('data.mat','Y');