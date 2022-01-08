# Combining Images 
An output image will be created by combining 2 images of the same size taken as input in certain proportions. In the case where all images are gray-scale, the first input image is F and the second input image is B, the output image C is obtained as follows:

	C = ⍺F + (1-⍺)B

Here, α is a real number in the range [0,1]. In other words, the value of each pixel in the (x,y) position in the C output is formed by taking the value α from the F image and (1-α) from the B image. In this way, basic level images are combined and the first step of many computer vision and image processing applications is obtained.

In the case of using color images, the output image is created by applying the process given in the following equation separately to the RGB channels.

	[Cr ; Cg ; Cb] = ⍺[Fr ; Fg ; Fb] + (1-⍺)[Br ; Bg ; Bb]
	
## Results
⍺ = 0.3|  ⍺ = 0.9
:-------------------------:|:-------------------------:
![](https://iili.io/YrSMYP.png)  |  ![](https://iili.io/YrSG3B.png)