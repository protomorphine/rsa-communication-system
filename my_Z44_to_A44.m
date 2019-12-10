function [a] = my_Z44_to_A44(m)
% ������� ������������� ��������� ��������� � �������������� �������� Z44
% �������� ������ ������� �������� � ������� 4.11
% ������� �������� � ������������ � �������� (22) ������� 4.11
% -------------------------------------------------------------------------
% ������� ���������:
%  m - �������������� ���������
% -------------------------------------------------------------------------
% �������� ���������:
%  a - �������������� ���������
% -------------------------------------------------------------------------
    a = blanks(length(m));
    alphabet = '��������������������������������!?.,:;()""-';
    for i = 1:length(m)
        if m(i) == 0
            a(i) = ' ';
        else
            a(i) = alphabet(m(i));
        end
    end
end