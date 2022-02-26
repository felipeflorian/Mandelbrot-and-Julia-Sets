function Mandelbrot(x,y,d,n)

x1 = x(1):d:x(2);
y1 = y(1):d:y(2);
[A,B] = meshgrid(x1,y1);
c = A + 1i*B;
z = zeros(size(c));

for i=1:n
    z = z.^2 + c;
end

w = exp(-abs(z)); %Acota los valores de z entre 0 y 1.
imagesc(w);
axis equal
axis off


end