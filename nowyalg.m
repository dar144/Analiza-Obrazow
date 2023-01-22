function [nn] = nowyalg() 
    clear;clc; close all;
    
    e1 = algorytm('img/eu1.jpg')
    e2 = algorytm('img/eu2.jpg');
    e3 = algorytm('img/eu3.png');
    e4 = algorytm('img/eu4.jpg');
    e5 = algorytm('img/eu5.png');
    e7 = algorytm('img/eu7.png');
    e8 = algorytm('img/eu8.png');
    e9 = algorytm('img/eu9.png');
    e10 = algorytm('img/eu10.png');
    e11 = algorytm('img/eu11.png');
    e12 = algorytm('img/eu12.png');
    e13 = algorytm('img/eu13.png');
    e14 = algorytm('img/eu14.png');
    e15 = algorytm('img/eu15.png');
    e16 = algorytm('img/eu16.png');
    e17 = algorytm('img/eu17.png');
    e20 = algorytm('img/eu20.png');
    e21 = algorytm('img/eu21.png');
%     e22 = algorytm('img/eu22.png'); TEST
    
    af1 = algorytm('img/af1.jpg');
    af2 = algorytm('img/af2.png');
    af3 = algorytm('img/af3.png');
    af4 = algorytm('img/af4.png');
    af5 = algorytm('img/af5.png');
    af6 = algorytm('img/af6.png');
    af7 = algorytm('img/af7.png');
    af8 = algorytm('img/af8.png');
    af9 = algorytm('img/af9.png');
    af10 = algorytm('img/af10.png');
    af11 = algorytm('img/af11.png');
%     af12 = algorytm('img/test.png'); TEST
    
%     ind1 = algorytm('img/ind1.jpg'); TEST
    ind3 = algorytm('img/ind3.png');
    ind4 = algorytm('img/ind4.png');
    ind5 = algorytm('img/ind5.png');
    ind7 = algorytm('img/ind7.jpg');
    ind8 = algorytm('img/ind8.png');
    ind9 = algorytm('img/ind9.png');
    ind10 = algorytm('img/ind10.png');
    ind11 = algorytm('img/ind11.png');
    ind12 = algorytm('img/ind12.png');
    
    az1 = algorytm('img/az1.png');
    az2 = algorytm('img/az2.png');
%     az3 = algorytm('img/az3.png'); TEST
    az4 = algorytm('img/az4.png');
    az5 = algorytm('img/az5.png');
    az6 = algorytm('img/az6.png');
    az7 = algorytm('img/az7.png');
    az8 = algorytm('img/az8.png');
    az10 = algorytm('img/az10.png');
    
    
    outputeu=[ones(1,18);zeros(1,18);zeros(1,18);zeros(1,18)];
    outputaf=[zeros(1,10);ones(1,10);zeros(1,10);zeros(1,10)];
    outputin=[zeros(1,10);zeros(1,10);ones(1,10);zeros(1,10)];
    outputaz=[zeros(1,8);zeros(1,8);zeros(1,8);ones(1,8)];
    
    eu = [e1;e2;e3;e4;e5;e7;e8;e9;e10;e11;e12;e13;e14;e15;e16;e17;e20;e21];
    af = [af1;af2;af3;af4;af5;af6;af7;af8;af9;af10];
    in = [ind3;ind4;ind5;af11;ind7;ind8;ind9;ind10;ind11;ind12];
    az = [az1;az2;az4;az5;az6;az7;az8;az10];
    
    nn = feedforwardnet;
    nn.trainParam.showWindow = false;
    nn = train(nn,[eu',af',in',az'],[outputeu,outputaf,outputin,outputaz]);
    
end


