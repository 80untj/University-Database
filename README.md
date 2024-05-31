
1. Анализ предметной области и выявление необходимого набора сущностей

Проект начинается с анализа предметной области университета. Основные сущности, необходимые для управления университетом, включают:

•	Студенты
•	Преподаватели
•	Курсы
•	Факультеты
•	Группы
•	Учебные планы
•	Расписание занятий

2. Построение схемы реляционной БД

2.1 Построение набора необходимых отношений базы данных

Для каждой сущности были определены отношения и атрибуты, которые должны быть включены в базу данных. Это включает в себя:

•	Студенты (ID, имя, фамилия, дата рождения, факультет, группа)
•	Преподаватели (ID, имя, фамилия, должность, факультет)
•	Курсы (ID, название, описание, факультет, преподаватель)
•	Факультеты (ID, название, декан)
•	Группы (ID, название, факультет)
•	Учебные планы (ID, курс, группа, расписание)
•	Расписание занятий (ID, курс, преподаватель, время, аудитория)

2.2 Задание первичных и внешних ключей определённых отношений

Для обеспечения целостности данных были определены первичные и внешние ключи:

•	Студенты: ID (первичный ключ), факультет (внешний ключ), группа (внешний ключ)
•	Преподаватели: ID (первичный ключ), факультет (внешний ключ)
•	Курсы: ID (первичный ключ), факультет (внешний ключ), преподаватель (внешний ключ)
•	Факультеты: ID (первичный ключ)
•	Группы: ID (первичный ключ), факультет (внешний ключ)
•	Учебные планы: ID (первичный ключ), курс (внешний ключ), группа (внешний ключ)
•	Расписание занятий: ID (первичный ключ), курс (внешний ключ), преподаватель (внешний ключ)

2.3 Приведение отношений БД к третьей нормальной форме

Каждое отношение было проверено и приведено к третьей нормальной форме (3НФ) для минимизации избыточности и предотвращения аномалий обновления.

2.4 Определение ограничений целостности для внешних ключей отношений и для отношений в целом

Были определены ограничения целостности для всех внешних ключей, чтобы гарантировать правильные связи между сущностями:

•	Студенты -> Факультеты (факультет)
•	Студенты -> Группы (группа)
•	Преподаватели -> Факультеты (факультет)
•	Курсы -> Факультеты (факультет)
•	Курсы -> Преподаватели (преподаватель)
•	Группы -> Факультеты (факультет)
•	Учебные планы -> Курсы (курс)
•	Учебные планы -> Группы (группа)
•	Расписание занятий -> Курсы (курс)
•	Расписание занятий -> Преподаватели (преподаватель)

2.5 Графическое представление связей между внешними и первичными ключами

Для визуализации связей между сущностями была создана диаграмма, показывающая все внешние и первичные ключи и их связи. Ссылка на диаграмму: https://drawsql.app/teams/og-5/diagrams/informacionnaya-sistema-vuza-2-0

3. Создание спроектированной базы данных

На основе разработанной схемы была создана база данных в MySQL. Для этого были написаны скрипты, создающие таблицы с заданными первичными и внешними ключами, а также устанавливающие ограничения целостности.

4. Запись выражений, указанных в варианте задания на языке SQL

Для выполнения различных операций с данными были разработаны SQL-запросы. Эти запросы включают:

•	Добавление новых студентов, преподавателей, курсов и других сущностей
•	Обновление информации о студентах, преподавателях и курсах
•	Удаление записей
•	Получение отчетов и статистики по различным параметрам
•	Выполнение сложных выборок с использованием JOIN, GROUP BY и других конструкций SQL

Этот проект обеспечивает эффективное управление базой данных университета, облегчая администрирование и управление учебным процессом.
