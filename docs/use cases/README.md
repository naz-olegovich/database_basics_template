# Модель прецедентів

<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/diagam1.plum" /></p>

#### Сценарій №1

***ID:*** UC.001
       
***НАЗВА:*** Реєстрація

***УЧАСНИКИ:*** Гість, Система

***ПЕРЕДУМОВИ:*** Відстуні

***РЕЗУЛЬТАТ:*** Неактивований обліковий запис

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - EХ.001 Обліковий запис зареєстрований на введну пошту вже існує
 - EХ.002 Повторно введений пароль не збігається

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC001](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC001)


#### Сценарій №2

***ID:*** UC.002
       
***НАЗВА:*** Активація облікового запису

***УЧАСНИКИ:*** Гість, Система

***ПЕРЕДУМОВИ:*** Створений неактивований обліковий запис

***РЕЗУЛЬТАТ:*** Активований обліковий запис

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутні

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC001](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC0011)


#### Сценарій №3

***ID:*** UC.003
       
***НАЗВА:*** Створити замовлення

***УЧАСНИКИ:*** Користувач, Система

***ПЕРЕДУМОВИ:*** Користувач має обліковий запис

***РЕЗУЛЬТАТ:*** Створене замовлення

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутні

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC002)

#### Сценарій №4

***ID:*** UC.004
       
***НАЗВА:*** Авторизація

***УЧАСНИКИ:*** Система, користувач

***ПЕРЕДУМОВИ:*** Відсутні

***РЕЗУЛЬТАТ:*** Доступ до облікового запису

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - EХ.004 Відсутній обліковий запис
 - EХ.005 Невірний пароль

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC003)
<hr>

<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/User_usecase_overview" />
</p>

#### Сценарій №5

***ID:*** UC.005
       
***НАЗВА:*** Перегляд результатів

***УЧАСНИКИ:*** Користувач, Система

***ПЕРЕДУМОВИ:*** Замовлення вибране

***РЕЗУЛЬТАТ:*** Звіт

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - EХ.006 Звіт не зроблено

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC004)


#### Сценарій №6

***ID:*** UC.006
       
***НАЗВА:***  Вибір формату

***УЧАСНИКИ:*** Користувач, Система

***ПЕРЕДУМОВИ:*** Звіт вибрано

***РЕЗУЛЬТАТ:*** Звіт у вибраному форматі

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 Відсутні

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC005)
<hr>


<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/Admin_usecase_overview" />
</p>

#### Сценарій №7

***ID:*** UC.007
       
***НАЗВА:*** Перегляд налаштувань бітів

***УЧАСНИКИ:*** Адміністратор, Система

***ПЕРЕДУМОВИ:*** Відсутні

***РЕЗУЛЬТАТ:*** Перелік бітів

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- Відсутні 

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC006)


#### Сценарій №8

***ID:*** UC.008
       
***НАЗВА:*** Створити екземпляр бітів

***УЧАСНИКИ:*** Адміністратор, Система

***ПЕРЕДУМОВИ:*** Відсутні

***РЕЗУЛЬТАТ:*** Створений біт

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- відстуні

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC007)


#### Сценарій №9

***ID:*** UC.009
       
***НАЗВА:*** Видалити еземпляр бітів

***УЧАСНИКИ:*** Адміністратор, Система

***ПЕРЕДУМОВИ:*** Біт вибрано

***РЕЗУЛЬТАТ:*** Біт видалено

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутні
 
***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC008)


#### Сценарій №10

***ID:*** UC.010
       
***НАЗВА:*** Налаштувати фільтри

***УЧАСНИКИ:*** Адміністратор, Система

***ПЕРЕДУМОВИ:*** Відсутні

***РЕЗУЛЬТАТ:*** Шаблони створені

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутні
 
***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC0081)


#### Сценарій №11

***ID:*** UC.011
       
***НАЗВА:*** Налаштувати порти входу і виходу

***УЧАСНИКИ:*** Адміністратор, Система

***ПЕРЕДУМОВИ:*** Відсутні

***РЕЗУЛЬТАТ:*** Збережені дані

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутні
 
***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC0082)



<hr>

<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/Analyst_usecase_overview" />
</p>

#### Сценарій №12

***ID:*** UC.012
       
***НАЗВА:*** Перегляд сховища

***УЧАСНИКИ:*** Аналітик, Cистема

***ПЕРЕДУМОВИ:*** Наявність замовлення

***РЕЗУЛЬТАТ:*** Перелік зібраної інформації

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутні

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC009)

#### Сценарій №13

***ID:*** UC.013
       
***НАЗВА:*** Задання ключових слів відбору

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність замовлення

***РЕЗУЛЬТАТ:***  Відібрана інформація

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- Відсутні


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC010)

<hr>

<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/Analyst_usecase2_overview" />
</p>

#### Сценарій №14

***ID:*** UC.014
       
***НАЗВА:*** Структуруванння інформації

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність інформації

***РЕЗУЛЬТАТ:***  Структурована інформація

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- Відсутні


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC011)

#### Сценарій №15

***ID:*** UC.015
       
***НАЗВА:*** Надіслати звіт

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність готового звіту

***РЕЗУЛЬТАТ:***  Користувач отримав звіт

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- Відсутні


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC012)

#### Сценарій №16

***ID:*** UC.016
       
***НАЗВА:*** Побудувати графік

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність даних

***РЕЗУЛЬТАТ:***  Відображений графік

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- EX.008 Некорректно задані дані для побудови


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC013)

#### Сценарій №17

***ID:*** UC.017
       
***НАЗВА:*** Побудовати діаграму

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність даних

***РЕЗУЛЬТАТ:***  Відображена діаграма

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- EX.008


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC014)

#### Сценарій №18

***ID:*** UC.018
       
***НАЗВА:*** Побудувати таблицю

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність даних

***РЕЗУЛЬТАТ:***  Відображена таблиця

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- EX.008


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC015)


