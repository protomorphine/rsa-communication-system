function [n, phi, e, d] = key_gen(p, q)
% Функция вычисления открытого ключа для алгоритма RSA
% Алгоритм работы функции представлен в разделе 4.8
% Функция работает в соответствии с формулой (15) раздела 4.8
%--------------------------------------------------------------------------
% Входные параметры:
%  p, q - простые числа
%--------------------------------------------------------------------------
% Выходные параметры:
%  n - произведение p и q
%  phi - функция Эйлера от p и q
%  e - закрытая экспонента
%  d - открытая экспонента
%--------------------------------------------------------------------------
    n = p*q;
    phi = (p-1)*(q-1);
    k_min = 0; k_max = phi;
    d0 = k_min;
    d = k_min + fix((k_max - k_min) * rand);
    while d == d0 || my_classic_Euclid(d, phi) ~= 1
        d = k_min + fix((k_max - k_min) * rand);
    end
    e = my_inv_mod(d, phi);
end