
%importing the image
in_m = imread('cameraman.tif');
imshow(in_m);

%downsizing the image 1/2 , 1/4 and 1/8 with antialiasing 
Ds1 = imresize(in_m, 1/2, 'Antialiasing', true);
Ds2 = imresize(in_m, 1/4, 'Antialiasing', true);
Ds3 = imresize(in_m, 1/8, 'Antialiasing', true);

%downsizing the image 1/2 , 1/4 and 1/8 without antialiasing 
Ds4 = imresize(in_m, 1/2, 'Antialiasing', false);
Ds5 = imresize(in_m, 1/4, 'Antialiasing', false);
Ds6 = imresize(in_m, 1/8, 'Antialiasing', false);

%upsampling the image 2 , 4 and 8 with nearest bilinear bicubic
%interpolations
Us1n = imresize(Ds1, 2, 'nearest');
Us1b = imresize(Ds1, 2, 'bilinear');
Us1c = imresize(Ds1, 2, 'bicubic');

Us2n = imresize(Ds2, 4, 'nearest');
Us2b = imresize(Ds2, 4, 'bilinear');
Us2c = imresize(Ds2, 4, 'bicubic');

Us3n = imresize(Ds3, 8, 'nearest');
Us3b = imresize(Ds3, 8, 'bilinear');
Us3c = imresize(Ds3, 8, 'bicubic');

Us4n = imresize(Ds4, 2, 'nearest');
Us4b = imresize(Ds4, 2, 'bilinear');
Us4c = imresize(Ds4, 2, 'bicubic');

Us5n = imresize(Ds5, 4, 'nearest');
Us5b = imresize(Ds5, 4, 'bilinear');
Us5c = imresize(Ds5, 4, 'bicubic');

Us6n = imresize(Ds6, 8, 'nearest');
Us6b = imresize(Ds6, 8, 'bilinear');
Us6c = imresize(Ds6, 8, 'bicubic');

imshow(Us6c);

%Calculating the MSE
err = immse(Us6c, in_m); %here we put the final images example Us6c,Us1n,Us3b ets
  
fprintf('\n The mean-squared error is %0.4f', err);







