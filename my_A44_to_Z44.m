function [m] = my_A44_to_Z44(a)
% ������� ����������� ��������� ��������� � �������������� �������� Z44 
% �������� ������ ������ ������� ������� � ������� 4.1
% ������� �������� � ������������ � �������� (1) ������� 4.1.
% -------------------------------------------------------------------------
% ������� ���������:
% - a - �������� ���������
% -------------------------------------------------------------------------
% �������� ���������:
% - m - �������������� ���������
% -------------------------------------------------------------------------
    m = zeros(1, length(a));
    alphabet = '��������������������������������!?.,:;()""-';
    for i = 1:length(a)
        if a(i) == ' '
            m(i) = 0;
        else
            m(i) = find(alphabet==a(i));
        end 
    end
end