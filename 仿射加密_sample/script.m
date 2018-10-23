clc;clear
word = 'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ';
index = linspace(1,52,52);  % 定义编码

text = 'SECURITY';     %需要加密的字符
encoding = 'RXJFKZYH'; % 加密后的字符

len = length(text);

text_ind = zeros(1,len);
code_ind = zeros(1,len);

% 对每个字符编码，A?>0，...,Z->25
for i = 1:len
    for j = 1:26
        if text(i) == word(j)
            text_ind(i) = j-1;
        end
        
        if encoding(i) == word(j)
            code_ind(i) = j-1;
        end
        
    end
end

% 使用穷举法进行解方程
for i = 0:25
    for j = 0:25
        if mod(text(1)*i + j,26) == code_ind(1) && mod(text(2)*i + j,26) == code_ind(2)
            k1 = i;
            k2 = j;
            break
        end
    end
end

% part 2 对'VLXIJH' 解密
new_code = 'VLXIJH';
new_ind = zeros(1,length(new_code));

% 先对需要解密的字符编码
for i = 1:length(new_code)
    for j = 1:26
        if new_code(i) == word(j)
            new_ind(i) = j-1;
        end
    end
end

% 解密算法
org_ind = zeros(1,length(new_code))
for i = 1:length(new_code)
    org_ind(i) = mod(( new_ind(i) -k2 ) *15,26)
end

% 解出来后的编码数组反译成字符
for i = 1:length(new_code)
    cell(i) = word(org_ind(i)+1)  % 结果
end

