# cryptography_assign
密码学初探

## 凯撒密码
　凯撒加密法的替换方法是通过排列明文和密文字母表，密文字母表示通过将明文字母表向左或向右移动一个固定数目的位置。例如，当偏移量是左移3的时候（解密时的密钥就是3）：
 
　　明文字母表：ABCDEFGHIJKLMNOPQRSTUVWXYZ
  
　　密文字母表：DEFGHIJKLMNOPQRSTUVWXYZABC
  
## 仿射加密
在仿射加密法中，字母表的字母被赋予一个数字，例如a=0，b=1，c=2…z=25。仿射加密法的密钥为0-25直接的数字对。
仿射加密法与单码加密法没什么不同，因为明文的每个字母分别只映射到一个密文字母。仿射密码的加密算法就是一个线性变换，即对任意的明文字符x，对应的密文字符为y = e(x) = ax+b(mod 26) ，其中，a,b∈Z26，且要求gcd(a,26)=1,函数e(x)称为仿射加密函数。
