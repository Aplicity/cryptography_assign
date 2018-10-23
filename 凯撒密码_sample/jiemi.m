
function cell = jiemi(n)
text = 'IWXHXHPHTRGTI'; % 需要解密的字符
len = length(text);

word = 'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ';
index = linspace(1,52,52);

encode = zeros(1,len);

% 对解密的字符编码
for i = 1:len
    for j = 27:52
        if text(i) == word(j)
            encode(i) = j;
        end
    end
end

% 编码逆位移动n个单位
tran = encode -n ; 
for i = 1:len
    for j =1:52
        if tran(i) == index(j)
            cell(i) = word(j);
        end
    end
end

           
            
    
    