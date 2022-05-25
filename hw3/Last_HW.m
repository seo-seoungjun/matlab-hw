clc; clear all;

img = imread('coins.jpg');

gray = rgb2gray(img);

imgEdge = edge(gray, 'canny',0.3);

st = strel('disk',2);      

img1 = imdilate(imgEdge,st); 
img2 = imfill(img1, 'holes');

Label=bwlabel(img2,4);

coin1 = (Label == 1);
coin2 = (Label == 2);
coin3 = (Label == 3);
coin4 = (Label == 4);
coin5 = (Label == 5);

coin1Edge = edge(coin1,'canny',0.3);
coin2Edge = edge(coin2,'canny',0.3);
coin3Edge = edge(coin3,'canny',0.3);
coin4Edge = edge(coin4,'canny',0.3);
coin5Edge = edge(coin5,'canny',0.3);

[x1, y1]=find(coin1Edge==1);
[xc1,yc1,R1,a1]=circfit(x1,y1);

[x2, y2]=find(coin2Edge==1);
[xc2,yc2,R2,a2]=circfit(x2,y2);

[x3, y3]=find(coin3Edge==1);
[xc3,yc3,R3,a3]=circfit(x3,y3);

[x4, y4]=find(coin4Edge==1);
[xc4,yc4,R4,a4]=circfit(x4,y4);

[x5, y5]=find(coin5Edge==1);
[xc5,yc5,R5,a5]=circfit(x5,y5);

R=[R1 R2 R3 R4 R5];

sum = 0;

for i= 1:5
    if R(i)>70
        sum = sum + 100;
    else
        sum = sum + 50;
    end
end

disp(sum);
