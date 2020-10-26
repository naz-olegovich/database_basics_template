# Модель прецедентів

<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/diagam1.plum" /></p>

#### Сценарій №1

***ID:*** UC.001
       
***НАЗВА:*** Реєстрація

***УЧАСНИКИ:*** Гість, Система

***ПЕРЕДУМОВИ:*** Відстуні

***РЕЗУЛЬТАТ:*** Новий обліковий запис

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - EХ.001 Обліковий запис зареєстрований на введну пошту вже існує
 - EХ.002 Повторно введений пароль не збігається
 - EХ.003 Користувач не підтвердив пошту

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC001](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC001)


#### Сценарій №2

***ID:*** UC.002
       
***НАЗВА:*** Створити замовлення

***УЧАСНИКИ:*** Користувач, Система

***ПЕРЕДУМОВИ:*** Користувач має обліковий запис

***РЕЗУЛЬТАТ:*** Створене замовлення

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутні

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC002)

#### Сценарій №3

***ID:*** UC.003
       
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

#### Сценарій №4

***ID:*** UC.004
       
***НАЗВА:*** Перегляд результатів

***УЧАСНИКИ:*** Користувач, Система

***ПЕРЕДУМОВИ:*** Наявність замовлення

***РЕЗУЛЬТАТ:*** Звіт

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - EХ.006 Звіт не зроблено

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC004)


#### Сценарій №5

***ID:*** UC.005
       
***НАЗВА:***  Вибір формату

***УЧАСНИКИ:*** Користувач, Система

***ПЕРЕДУМОВИ:*** Наявність звіту

***РЕЗУЛЬТАТ:*** Звіт у вибраному форматі

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 Відсутні

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC005)
<hr>


<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/Admin_usecase_overview" />
</p>

#### Сценарій №6

***ID:*** UC.006
       
***НАЗВА:*** Перегляд налаштувань

***УЧАСНИКИ:*** Адміністратор, Система

***ПЕРЕДУМОВИ:*** Відсутні

***РЕЗУЛЬТАТ:*** Перелік джерел для пошуку

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- Відсутні 

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC006)


#### Сценарій №7

***ID:*** UC.007
       
***НАЗВА:*** Додати джерело

***УЧАСНИКИ:*** Адміністратор, Система

***ПЕРЕДУМОВИ:*** Відсутні

***РЕЗУЛЬТАТ:*** Додане джерело для пошуку

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- EХ.007 Джерела не існує

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC007)

#### Сценарій №8

***ID:*** UC.008
       
***НАЗВА:*** Видалити джерело

***УЧАСНИКИ:*** Адміністратор, Система

***ПЕРЕДУМОВИ:*** Джерело наявне

***РЕЗУЛЬТАТ:*** : Джерело видалене

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутні
 
***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC008)



<hr>

<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/Analyst_usecase_overview" />
</p>

#### Сценарій №9

***ID:*** UC009
       
***НАЗВА:*** Перегляд сховища

***УЧАСНИКИ:*** Аналітик, Cистема

***ПЕРЕДУМОВИ:*** Наявність замовлення

***РЕЗУЛЬТАТ:*** Перелік зібраної інформації

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутні

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC009)

#### Сценарій №10

***ID:*** UC010
       
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

#### Сценарій №11

***ID:*** UC011
       
***НАЗВА:*** Структуруванння інформації

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність інформації

***РЕЗУЛЬТАТ:***  Структурована інформація

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- Відсутні


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC011)

#### Сценарій №12

***ID:*** UC012
       
***НАЗВА:*** Надіслати звіт

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність готового звіту

***РЕЗУЛЬТАТ:***  Користувач отримав звіт

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- Відсутні


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC012)

#### Сценарій №13

***ID:*** UC013
       
***НАЗВА:*** Побудувати графік

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність даних

***РЕЗУЛЬТАТ:***  Відображений графік

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- EX.008 Некорректно задані дані для побудови


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC013)

#### Сценарій №14

***ID:*** UC014
       
***НАЗВА:*** Побудовати діаграму

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність даних

***РЕЗУЛЬТАТ:***  Відображена діаграма

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- EX.008


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC014)

#### Сценарій №15

***ID:*** UC015
       
***НАЗВА:*** Побудувати таблицю

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Наявність даних

***РЕЗУЛЬТАТ:***  Відображена таблиця

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- EX.008


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![UC002](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/UC015)


