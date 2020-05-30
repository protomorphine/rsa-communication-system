function [c] = shifr_rsa(m, d, n)
% Функция шифрования сообщения по алгоритму RSA
% Алгоритм данной функции представлен в разделе 4.9
% Данная функция работает на основании формулы (18) раздела 4.9
%--------------------------------------------------------------------------
% Входные параметры:
%  m - исходное закодированное сообщение
%  d, n - открытые части ключей
%--------------------------------------------------------------------------
% Выходные параметры:
%  с - зашифрованное сообщение
%--------------------------------------------------------------------------
    c = zeros(1, length(m));
    for i=1:length(m)
        c(i) = my_stepen(m(i), d, n);
    end
end
