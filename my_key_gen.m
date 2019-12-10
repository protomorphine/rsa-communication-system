function [n, phi, e, d] = my_key_gen(p, q)
% ������� ���������� ��������� ����� ��� ��������� RSA
% �������� ������ ������� ����������� � ������� 4.8
% ������� �������� � ������������ � �������� (15) ������� 4.8
%--------------------------------------------------------------------------
% ������� ���������:
%  p, q - ������� �����
%--------------------------------------------------------------------------
% �������� ���������:
%  n - ������������ p � q
%  phi - ������� ������ �� p � q
%  e - �������� ����������
%  d - �������� ����������
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