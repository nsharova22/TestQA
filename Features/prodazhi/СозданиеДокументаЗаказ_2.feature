#language: ru

@tree


Функционал: Создание заказа клиента

Как Менеджер по закупкам я хочу
создаить Заказ
чтобы отразить факт заказа клиентом товара

Контекст: 
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Создание заказа клиента

* Подготовка тестовых данных
	И ПодготовкаДанных

* Создание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'

* Заполнение шапки документа
	И ЗаполнениеШапкиЗаказа
	
* Проверка расчета количества
	И Проверка расчета итогового количества товаров Заказа

* Проведение и закрытие
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд