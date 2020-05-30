function [m] = A44_to_Z44(a)
% Функция кодирования исходного сообщения с использованием алфавита Z44 
% Алгоритм работы данной функции изложен в разделе 4.1
% Функция работает в соответствии с формулой (1) раздела 4.1.
% -------------------------------------------------------------------------
% Входные параметры:
% - a - исходное сообщение
% -------------------------------------------------------------------------
% Выходные параметры:
% - m - закодированное сообщение
% -------------------------------------------------------------------------
    m = zeros(1, length(a));
    alphabet = 'АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ!?.,:;()""-';
    for i = 1:length(a)
        if a(i) == ' '
            m(i) = 0;
        else
            m(i) = find(alphabet==a(i));
        end 
    end
end
