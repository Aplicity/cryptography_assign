
function cell = jiemi(n)
text = 'IWXHXHPHTRGTI'; % ��Ҫ���ܵ��ַ�
len = length(text);

word = 'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ';
index = linspace(1,52,52);

encode = zeros(1,len);

% �Խ��ܵ��ַ�����
for i = 1:len
    for j = 27:52
        if text(i) == word(j)
            encode(i) = j;
        end
    end
end

% ������λ�ƶ�n����λ
tran = encode -n ; 
for i = 1:len
    for j =1:52
        if tran(i) == index(j)
            cell(i) = word(j);
        end
    end
end

           
            
    
    