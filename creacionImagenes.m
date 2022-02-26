c = -0.70176-0.3842i;

for i= 1:2
    name = int2str(i);
    h = [-1.5,1.5];
    f = @(z) z.^2+c;
    Julia(f,h,h);
    saveas(gcf, name,'jpg');
    if i < 100
        c = c + (0.005+0.001i);
    else 
        c = c - (0.005+0.001i);
    end
end


