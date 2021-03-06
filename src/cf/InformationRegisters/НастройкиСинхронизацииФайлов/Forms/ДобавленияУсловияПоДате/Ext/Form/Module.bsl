﻿#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Если Не Параметры.Свойство("МассивЗначений") Тогда // Возврат, если нет реквизитов с типом дата.
		Возврат;
	КонецЕсли;
	
	ЕстьТолькоОдинРеквизит = Параметры.МассивЗначений.Количество() = 1;
	
	Для Каждого Реквизит Из Параметры.МассивЗначений Цикл
		Элементы.РеквизитСТипомДата.СписокВыбора.Добавить(Реквизит.Значение, Реквизит.Представление);
		Если ЕстьТолькоОдинРеквизит Тогда
			РеквизитСТипомДата = Реквизит.Значение;
		КонецЕсли;
	КонецЦикла;
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура ОК(Команда)
	
	СтруктураРезультат = Новый Структура();
	СтруктураРезультат.Вставить("ИнтервалИсключение", ИнтервалИсключение);
	СтруктураРезультат.Вставить("РеквизитСТипомДата", РеквизитСТипомДата);
	
	ОповеститьОВыборе(СтруктураРезультат);

КонецПроцедуры

#КонецОбласти