% Исходные данные
p = 251; q = 293;

a = 'ЗАЙЦЕВ ДАНИИЛ РОМАНОВИЧ'; % Исходное сообщение
disp(['Исходное сообщение: ', a]);
disp('Исходные данные:');
disp(['p = ', num2str(p)]);
disp(['q = ', num2str(q)]);

% Генерация ключей
disp('Ключи:');
[n, phi, e, d] = key_gen(p, q);
disp(['n = pq = ', num2str(n)]);
disp(['phi = (p - 1)(q - 1) = ', num2str(phi)]);
disp(['Закрытый ключ e = ', num2str(e)]);
disp(['Открытый ключ d = ', num2str(d)]);

% Кодирование сообщения
m = A44_to_Z44(a);
disp('Закодированное сообщение: ');
disp(m)

% Шифрование сообщения
c = shifr_rsa(m, d, n);
disp('Зашифрованное сообщение :')
disp(c);

% Дешифрования сообщения
m_ = deshifr_rsa(c, e, n);
disp('Дешифрованное сообщение:');
disp(m_);

% Декодирование сообщения
a_ = Z44_to_A44(m_);
disp('Декодированное сообщение: ')
disp(a_);
