function [x] = algorytm(x)
    im2 = imread(x);
    im = rgb2gray(double(im2)/255);
    
    red3AvgWhiteInfluence = imbinarize(im2(:,:,1),0.95);
    green3AvgWhiteInfluence = imbinarize(im2(:,:,2),0.95);
    blue3AvgWhiteInfluence = imbinarize(im2(:,:,3),0.95);
    sumawr = sum(sum(red3AvgWhiteInfluence));
    sumawg = sum(sum(green3AvgWhiteInfluence));
    sumawb = sum(sum(blue3AvgWhiteInfluence));
    [wi, hi] = size(im);
    r = (mean2(im2(:,:,1)) - sumawr*255/(wi*hi))*(wi*hi)/(wi*hi-sumawr);
    g = (mean2(im2(:,:,2)) - sumawg*255/(wi*hi))*(wi*hi)/(wi*hi-sumawg);
    b = (mean2(im2(:,:,3)) - sumawb*255/(wi*hi))*(wi*hi)/(wi*hi-sumawb);
    x=[r,g,b];
end