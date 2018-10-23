clc;clear;
close all
for i = 1:25
    result(i,:) = jiemi(i);
end

result % 第i行为编码逆位移动i个单位的解密结果