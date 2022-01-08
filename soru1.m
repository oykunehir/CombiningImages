img1 = imread('Images/1-1.bmp');
img2 = imread('Images/1-2.bmp');
[rows, columns, numberOfColorChannelsOfFirstImage] = size(img1);
[rows, columns, numberOfColorChannelsOfSecondImage] = size(img2);
alpha = 0.3;
if numberOfColorChannelsOfFirstImage == 1 && numberOfColorChannelsOfSecondImage == 1
    disp("both images are gray scaled")
    for c = 1:columns
        for r = 1:rows
            newImage(r,c) = alpha*img1(r,c) + (1-alpha)*img2(r,c);
        end
    end
else 
    disp("not gray scaled")
    for c = 1:columns
        for r = 1:rows
            newImage(r,c,1) = alpha*img1(r,c,1) + (1-alpha)*img2(r,c,1);
            newImage(r,c,2) = alpha*img1(r,c,2) + (1-alpha)*img2(r,c,2);
            newImage(r,c,3) = alpha*img1(r,c,3) + (1-alpha)*img2(r,c,3);
        end
    end
end
imshow(newImage)