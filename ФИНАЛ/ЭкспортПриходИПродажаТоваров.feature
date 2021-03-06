#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Экспорт документов Поступление и Продажа

Сценарий: Экспорт документов Поступление и Продажа

	// Документ.ПриходТовара

	И я проверяю или создаю для документа "ПриходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Поставщик'                                                              | 'Склад'                                                             | 'Валюта'                                                            | 'Организация'                                                            |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db8c51bbb079b0' | 'False'           | '000000001' | '23.06.2020 3:03:04'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca1000d8843cd1b11dc8eb360f70b4e' | 'False'           | '000000035' | '30.06.2020 22:31:57' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca0000d8843cd1b11dc8d043d710078' | 'False'           | '000000030' | '29.07.2020 19:06:18' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'False'           | '000000044' | '18.08.2020 20:20:14' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | ''                                                                  | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca0000d8843cd1b11dc8cfecc6a7df9' | 'False'           | '000000028' | '27.08.2020 3:51:56'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |
		| 'e1cib/data/Документ.ПриходТовара?ref=bbf30050ba5c887711e1fe6f82f0356d' | 'False'           | '000000051' | '14.12.2020 20:28:00' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db8c51bbb079b0' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079af' | 2700   | 1            | 2700    |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db8c51bbb079b0' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8e8bd1cb82af' | 1500   | 2            | 3000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca1000d8843cd1b11dc8eb360f70b4e' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 150    | 30           | 4500    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca0000d8843cd1b11dc8d043d710078' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077' | 15     | 300          | 4500    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=a9bc00055d49b45e11dbc8caefc3ed8f' | 30     | 100          | 3000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 150    | 100          | 15000   |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df5' | 45     | 100          | 4500    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=a9bc00055d49b45e11dbc8caefc3ed8f' | 30     | 100          | 3000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 150    | 100          | 15000   |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df5' | 45     | 100          | 4500    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca0000d8843cd1b11dc8cfecc6a7df9' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df3' | 1000   | 50           | 50000   |
		| 'e1cib/data/Документ.ПриходТовара?ref=bbf30050ba5c887711e1fe6f82f0356d' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 3            | 13500   |

	// Документ.РасходТовара

	И я проверяю или создаю для документа "РасходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                                             | 'ОбоснованиеОтгрузки' | 'Организация'                                                            |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fde' | 'False'           | '000000015' | '14.12.2020 17:58:12' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4234' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c69' | 'False'           | '000000102' | '16.12.2020 8:28:01'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a8' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fde' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 300    | 1            | 300     |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fde' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 2            | 9000    |
		| 'e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c69' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 10000  | 1            | 10000   |
		| 'e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c69' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 300    | 1            | 300     |


