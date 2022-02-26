function Julia(f,x,y)

n = 2000;
x1 = linspace(x(1),x(2),n);
y1 = linspace(y(1),y(2),n);
[A,B] = meshgrid(x1,y1);
z = A + 1i*B;

for k = 1:25
    z = f(z);
end

w = exp(-abs(z));

imagesc(w)
axis equal
axis off

cm = colormap('colorcube');
cm(1,:) = [0 0 0];
colormap(cm)
    
end