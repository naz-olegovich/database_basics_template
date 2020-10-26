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

### Аналітик

#### Сценарій №1

***ID:*** UC.041
       
***НАЗВА:*** Перегляд сховища

***УЧАСНИКИ:*** Аналітик, сховище

***ПЕРЕДУМОВИ:*** Інформація наявна у сховищи

***РЕЗУЛЬТАТ:*** Знайдена необхідна інформація

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутність інформації у сховищі

***ОСНОВНИЙ СЦЕНАРІЙ:*** 
1. Аналітик відкриває інтерфейс для роботи із сховищем
2. Аналізує інформацію
3. Відбирає інформацію для подальшої обробки


#### Сценарій №2

***ID:*** UC.042
       
***НАЗВА:*** Задання ключових слів відбору

***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Користувач чітко сформув свої вимоги

***РЕЗУЛЬТАТ:***  Відфільтрована іонформація

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - Відсутність інформації у сховищі
 - Відсутність чітко сформульованих вимог користувача

***ОСНОВНИЙ СЦЕНАРІЙ:*** 
1. Аналітик відкриває інтерфейс пошуку
2. Аналізує вводить ключові слова відбору
3. Аналітик отримує потрібну інформацію


<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/Analyst_usecase_overview" />
</p>
<hr>

<p align="center">
<img src = "http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/naz-olegovich/media_content_analysis_system/master/src/uml/Analyst_usecase2_overview" />
</p>
<hr>

