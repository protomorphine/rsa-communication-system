function [r] = mut_simple(a)
% Функция определения взаимно простого числа с a
% Алгоритм работы данной фукции представлен в разделе 4.3
% Функция работает в соответствии с формулой (4) раздела 4.3
% -------------------------------------------------------------------------
% Входные параметры:
% - a - натуральное число
% -------------------------------------------------------------------------
% Выходные параметры:
% - e - взаимнопрострое число с a
% -------------------------------------------------------------------------
 
    for r = 2:a
        if my_classic_Euclid(a,r) == 1
            break
        end
    end
end
