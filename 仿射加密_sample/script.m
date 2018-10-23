clc;clear
word = 'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ';
index = linspace(1,52,52);  % �������

text = 'SECURITY';     %��Ҫ���ܵ��ַ�
encoding = 'RXJFKZYH'; % ���ܺ���ַ�

len = length(text);

text_ind = zeros(1,len);
code_ind = zeros(1,len);

% ��ÿ���ַ����룬A?>0��...,Z->25
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

% ʹ����ٷ����нⷽ��
for i = 0:25
    for j = 0:25
        if mod(text(1)*i + j,26) == code_ind(1) && mod(text(2)*i + j,26) == code_ind(2)
            k1 = i;
            k2 = j;
            break
        end
    end
end

% part 2 ��'VLXIJH' ����
new_code = 'VLXIJH';
new_ind = zeros(1,length(new_code));

% �ȶ���Ҫ���ܵ��ַ�����
for i = 1:length(new_code)
    for j = 1:26
        if new_code(i) == word(j)
            new_ind(i) = j-1;
        end
    end
end

% �����㷨
org_ind = zeros(1,length(new_code))
for i = 1:length(new_code)
    org_ind(i) = mod(( new_ind(i) -k2 ) *15,26)
end

% �������ı������鷴����ַ�
for i = 1:length(new_code)
    cell(i) = word(org_ind(i)+1)  % ���
end

