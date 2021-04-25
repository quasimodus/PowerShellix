Кракозябры в PowerShell
--------------------------
Смена кодировки на 866 если кракозябры
Заупстить команду в повершел -

[Console]::outputEncoding = [System.Text.Encoding]::GetEncoding('cp866')

Получим ошибку дескриптора
Затем запустить пинг, чтобы получить кракозябры
Затем попробовать снова, должно заработать
---------
https://administra.top/powershell-ispravit-shrift-v-konsoli-ise/
