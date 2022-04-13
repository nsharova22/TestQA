﻿#language: ru

@tree

Функционал: Отчет Остатки

Как бухгалтер я хочу
посмотреть остатки товаров 
чтобы сверить БУ и ОУ 

Переменные:
СуммаИтого = "983,00";

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _0101 Подготовительный
	Когда Экспорт Основные Данные
	Когда Экспорт документов Поступление и Продажа  
	И я выполняю код встроенного языка на сервере 
		|'Документы.ПриходТовара.НайтиПоНомеру("000000001").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000035").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000030").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000044").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000028").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000051").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.РасходТовара.НайтиПоНомеру("000000015").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.РасходТовара.НайтиПоНомеру("000000102").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|

Сценарий: _0101 Проверка отчета Остатки	
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	И Пауза 20
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	Дано Табличный документ "Результат" равен макету "ОстаткиТоваровМакет" по шаблону
	//менее удобный способ
	//И в табличном документе "Результат" ячейка с адресом "R7C3" равна "$СуммаИтого$" по шаблону
	//И в табличном документе 'Результат' я перехожу к ячейке "R7C3"
	И я жду, что в табличном документе "Результат" ячейка "R10C3" станет равна "$СуммаИтого$" в течение 20 секунд
	И я закрываю все окна клиентского приложения
		
		
	