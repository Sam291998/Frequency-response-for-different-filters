%Samson David Puthenpeedika

%input image
a=imread('cameraman.tif');

% the linear kernels of the disk,laplacian and sobel filters
disk = fspecial('disk',10);
lap = fspecial('laplacian',0.3);
sob = fspecial('sobel');

% applying three filters to image
s=im2double(a);
b=convn(s,disk,"same");
c=convn(s,lap,"same");
d=convn(s,sob,"same");


%frequency response of three filters
fdisk=fftn(disk,[256 256]);
flap=fftn(lap,[256 256]);
fsob=fftn(sob,[256 256]);

centdisk=abs(fftshift(fdisk));
centlap= abs(fftshift(flap));
centsob= abs(fftshift(fsob));


% Display
figure("Name",'Disk Filter')
subplot(2,2,1)
imshow(centdisk);
title('Filter in frequency domain');

subplot(2,2,2)
imshow(disk,[]);
title('Filter in space domain');

subplot(2,2,3)
imshow(a);
title('Orginal Image');

subplot(2,2,4)
imshow(b);
title('Filtered image- Disk Filter');
sgtitle('Disk Filter of radius 10')

figure("Name","Laplacian filter")
subplot(2,2,1)
imshow(centlap);
title('Filter in frequency domain');
subplot(2,2,2)
imshow(lap,[]);
title('Filter in space domain');
subplot(2,2,3)
imshow(a);
title('Orginal Image');
subplot(2,2,4)
imshow(c);
title('Filtered image- Laplacian filter');
sgtitle('Laplacian filter with alpha = 0.3');

figure("Name","Sobel Filter")
subplot(2,2,1)
imshow(centsob);
title('Filter in frequency domain(Amplitude)');
subplot(2,2,2)
imshow(sob,[]);
title('Filter in space domain');
subplot(2,2,3)
imshow(a);
title('Orginal Image');
subplot(2,2,4)
imshow(d);
title('Filtered image- Sobel Filter');
sgtitle('Sobel Filter');








