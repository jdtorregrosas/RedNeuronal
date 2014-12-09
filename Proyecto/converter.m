for kind = 1:26
    cols = [];
    for num = 1:times(1)
        disp(Y(num,36));
        if (Y(num,36) == kind)
            cols = [cols 1];
        else
            cols = [cols 0];
        end
    end
    targs = [targs cols'];
end