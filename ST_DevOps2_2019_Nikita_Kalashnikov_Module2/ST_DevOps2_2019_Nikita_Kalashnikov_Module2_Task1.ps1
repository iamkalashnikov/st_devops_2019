# 1.	Получите справку о командлете справки
Get-Help Get-Help
# 2.	Пункт 1, но детальную справку, затем только примеры
Get-Help Get-Help -Full
Get-Help Get-Help -Examples
# 3.	Получите справку о новых возможностях в PowerShell 4.0 (или выше)
Get-Help about_Windows_PowerShell_5.0
# 4.	Получите все командлеты установки значений
Get-Help Set-*
# 5.	Получить список команд работы с файлами
Get-Help *file*
# 6.	Получить список команд работы с объектами
Get-Help *object
# 7.	Получите список всех псевдонимов
Get-Alias
# 8.	Создайте свой псевдоним для любого командлета
New-Alias date Get-Date
# 9.	Просмотреть список методов и свойств объекта типа процесс
Get-Process wininit | Get-Member -MemberType Property, Method
# 10.	Просмотреть список методов и свойств объекта типа строка
"Some String" | Get-Member -MemberType Property, Method
# 11.	Получить список запущенных процессов, данные об определённом процессе
Get-Process
Get-Process wininit
# 12.	Получить список всех сервисов, данные об определённом сервисе
Get-Service
Get-Service WinRM
# 13.	Получить список обновлений системы
Get-WmiObject -class win32_quickfixengineering
# 14.	Узнайте, какой язык установлен для UI Windows
Get-Culture
# 15.	Получите текущее время и дату
Get-Date
# 16.	Сгенерируйте случайное число (любым способом)
Get-Random
# 17.	Выведите дату и время, когда был запущен процесс «explorer». Получите какой это день недели. 
Get-Date (Get-Process explorer).StartTime
# 18.	Откройте любой документ в MS Word (не важно как) и закройте его с помощью PowerShell
$Word = New-Object -ComObject Word.Application
$Word.Visible = $true
$Word.Documents.Open('D:\wordfile.docx')
$Word.Documents.Close()
# 19.	Подсчитать значение выражения S. N – изменяемый параметр. Каждый шаг выводить в виде строки. (Пример: На шаге 2 сумма S равна 9)
$i=1; $S=0
Do {
    $S = $S + ($i*3)
    Write-Host "На шаге $i сумма S равна $S"
    $i++
    }
While ($i -le 5)
# 20.	Напишите функцию для предыдущего задания. Запустите её на выполнение.
function S([int32]$n){
    $i=1; $S=0
    Do {
        $S = $S + ($i*3)
        Write-Host "На шаге $i сумма S равна $S"
        $i++
    }
    While ($i -le $n)
}
S(5)