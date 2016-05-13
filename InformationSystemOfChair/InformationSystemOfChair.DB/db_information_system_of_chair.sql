﻿CREATE DATABASE db_information_system_of_chair;

USE db_information_system_of_chair;

CREATE TABLE Institute
(
InstituteID int identity(1,1) primary key,
Name varchar(100) not null
);


INSERT INTO Institute(Name) 
VALUES 
('Навчально-науковий інститут автоматики, кібернетики та обчислювальної техніки');

SELECT * FROM Institute;
SELECT * FROM Shedule;

INSERT INTO InstituteGroup(Name,InstituteID)
VALUES
('ПМ-21',1),
('ПМ-31',1);


CREATE TABLE InstituteGroup
(
InstituteGroupID int identity(1,1) primary key,
Name varchar(100) not null,
InstituteID int foreign key references Institute(InstituteID)
);


CREATE TABLE Shedule
(
SheduleID int identity(1,1) primary key,
InstituteGroup int foreign key references InstituteGroup(InstituteGroupID),
ClassNumber int not null,
DayOfWeek int not null,
ClassName varchar(100) not null,
ClassRoom varchar(20) not null,
ProfessorID int foreign key references Professor(ProfessorID),
IsNumerator bit not null
);

DROP TABLE Shedule;



INSERT INTO Shedule(InstituteGroup,ClassNumber,DayOfWeek,ClassName,ClassRoom,ProfessorID,IsNumerator) VALUES 
(1,3,1,'Філософія (ПрС)','666',(SELECT ProfessorID FROM Professor WHERE FullName = 'Храпко Павло Юрійович'),1),
(1,4,1,'Математичний аналіз (П)','684',(SELECT ProfessorID FROM Professor WHERE FullName = 'Кушнір Олександр Олегович'),1),
(1,5,1,'Функціональний аналіз (Л)','666',(SELECT ProfessorID FROM Professor WHERE FullName = 'Гладун Любомир Володимирович'),1),
(1,3,2,'Фізичне виховання','Спорт-корпус',null,1),
(1,4,2,'Диференціальні рівняння (Л)','685',(SELECT ProfessorID FROM Professor WHERE FullName = 'Гладун Любомир Володимирович'),1),
(1,5,2,'Теорія ймовірності (Л)','413',(SELECT ProfessorID FROM Professor WHERE FullName = 'Прищепа Оксана Володимирівна'),1),
(1,2,3,'Об`єктно-орієнтоване програмування (Л)','147',(SELECT ProfessorID FROM Professor WHERE FullName = 'Жуковський Віктор Володимирович'),1),
(1,3,3,'Програмування та підтримка веб-застосувань (Л)','140',(SELECT ProfessorID FROM Professor WHERE FullName = 'Степанченко Ольга Миколаївна'),1),
(1,4,3,'Теорія ймовірності (ПрС)','147',(SELECT ProfessorID FROM Professor WHERE FullName = 'Прищепа Оксана Володимирівна'),1),
(1,2,4,'Об`єктно-орієнтоване програмування (Лаб)','141б',(SELECT ProfessorID FROM Professor WHERE FullName = 'Бабич С В'),1),
(1,3,4,'Математичний аналіз (Л)','646',(SELECT ProfessorID FROM Professor WHERE FullName = 'Кушнір Олександр Олегович'),1),
(1,4,4,'Фізичне виховання','Спорт-корпус',null,1),
(1,4,5,'Філософія (Л)','673',(SELECT ProfessorID FROM Professor WHERE FullName = 'Сарнавська Оксана В`ячеславівна'),1),
(1,5,5,'Об`єктно-орієнтоване програмування (Л)','141б',(SELECT ProfessorID FROM Professor WHERE FullName = 'Бабич С В'),1),

(1,2,1,'Методи обчислень (Лаб)(підгр. 2)','139б',(SELECT ProfessorID FROM Professor WHERE FullName = 'Цвєткова Тетяна Павлівна'),0),
(1,2,1,'Програмування та підтримка веб-застосувань (Лаб)(підгр. 3)','144',(SELECT ProfessorID FROM Professor WHERE FullName = 'Степанченко Ольга Миколаївна'),0),
(1,3,1,'Функціональний аналіз (П)','613',(SELECT ProfessorID FROM Professor WHERE FullName = 'Гладун Любомир Володимирович'),0),
(1,4,1,'Математичний аналіз (Л)','684',(SELECT ProfessorID FROM Professor WHERE FullName = 'Кушнір Олександр Олегович'),0),
(1,3,2,'Фізичне виховання','Спорт-корпус',null,0),
(1,4,2,'Диференціальні рівняння (Л)','685',(SELECT ProfessorID FROM Professor WHERE FullName = 'Гладун Любомир Володимирович'),0),
(1,5,2,'Теорія ймовірності (Л)','413',(SELECT ProfessorID FROM Professor WHERE FullName = 'Прищепа Оксана Володимирівна'),0),
(1,2,3,'Об`єктно-орієнтоване програмування (Л)','147',(SELECT ProfessorID FROM Professor WHERE FullName = 'Жуковський Віктор Володимирович'),0),
(1,3,3,'Методи обчислень (Л)','140',(SELECT ProfessorID FROM Professor WHERE FullName = 'Цвєткова Тетяна Павлівна'),0),
(1,4,3,'Методи обчислень (П)(підгр. 1)','140',(SELECT ProfessorID FROM Professor WHERE FullName = 'Цвєткова Тетяна Павлівна'),0),
(1,4,3,'Програмування та підтримка веб-застосувань (Лаб)(підгр. 2)','144',(SELECT ProfessorID FROM Professor WHERE FullName = 'Степанченко Ольга Миколаївна'),0),
(1,5,3,'Програмування та підтримка веб-застосувань (Лаб)(підгр. 1)','144',(SELECT ProfessorID FROM Professor WHERE FullName = 'Степанченко Ольга Миколаївна'),0),
(1,2,4,'Об`єктно-орієнтоване програмування (Лаб)','141б',(SELECT ProfessorID FROM Professor WHERE FullName = 'Бабич С В'),0),
(1,3,4,'Математичний аналіз (Л)','647',(SELECT ProfessorID FROM Professor WHERE FullName = 'Кушнір Олександр Олегович'),0),
(1,4,4,'Фізичне виховання','Спорт-корпус',null,0),
(1,5,4,'Диференціальні рівняння (П)','628',(SELECT ProfessorID FROM Professor WHERE FullName = 'Гладун Любомир Володимирович'),0),
(1,2,5,'Методи обчислень (Лаб)(підгр. 3)','139б',(SELECT ProfessorID FROM Professor WHERE FullName = 'Цвєткова Тетяна Павлівна'),0),
(1,3,5,'Українська мова (П)','659б',(SELECT ProfessorID FROM Professor WHERE FullName = 'Дзюба Майя Миколаївна'),0),
(1,4,5,'Філософія (Л)','453',(SELECT ProfessorID FROM Professor WHERE FullName = 'Сарнавська Оксана В`ячеславівна'),0);




CREATE TABLE Professor
(
ProfessorID int identity(1,1) primary key,
FullName varchar(100) null
);


INSERT INTO Professor VALUES
('Храпко Павло Юрійович'),
('Гладун Любомир Володимирович'),
('Прищепа Оксана Володимирівна'),
('Жуковський Віктор Володимирович'),
('Степанченко Ольга Миколаївна'),
('Бабич С В'),
('Кушнір Олександр Олегович'),
('Сарнавська Оксана В`ячеславівна'),
('Цвєткова Тетяна Павлівна'),
('Дзюба Майя Миколаївна');


SELECT * FROM Professor;

INSERT INTO Professor(FullName) VALUES
('Адамчук Тетяна Леонідівна'),
('Ажнюк Ірина Тарасівна'),
('Акімова Людмила Миколаївна'),
('Алексієвець Валентин Іванович'),
('Алексієвець Іван Іванович'),
('Андрушков В`ячеслав Іванович'),
('Андріюк Юлія Андріївна'),
('Антонова Світлана Євгеніївна'),
('Антонюк Олена Ростиславівна'),
('Бабич Володимир Євгенійович'),
('Бабич С В'),
('Бабич Тетяна Юріївна'),
('Бабич Ярослав Олександрович'),
('Бабич Євгеній Михайлович'),
('Баб`як Олена Вікторівна'),
('Бабій Ю. В-ч3'),
('Бабіч Євген Євгенович'),
('Багнюк Георгій Андрійович'),
('Байцар Тарас Володимирович'),
('Байцар-Артеменко Оксана Вікторівна'),
('Бакун Ніна Іванівна'),
('Басюк Максим Миколайович'),
('Бачишин Богдан Дмитрович'),
('Бачишина Лариса Дмитрівна'),
('Бачунов Олег Володимирович'),
('Безтелесна Людмила Іванівна'),
('Безусяк Олександр Володимирович'),
('Бернацький Микола Васильович'),
('Беседюк Оксана Анатолівна'),
('Бляшина Марія Володимирівна'),
('Боблях Сергій Ростиславович'),
('Богданенко Олександр Вікторович'),
('Бомба. Андрій Ярославович'),
('Бондарева Тетяна Григорівна'),
('Бондарина Ірина Володимирівна'),
('Бондарчук Діна Степанівна'),
('Бордюженко Олег Михайлович'),
('Борисюк Олександр Павлович'),
('Боровик Олександр Миколайович'),
('Борщевська Ірина Мілентіївна'),
('Ботвінко Олена Миколаївна'),
('Брега Людмила Борисівна'),
('Бредюк Володимир Ілліч'),
('Брежицька Олена Анатоліївна'),
('Бровко Галина Іванівна'),
('Брушковський Олександр Леонтійович'),
('Буденкова Надія Марківна'),
('Будз Олена Петрівна'),
('Буднік Зінаїда Миколаївна'),
('Булак Тетяна Сергіївна'),
('Булакевич Сергій Васильович'),
('Бундза Олег Зіновійович'),
('Бурченя Олена Петрівна'),
('Бухальська Тетяна Володимирівна'),
('Бялик Ігор Миколайович'),
('Білецький Анатолій Альфонсович'),
('Білоус Ніна Михайлівна'),
('Бірук Ірина Дмитрівна'),
('Бєдункова Ольга Олександрівна'),
('Вакуленко Ольга Луківна'),
('Валюх Андрій Миколайович'),
('Валіулліна Зоряна Володимирівна'),
('Василенко Еліна Олексіївна'),
('Василенко Жанна Анатоліївна'),
('Васильчук Олександр Юрійович'),
('Василів Володимир Богданович'),
('Вашай Юлія Володимирівна'),
('Велесик Тетяна Анатоліївна'),
('Веремеєнко Тетяна Сергіївна'),
('Веремчук Анатолій Іванович'),
('Веремчук Олександр Анатолійович'),
('Веремчук Юлія Володимирівна'),
('Вечер В’ячеслав Валентинович'),
('Вижевська Тетяна Василівна'),
('Вовк Вікторія Миколаївна'),
('Вовк Юрій Євгенович'),
('Водоп`ян Тетяна Вікторівна'),
('Водяна Світлана Павлівна'),
('Вознюк Наталія Миколаївна'),
('Вознюк Степан Тихонович'),
('Войтович Леонід Володимирович'),
('Волинська Алла Ростиславівна'),
('Волк Павло Павлович'),
('Волкова Людмила Андріївна'),
('Волкошовець Оксана Василівна'),
('Воловик Галина Петрівна'),
('Володимирець Віталій Олександрович'),
('Волошин Володимир Степанович'),
('Волощук Володимир Анатолійович'),
('Востріков Володимир Петрович'),
('Вострікова Наталія Володимирівна'),
('Гаврилюк Людмила Аркадіївна'),
('Гаврилюк Т Ю-ч3'),
('Гавриш Володимир Степанович'),
('Гаврищак Валентина Петрівна'),
('Гайчук Іван Васильович'),
('Галич Оксана Олександрівна'),
('Галкін. Ігор Григорович'),
('Гальчук Ольга Вікторівна'),
('Галік Олег Іванович'),
('Гангур Іван Михайлович'),
('Гапончук Василь Степанович'),
('Гаращенко В’ячеслав Іванович'),
('Гаращенко Олексій В`ячеславович'),
('Гарбарук Людмила Тадеушівна'),
('Гарбарук Юлія Володимирівна'),
('Гарнага Олександр Миколайович'),
('Гаєвська Світлана Ростиславівна'),
('Гаєвський Валерій Ростиславович'),
('Гевко Богдан Матвійович'),
('Герасимов Генріх Григорович'),
('Герасімов Євген Генріхович'),
('Герус Володимир Андрійович'),
('Гладка О М'),
('Гладка Олена Миколаївна'),
('Гладун Любомир Володимирович'),
('Глуха Ірина Миколаївна'),
('Глінчук Валерій Миколайович'),
('Гнєушев Володимир Олександрович'),
('Годлевський. Петро Мечиславович'),
('Голдаєвич Наталія Георгіївна'),
('Голдевський Петро Мечиславович'),
('Голотюк Микола Віталійович'),
('Голубєва Ірина Володимирівна'),
('Гомон Петро Святославович'),
('Гомон Святослав Святославович'),
('Гомон Святослав Степанович'),
('Гонтаренко Наталія Адамівна'),
('Гопчак Ігор Васильович'),
('Горбачук Юлія Анатоліївна'),
('Горчак В. В.'),
('Гриб Йосип Васильович'),
('Григорович Олександр Сергійович'),
('Григорчук Андрій Борисович'),
('Григус Ігор Михайлович'),
('Грицик Тетяна Андріївна'),
('Грицина Олександр Олексійович'),
('Грицюк Марія Василівна'),
('Грицюк Петро Михайлович'),
('Гришко Вікторія Іванівна'),
('Громаченко Катерина Юріївна'),
('Громаченко Сергій Юрійович'),
('Гронтковська Галина Еразмівна'),
('Гроховська Юлія Романівна'),
('Гудь Володимир Миколайович'),
('Гуменюк Світлана Миколаївна'),
('Гуменюк Іван Степанович'),
('Гурин Василь Арсентійович'),
('Гуровська Тетяна Валеріївна'),
('Гурський А. Й'),
('Гуртовий Олексій Григорович'),
('Гуріна Роза Вікторівна'),
('Гуріна* Роза Вікторівна'),
('Гус Василь Михайлович'),
('Гущук Ігор В'),
('Гірак Анатолій Митрофанович'),
('Гіроль Андрій Миколайович'),
('Гіроль Микола Миколайович'),
('Гісюк Ольга Василівна'),
('Давидович Світлана Ничипорівна'),
('Давидчук Валентин Іванович'),
('Данченков Яків Васильович'),
('Дацишина Ірина Борисівна'),
('Дворкін Леонід Йосипович'),
('Дворкін Олег Леонідович'),
('Дейнека Олег Юрійович'),
('Демчук Олена Станіславівна'),
('Демчук Ірина Вадимівна'),
('Дем`янова Валентина Петрівна'),
('Дем`янюк Алла Володимирівна'),
('Денесюк Петро Дмитрович'),
('Дець Тетяна Іванівна'),
('Джоші Олена Іванівна'),
('Дзюба Майя Миколаївна'),
('Дмитришина Надія Миколаївна'),
('Дмитрук Володимир Петрович'),
('Дмитрів Ольга Петрівна'),
('Довбенко Володимир Сергійович'),
('Довгалець Ю В'),
('Довжук Людмила Володимирівна'),
('Довжук Олександр Михайлович'),
('Доманський Георгій Валерійович'),
('Дорошенко Олена Олександрівна'),
('Дорощук Вікторія Олександрівна'),
('Драчук Юрій Сергійович'),
('Древецький Володимир Володимирович'),
('Дробко Едуард Васильович'),
('Дробуш Ірина Вікторівна'),
('Дробуш. Ірина Вікторівна'),
('Дубич Марія Михайлівна'),
('Дубчак Інна Вікторівна'),
('Жемба Алла Йосипівна'),
('Жеребятьєв Олександр Васильович'),
('Живиця Володимир Антонович'),
('Жилка Іван Сидорович'),
('Житковський Вадим Володимирович'),
('Жомирук Руслан Валентинович'),
('Жуковська Наталія Анатоліївна'),
('Жуковський. Віктор Володимирович'),
('Журавльова Тамара Володимирівна'),
('Заглинський Анатолій Олексійович'),
('Залеський. Іван Іванович'),
('Залужна Алла Євгенівна'),
('Замрій Богдан Андрійович'),
('Захарко Г Ф-ч3'),
('Заяць Василь Михайлович'),
('Заячківська Оксана Василівна'),
('Заєць Віталій Вадимович'),
('Збагерська Наталія Василівна'),
('Зданевич Василь Анатолійович'),
('Зощук Віталій Олегович'),
('Зощук Наталія Володимирівна'),
('Зраітель Олена Ярославівна'),
('Зубик Людмила Володимирівна'),
('Зубик Ярослав Ярославович'),
('Зубик. Л В'),
('Зубрицький Богдан Дмитрович'),
('Зубілевич Світлана Яківна'),
('Зінкевич Оксана Володимирівна'),
('Зінчук Микола Степанович'),
('Зінь Ігор Володимирович'),
('Кайда Денис Володимирович'),
('Караван Віктор Васильович'),
('Кардаш Оксана Любомирівна'),
('Карпович Іван Миколайович'),
('Карпович. Іван Миколайович'),
('Карпюк Анатолій Андрійович'),
('Кафарський Володимир Іванович'),
('Кахнич Петро Федорович'),
('Качан Наталія Сергіївна'),
('Квартенко Олександр Миколайович'),
('Квасніков Володимир Павлович'),
('Кедись Олена Якимівна'),
('Кизима Володимир Порфирович'),
('Кирикович Віктор Дмитрович'),
('Кирикович Наталія Степанівна'),
('Кириша Руслан Олександрович'),
('Кисіль Володимир Миколайович'),
('Клепач Марко Миколайович'),
('Клепач Микола Іванович'),
('Клець Марія В'),
('Клименко Людмила Валентинівна'),
('Клименко Микола Олександрович'),
('Клименко Олександр Миколайович'),
('Клинова-Дацюк Галина Дмитрівна'),
('Клюха Оксана Олександрівна'),
('Клімов Сергій Васильович'),
('Коберська Тетяна Ананіївна'),
('Коваль Світлана Іванівна'),
('Коваль* Світлана Іванівна'),
('Ковальчук Віктор Анатолійович'),
('Ковальчук Наталія Сергіївна'),
('Ковальчук Тетяна Леонідівна'),
('Ковшун Наталія Едуардівна'),
('Кожушко Леонід Федорович'),
('Козлюк Валерій Володимирович'),
('Козяр Віктор Олександрович'),
('Козяр Микола Миколайович'),
('Козішкурт Світлана Миколаївна'),
('Кокчу Ольга Миколаївна'),
('Колесник Олег Анатолійович'),
('Колесник Тетяна Миколаївна'),
('Комаревич Олександр Євгенович'),
('Кондратюк Олександр Михайлович'),
('Кондрацька Наталія Миколаївна'),
('Кононцев Сергій Вікторович'),
('Коптюк Роман Миколайович'),
('Корбутяк Василь Михайлович'),
('Корбутяк Віктор Іванович'),
('Корбутяк Михайло Васильович'),
('Корнійчук Олександр Іванович'),
('Корнілов Леонід Володимирович'),
('Корнієнко Валерій Ярославович'),
('Король Богдан Олегович'),
('Коротун Ольга Петрівна'),
('Коротун Сергій Ігорович'),
('Корхов Олег Юрійович'),
('Корчик Наталія Михайлівна'),
('Кособуцький Федір Титович'),
('Кособуцький Юрій Федорович'),
('Костриченко Валентина Михайлівна'),
('Костюк Олександр Павлович'),
('Костюкевич Аліна Миколаївна'),
('Костюкевич Руслан Миколайович'),
('Костюкова Марія Сергіївна'),
('Косюк О В-ч3'),
('Косяк Діана Святославівна'),
('Косяк Олександр Володимирович'),
('Косінов Василь Петрович'),
('Котюк Світлана Олександрівна'),
('Кочергіна Ольга Дмитрівна'),
('Кочкарьов Дмитро Вікторович'),
('Кочмарський Володимир Зіновійович'),
('Кочубей Алла Володимирівна'),
('Кравець Святослав Володимирович'),
('Кравченко Віталій Сергійович'),
('Кравченко Наталія Віталіївна'),
('Кравченко Ольга Ярославівна'),
('Кравчук Ростислав Миколайович'),
('Красновська Ольга Ігорівна'),
('Красовська Юліана Вікторівна'),
('Криницька Марія Василівна'),
('Кристопчук Михайло Євгенович'),
('Кропивко Сергій Максимович'),
('Круліковський Борис Борисович'),
('Крупка Олександр Володимирович'),
('Крусь Юрій Олексійович'),
('Крутько Тетяна Валеріївна'),
('Крівцов Валерій Володимирович'),
('Куба Віталій Васильович'),
('Кубай Григорій Васильович'),
('Кужій Володимир Андрійович'),
('Кузло Микола Трохимович'),
('Кузло Наталія Миколаївна'),
('Кузнецова Тетяна Володимирівна'),
('Кузнєцова Олена Тимофіївна'),
('Кузнєцова Тетяна Олегівна'),
('Кузьменко Валентина Михайлівна'),
('Кузьменко Олександр Михайлович'),
('Кузьмич Людмила Володимирівна'),
('Куковський Анатолій Григорович'),
('Кулик Наталія Ігорівна'),
('Кулина С Л-ч3'),
('Кундельський Валентин Петрович'),
('Кундрат Андрій Миколайович'),
('Кундрат Микола Михайлович'),
('Кундрат Тарас Миколайович'),
('Купчик Лариса Євгенівна'),
('Кусковець Сергій Леонідович'),
('Кутя Віталій Миколайович'),
('Кутя Тетяна Володимирівна'),
('Кухар Олег Володимирович'),
('Кухнюк. Олег Миколайович'),
('Кучер О О'),
('Кучерова Алла Вікторівна'),
('Кушнір Валентина Петрівна'),
('Кушнір Ніна Борисівна'),
('Кушнір Олександр Олегович'),
('Кушнір Ніна Борисівна'),
('Кушнірук Юрій Степанович'),
('Кібукевич Олена Миколаївна'),
('Кізєєв Микола Дмитрович'),
('Кінчур Олександр Федорович'),
('Кір’янов Віктор Миколайович'),
('Кірічок Олександр Георгійович'),
('Лагоднюк Аліна Михайлівна'),
('Лагоднюк Олег Анатолійович'),
('Лазаришина Інна Дмитрівна'),
('Лащівський Василь Васильович'),
('Лебедь Олександр Олександрович'),
('Левицька Світлана Олексіївна'),
('Левун Оксана Іванівна'),
('Левчук Надія Валеріївна'),
('Лесняк Олександр Юрійович'),
('Лико Д В'),
('Лико Дарія Василівна'),
('Лисюк Світлана Анатоліївна'),
('Литвиненко Лариса Леонидівна'),
('Лук’янчук Олександр Петрович'),
('Луц. Віктор Данилович'),
('Луценко В`ячеслав Вісаріонович'),
('Лушнікова. Наталія Валеріївна'),
('Люсак Ганна Володимирівна'),
('Ляхович Ольга Олександрівна'),
('Ліпянін Вадим Антонович'),
('Літвінчук Альона Теофанівна'),
('Літніцький Сергій Іванович'),
('Ліхо Олена Антонівна'),
('Ліщинський Анатолій Георгійович'),
('Магльований Анатолій Васильович'),
('Мазепа Олександр Миколайович'),
('Мазур Наталія Олексіївна'),
('Майструк Микола Іванович'),
('Макаренко Руслан Миколайович'),
('Макарчук Олександр Володимирович'),
('Маланчук Зіновій Романович'),
('Маланчук Євгеній Зіновійович'),
('Маланчук. Лариса Олексіївна'),
('Малевич Леся Дмитрівна'),
('Мальчик Мар`яна Василівна'),
('Маліков Володимир Вікторович'),
('Мамонтова. Наталія Анатоліївна'),
('Мандзюк Ольга Михайлівна'),
('Мандигра Микола Станіславович'),
('Маркова Ольга Валентинівна'),
('Мартинов Сергій Юрійович'),
('Мартинюк Галина Федорівна'),
('Мартинюк Оксана Володимирівна'),
('Мартинюк Петро Миколайович'),
('Марчук Віталій Вікторович'),
('Марчук Микола Михайлович'),
('Марчук Назар Миколайович'),
('Марчук Роман Миколайович'),
('Масюк Владислав Григорович'),
('Масюк Григорій Харитонович'),
('Матвіюк Олександр Валерійович'),
('Матвіїв Богдан Теодорович'),
('Матус Світлана Констянтинівна'),
('Матюх Тамара Миколаївна'),
('Матюшина Тетяна Вікторівна'),
('Мацнєва Тетяна Станіславівна'),
('Маїк Л Б-ч3'),
('Медвiдь Сергій Хомович'),
('Медведюк Анна Євгенівна'),
('Меддур Ахмед салах Еддін'),
('Медяник Володимир Юрійович'),
('Мельник Валентина Олександрівна'),
('Мельник Володимир Сергійович'),
('Мельник Лариса Михайлівна'),
('Мельник Леонід Васильович'),
('Мельник Сергій Володимирович'),
('Мельник Сергій Вікторович'),
('Мельник Тетяна Дмитрівна'),
('Мельничук Віктор Григорович'),
('Мельничук Григорій Вікторович'),
('Мельничук Максим Святославович'),
('Мельничук Юлія Іванівна'),
('Мельничук Інна Миколаївна'),
('Меліхова Тамара Леонтіївна'),
('Мендусь Петро Ілліч'),
('Мендусь Сергій Петрович'),
('Мирон Тетяна Володимирівна'),
('Миронець Тамара Дмитрівна'),
('Миськовець Наталія Петрівна'),
('Мисіна Оксана Іванівна'),
('Михайлишин Ольга Леонідівна'),
('Михальчук Михайло Андрійович'),
('Мобiло Леонід Володимирович'),
('Мороз Еліна Григорівна'),
('Мороз Олександр Сергійович'),
('Мороз Олександр Тихонович'),
('Мороз. Микола Володимирович'),
('Морозюк Сергій Володимирович'),
('Мосійчук Марія Миколаївна'),
('Мошинський Віктор Степанович'),
('Музика О В-ч3'),
('Мулька. А П-ч3'),
('Муранов Володимир Георгійович'),
('Мігірін Павло Іванович'),
('Мізюк Володимир Григорович'),
('Міклуха Олеся Леонідівна'),
('Мілаш Тетяна Олексіївна'),
('Мічута Ольга Романівна'),
('Міщук Галина Юріївна'),
('Міщук Інна Володимирівна'),
('Нагавичко Інна Петрівна'),
('Нагорна Ольга Борисівна'),
('Надутий Володимир Петрович'),
('Назаров Сергій Миколайович'),
('Назарук Галина Іванівна'),
('Наконечна Жанна Василівна'),
('Наконечна Ольга Павлівна'),
('Налепа Олександр Іванович'),
('Налобіна Олена Олександрівна'),
('Науменко Юрій Васильович'),
('Наумчук Олександр Миколайович'),
('Немоловська Наталія Андріївна'),
('Нестеренко Володимир Павлович'),
('Нестерчук Наталія Євгенівна'),
('Нетепчук Василь Володимирович'),
('Нечидюк Анатолій Анатолійович'),
('Николайчук Ярослав Миколайович'),
('Никонюк Євген Сергійович'),
('Новак Анатолій Іванович'),
('Новачок Олександр Михайлович'),
('Новачок Ігор Олександрович'),
('Новицька Ольга Сергіївна'),
('Ногас Анжела Олександрівна'),
('Нікитенко Дмитро Валерійович'),
('Ніколайчук Валентина Йосипівна'),
('Ніколайчук Катерина Миколаївна'),
('Ніколайчук Олег Миколайович'),
('Ніколенко Олександр Іванович'),
('Нікітін Валерій Георгійович'),
('Німкович Роман Святославович'),
('Ніхаєва Людмила Іванівна'),
('Окерешко Марія Володимирівна'),
('Окорський Віталій Петрович'),
('Оксентюк Наталія Володимирівна'),
('Ольховик Олександр Іванович'),
('Ольшанський Петро Васильович'),
('Олійник Оксана Олексіївна'),
('Олійник Олена Олександрівна'),
('Онокало Bадим Григорович'),
('Орленко Віктор Федорович'),
('Орлов Валерій Олегович'),
('Орлова Алла Миколаївна'),
('Орлова Марія Олександрівна'),
('Осадча Ольга Олексіївна'),
('Осадчий Сергій Дмитрович'),
('Осецька Наталія Феліксівна'),
('Остапець Тетяна Олександрівна'),
('Остапчук Оксана Петрівна'),
('Остапчук Сергій Миколайович'),
('Осіпчук Наталія Василівна'),
('Павелко Ольга Віталіївна'),
('Павлов Володимир Іванович'),
('Павлов Костянтин Володимирович'),
('Павлюк Наталія Петрівна'),
('Панасюк Олександр Іванович'),
('Панчук Юрій Миколайович'),
('Парфенюк Ілона Олександрівна'),
('Пасевич Анатолій Михайлович'),
('Пастухов Олександр Васильович'),
('Пастушенко Володимир Йосипович'),
('Пасічнюк. Василь Борисович'),
('Пахаренко Володимир Леопольдович'),
('Пахаренко Ольга Володимирівна'),
('Пашкевич Віктор Володимирович'),
('Пелех Людмила Романівна'),
('Пелех Юрій Володимирович'),
('Петрук Аліна Миколаївна'),
('Петрук Віктор Анатолійович'),
('Петрук Людмила Анатоліївна'),
('Петрук Ірина Ростиславівна'),
('Петрук. Людмила Анатоліївна'),
('Печенюк Анна Вікторівна'),
('Пивоварчук Лілія Володимирівна'),
('Пилипей Микола Іванович'),
('Письменний Сергій Васильович'),
('Плетюк Оксана Василівна'),
('Плотка Віктор Степанович'),
('Поважук Наталія Михайлівна'),
('Погребняк Надія Дмитрівна'),
('Подворний Андрій Володимирович'),
('Подлевська Оксана Мирославівна'),
('Подлевський Андрій Анатолійович'),
('Подолець Петро Михайлович'),
('Познаховський Віктор Анатолійович'),
('Позняковська Наталія Миколаївна'),
('Полтавченко Тетяна Вікторівна'),
('Польовий Володимир Мефодійович'),
('Польща Інна Павлівна'),
('Полюхович Лілія Іванівна'),
('Полюхович Наталія Анатоліївна'),
('Поляков Максим Валерійович'),
('Полінчук Олександр Петрович'),
('Поліщук Андрій Миколайович'),
('Поліщук Валентина Лонгінівна'),
('Поліщук-Герасимчук Тетяна Олександрівна'),
('Попко Олена Володимирівна'),
('Поплавський Дмитро Михайлович'),
('Попова Ольга Юріївна'),
('Попович Раїса Гнатівна'),
('Поровчук Олег Гнатович'),
('Потапчук Світлана Сергіївна'),
('Потапчук Ірина Володимирівна'),
('Поташник Семен Ізрайлевич'),
('Похильчук Ігор Олександрович'),
('Похно Тетяна Вікторівна'),
('Приймак Світлана Анатоліївна'),
('Примачок Людмила Леонтіївна'),
('Приступлюк Вікторія Леонідівна'),
('Притула Мар`яна Юріївна'),
('Прищепа Алла Миколаївна'),
('Прищепа Оксана Володимирівна'),
('Прокопчук Андрій Володимирович'),
('Прокопчук Никодим Миколайович'),
('Проценко Сергій Борисович'),
('Прусік Кшиштоф .'),
('Пугачов Євген Валентинович'),
('Підгурська Оксана Петрівна'),
('Пікула Микола Веніамінович'),
('Піліпака Людмила Михайлівна'),
('Пінчук Віталій Федорович'),
('Пінчук Олег Леонідович'),
('Ревуцький Віктор Ростиславович'),
('Рейнська. Вікторія Борисівна'),
('Реут Дмитро Тагірович'),
('Рибак Ігнат Іванович'),
('Рибалко Андрій Володимирович'),
('Рибачук Яна Валеріївна'),
('Рижий Олександрович Петрович'),
('Ричков Петро Анатолійович'),
('Ровенець Тетяна Олександрівна'),
('Рокочинський Анатолій Миколайович'),
('Романовський Олександр Леонтійович'),
('Романчук Валентина Степанівна'),
('Романюк Володимир Володимирович'),
('Романюк Віра Юріївна'),
('Романюк Віталій Іванович'),
('Романюк Іван Васильович'),
('Ромашко Василь Миколайович'),
('Ромашко Олена Василівна'),
('Ромейко Ірина Володимирівна'),
('Россінський Роман Миколайович'),
('Рощенюк Алла Михайлівна'),
('Рощик Ірина Анатоліївна'),
('Рудик Андрій Вікторович'),
('Руднєв Сергій Миколайович'),
('Русий Євген Миколайович'),
('Ряба Ольга Ігорівна'),
('Рябенко Олександр Антонович'),
('Савицький Валентин Вікторович'),
('Савич Віра Олексіївна'),
('Савущик Анна Ігорівна'),
('Савіна Наталія Борисівна'),
('Сазонець Ольга Миколаївна'),
('Сазонець Ігор Леонідович'),
('Сазонець* Ігор Леонідович'),
('Сальчук Вікторія Леонідівна'),
('Самолюк Наталія Миколаївна'),
('Самолюк Ірина Василівна'),
('Самороков Валентин Олександрович'),
('Сапсай Григорій Іванович'),
('Сарнавська Оксана Вячеславівна'),
('Сасюк Зоя Константинівна'),
('Сафоник Андрій Петрович'),
('Свердлюк Інна Володимирівна'),
('Семенчук Наталія Іванівна'),
('Семенчук Юлія Михайлівна'),
('Семенюк Мар`яна Юріївна'),
('Середа Володимир Володимирович'),
('Серілко Дмитро Леонідович'),
('Серілко Леонід Степанович'),
('Сидор Андрій Іванович'),
('Сидорук В Й'),
('Сидорчук Богдан Петрович'),
('Сидорчук Наталія Леонідівна'),
('Сидорчук Інна Олександрівна'),
('Сиротинська Алла Павлівна'),
('Сиротинський Олександр Артемович'),
('Скаковська Світлана Степанівна'),
('Скоблюк Михайло Петрович'),
('Скочук Микола Пилипович'),
('Скрипчук Петро Михайлович'),
('Слободенюк Інна Валентинівна'),
('Слюсарчук Василь Юхимович'),
('Слюсарчук Людмила Мечиславівна'),
('Слісарук. Любов Степанівна'),
('Смолінська Ольга Едвардівна'),
('Сокаль Валентина Анатоліївна'),
('Соколовський Микола Йосипович'),
('Солодка Тетяна Миколаївна'),
('Солодкий Владислав Олександрович'),
('Солодкий Олександр Дмитрович'),
('Соломко Михайло Тимофійович'),
('Сольвар Л М-ч3'),
('Сольвар Н В-ч3'),
('Соляк Людмила Володимирівна'),
('Сондак Василь Володимирович'),
('Сорока Валерій Степанович'),
('Сотник Олег Володимирович'),
('Стадник Олександр Святославович'),
('Сталовєрова Ганна Вячеславівна'),
('Старжинський Юлій Миколайович'),
('Старіков Володимир Сергійович'),
('Стасюк Богдан Богданович'),
('Статник Ігор Іванович'),
('Стахів Ольга Андріївна'),
('Стахів Ярослав Андрійович'),
('Степанченко Ольга Миколаївна'),
('Степанюк Антон Адамович'),
('Степасюк Юрій Олександрович'),
('Стефанишин Дмитро Володимирович'),
('Стеценко Анастасія Михайлівна'),
('Стець Сергій Євгенович'),
('Стецюк Людмила Миколаївна'),
('Стратонова Наталія Олегівна'),
('Стрілець Володимир Миколайович'),
('Стрілець Олег Романович'),
('Стріха Володимир Андрійович'),
('Ступницький Віктор Володимирович'),
('Стіньо Олександр Володимирович'),
('Судук Олена Юріївна'),
('Сунічук Ольга Сергіївна'),
('Сунічук Сергій Васильович'),
('Супрунюк Володимир Володимирович'),
('Сяський Василь Олексійович'),
('Сівак Віктор Михайлович'),
('Сініцина Олена Валеріївна'),
('Сіпайло Леонід Георгійович'),
('Тадеєв Петро Олександрович'),
('Тадеєв* Петро Олександрович'),
('Тадеєва* Марія Іванівна'),
('Тадєєв Олександр Антонович'),
('Тадєєва Марія Іванівна'),
('Талашвілі Ю Й'),
('Тарас Богдан Ігорович'),
('Тарасюк Валентина Дмитрівна'),
('Теслюкевич Анатолій Степанович'),
('Тимейчук Орест Юрійович'),
('Тимейчук Тамара Борисівна'),
('Тимощук Володимир Святославович'),
('Тимощук Тетяна Олексіївна'),
('Тимощук Ігор Олександрович'),
('Тинчук Сергій Олександрович'),
('Тичковська Олена Владиславівна'),
('Ткачук Микола Микитович'),
('Ткачук Олександр Андрійович'),
('Токар Людмила Олександрівна'),
('Токар Олександр Іванович'),
('Толчанова Зоя Олексіївна'),
('Трач Володимир Мирославович'),
('Трофимчук Ігор Петрович'),
('Трофімчук Тетяна Михайлівна'),
('Трохимець Сергій Миколайович'),
('Троцюк Віктор Степанович'),
('Трушева Світлана Сергіївна'),
('Тулашвілі Юрій Йосипович'),
('Тулашвілі.. Юрий Йосипович'),
('Турбал Юрій Васильович'),
('Туровська Галина Іванівна'),
('Турченюк Василь Олександрович'),
('Турченюк Микола Олександрович'),
('Турчина Катерина Петрівна'),
('Тхорук Євген Іванович'),
('Тіток Олена Петрівна'),
('Федина Катерина Миколаївна'),
('Федоришин Юрій Іванович'),
('Фесянов Петро Олексійович'),
('Филипчук Віктор Леонідович'),
('Филипчук Леонід Вікторович'),
('Филипчук* Віктор Леонідович'),
('Форсюк Сергій Леонідович'),
('Фроленкова Надія Анатоліївна'),
('Фурман Володимир Мілентієвич'),
('Фурманець Олег Анатолійович'),
('Фурсович Михайло Олександрович'),
('Фільо Ірина Євгеніївна'),
('Фільо. Ірина Євгенівна'),
('Філіпович Юрій Юрійович'),
('Філіпчук Сергій Вікторович'),
('Хаванська Оксана Леодорівна'),
('Ханін Ігор Григорович'),
('Харів Наталія Олексіївна'),
('Хлапук Микола Миколайович'),
('Холоденко Вікторія Святославівна'),
('Хоружий Микола Миколайович'),
('Храпко Павло Юрійович'),
('Христюк Андрій Олексійович'),
('Хіст Вікторія Володимирівна'),
('Хітров Ігор Олександрович'),
('Цвєткова Тетяна Павлівна'),
('Цецик Світлана Петрівна'),
('Цецик Ярослав Петрович'),
('Цецик.. Світлана Петрівна'),
('Цибульський Валерій Іванович'),
('Циганюк Марія Володимирівна'),
('Цимбалюк Валерій Іванович'),
('Цимбалюк* Валерій Іванович'),
('Цицаркін Олександр Валентинович'),
('Чабан Інна Вікторівна'),
('Черенков Андрій Васильович'),
('Чернюшок Олександр Васильович'),
('Чорна Оксана Миколаївна'),
('Чорнолоз Володимир Степанович'),
('Чудовець Ліна Миколаївна'),
('Чуприна Анна Ігорівна'),
('Шабловська Алла Ростиславівна'),
('Шадура Віктор Опанасович'),
('Шадюк Тамара Адамівна'),
('Шалай Сергій Васильович'),
('Шанюк* Володимир Іванович'),
('Шаталов Олександр Сергійович'),
('Шатний Сергій Вячеславович'),
('Швець Микола Дмитрович'),
('Швець Оксана Михайлівна'),
('Швець Федір Дмитрович'),
('Шебуня Віталій Дмитрович'),
('Шевченко Ірина Мавіївна'),
('Шевченко. І М'),
('Шевчук Наталія Миколаївна'),
('Шевчук Тамара Євгенівна'),
('Шевчук Ірина Володимирівна'),
('Шельчук Наталія Олександрівна'),
('Шепелюк Сергій Михайлович'),
('Шийка Світлана Володимирівна'),
('Шикун Алла Володимирівна'),
('Шило Жанна Степанівна'),
('Шинкарук Любомир Антонович'),
('Шишкіна Олена Олександрівна'),
('Шокало О Д-ч3'),
('Шолопак Людмила Фіногенівна'),
('Шолопак Петро Васильович'),
('Шолудько Максим Миколайович'),
('Шолудько Микола Володимирович'),
('Шпак Юрій Валерійович'),
('Шпортько Олександр Володимирович'),
('Штогун Сергій Григорович'),
('Штука Ірина Анатоліївна'),
('Штурхецький Сергій Володимирович'),
('Шульган Роман Богданович'),
('Щербаков Володимир Миколайович'),
('Щербакова Анастасія Сергіївна'),
('Щодро Олексій Євгенович'),
('Щурик Володимир Олександрович'),
('Юрчик Галина Миколаївна'),
('Якимчук Аліна Юріївна'),
('Якимчук Богдан Никанорович'),
('Якимчук Софія Анатоліївна'),
('Якимчук Тетяна Іванівна'),
('Яковишина Маргарита Сергіївна'),
('Яковлева Ольга Миколаївна'),
('Яковчук Вікторія Володимирівна'),
('Якубовська Світлана Святославівна'),
('Янчук Олександр Євгенійович'),
('Янчук Руслан Миколайович'),
('Ярмуш Ярослав Іванович'),
('Яськів Богдан Іванович'),
('Яцик Анатолій Васильович'),
('Яцков Микола Васильович'),
('Євтух Микола Іванович'),
('Іванов Сергій Юрійович'),
('Іванченко Анатолій Миронович'),
('Іванюк Андрій Миколайович'),
('Івасюк Петро Іванович'),
('Іващук Яків Григорович'),
('Ігнатюк Роман Михайлович'),
('Ігнатюк Ірина Зіновіївна'),
('Ільчук Наталія Іллівна'),
('Іщенко Олександр Михайлович'),
('Іщук Олександр Олександрович'); 

INSERT INTO InstituteGroup(Name,InstuteID) VALUES
('А-11'),
('А-12'),
('АГХ-11і'),
('Аспірант1'),
('Аспіранти'),
('АТ-11'),
('АТ-11інт'),
('АТ-12інт'),
('АТз-11'),
('АТз-11інт'),
('АУТП-11'),
('АУТП-11інт'),
('АУТПз-11'),
('АУТПз-11ін'),
('АУТПпз-11і'),
('АХГ-11'),
('АХГз-11інт'),
('Б-11'),
('Б-12'),
('Б-13'),
('Б-14'),
('ВБА-11'),
('ВБАз-11інт'),
('ВБАз-31інт'),
('ГВР-11'),
('ГВР-12'),
('ГВРо-11і'),
('ГЕ-11'),
('ГЕ-12'),
('ГЕз-11'),
('ГКЗ-11'),
('ГКЗ-11і'),
('ГКЗ-12'),
('ГКЗз-11'),
('ГКЗз-11інт'),
('ГМпі-11з'),
('ГР-11'),
('ГР-11інт'),
('ГРчз-11інт'),
('ГТБ-11'),
('Докторанти'),
('ДСз-11'),
('ДІД-11'),
('ЕЕТ-11'),
('ЕЕТз-11'),
('ЕК-11'),
('ЕКО-11'),
('ЕКО-11інт'),
('ЕКО-12'),
('ЕКОз-11'),
('ЕКОз-11інт'),
('ЕП-11'),
('ЕПз-11'),
('ЕПз-61м'),
('ЕПзч-61м'),
('ЗВКп-11інт'),
('Здобувачі'),
('ЗЛ-11'),
('ЗЛ-12'),
('КН-11'),
('КІ-11'),
('КІ-11інт'),
('М-11'),
('МАР-11'),
('МБ-11'),
('МБ-12'),
('МБз-11інт'),
('МБо-11інт'),
('МБп-12інт'),
('МЕ-11'),
('Мз-11'),
('Мін-11'),
('ОА-11'),
('ОАз-11'),
('ОАм-61з'),
('ОАм-61зч'),
('ОАм-62з'),
('ОАпі-1з'),
('ОП-11'),
('ОПз-11'),
('ОПз-61с'),
('ОПз-62м'),
('ПМ-11'),
('ПР-11'),
('ПР-12'),
('ПРз-11'),
('ТГВп-11інт'),
('ТЕ-11'),
('ТТ-11'),
('ТТ-11інт'),
('ТТз-11ін'),
('ТТз-11інт'),
('ТУР-11'),
('УПЕП-11'),
('УПЕПз-11'),
('ФІН-11'),
('ФІНз-11'),
('ФІНз-61м'),
('Ін-11'),
('ІНФ-11'),
('А-21'),
('А-22'),
('АДіА-21'),
('АТ-21'),
('АТ-21інт'),
('АТ-22інт'),
('АТз-21'),
('АТз-21інт'),
('АУТП-21'),
('АУТП-22'),
('АУТП-41інт'),
('АУТПз-21'),
('АУТПз-21ін'),
('АУТПз-2з'),
('АУТПпз-21і'),
('АХГ-21'),
('АХГ-21і'),
('АХГз-21'),
('АХГм-71з'),
('Бз-21'),
('ВБА-21'),
('ВВ-21'),
('ГВР-21'),
('ГВР-22'),
('ГВРз-21'),
('ГВРо-21і'),
('ГЕ-21'),
('ГЕ-22'),
('ГЕз-21'),
('ГКЗз-21'),
('ГКЗз-21інт'),
('ГКЗз-22інт'),
('ГМз-21'),
('ГМпі-21з'),
('ГМсз-41інт'),
('ГР-21'),
('ГР-21інт'),
('ГРз-21'),
('ГРчз-21інт'),
('ГТБ-21'),
('ГТБз-21'),
('ГІС-21'),
('ДІД-21'),
('ЕЕТ-21'),
('ЕЕТз-11інт'),
('ЕЕТз-21інт'),
('ЕК-21'),
('ЕКО-21'),
('ЕКО-21інт'),
('ЕКО-22'),
('ЕКОв-21'),
('ЕКОз-21'),
('ЕКОз-21інт'),
('ЕП-21'),
('ЕПз-21'),
('ЕПз-71м'),
('ЗВК-21'),
('ЗВК-21і'),
('ЗВК-22'),
('ЗВКп-21інт'),
('ЗЛ-21'),
('ЗЛ-22'),
('КІ-21'),
('КІ-41інт'),
('М-21'),
('М-22'),
('МАР-21'),
('МБ-21'),
('МБ-22'),
('МБГ-21'),
('МБз-21'),
('МБо-21інт'),
('МБоз-21інт'),
('МБп-21інт'),
('МБпз-21інт'),
('МЕ-21'),
('Мз-21'),
('МОіАм-71з'),
('Мін-21'),
('ОА-21'),
('ОАв-21'),
('ОАз-21'),
('ОАпі-2з'),
('ОП-21'),
('ОПз-72м'),
('ПМ-21'),
('ПР-21'),
('ПР-22'),
('ПЦБ-21'),
('ПЦБ-22'),
('ТБК-21'),
('ТГВ-21'),
('ТГВз-42і'),
('ТГВп-21інт'),
('ТЕ-21'),
('ТЕз-21'),
('ТТ-21'),
('ТТ-21інт'),
('ТТз-21інт'),
('ТУР-21'),
('УПЕП-21'),
('УПЕПз-21'),
('ФІН-21'),
('ФІНз-21'),
('ФІНз-71м'),
('Ін-21'),
('ІНФ-21'),
('ІНФ-41інт'),
('А-31'),
('А-32'),
('АДіА-31'),
('АДіАз-31'),
('АТ-31'),
('АТз-31'),
('АТз-31інт'),
('АУТП-31'),
('АУТП-32'),
('АУТПз-31'),
('АУТПз-31ін'),
('АУТПз-3з'),
('АХГ-31'),
('АХГз-31'),
('ВБА-31'),
('ВБА-31і'),
('ВБАз-31'),
('ВВ-31'),
('ВВз-31інт'),
('ГВР-31'),
('ГВР-32'),
('ГВРз-31'),
('ГЕ-31'),
('ГЕ-32'),
('ГЕз-31'),
('ГКЗз-31'),
('ГМз-31'),
('ГМпі-31з'),
('ГМсз-51інт'),
('ГР-31'),
('ГРз-31'),
('ГРчз-31інт'),
('ГТБ-31'),
('ГТБз-31'),
('ГІС-31'),
('ДІД-31'),
('ЕЕТ-11інт'),
('ЕЕТ-31'),
('ЕЕТ-31інт'),
('ЕК-31'),
('ЕКО-31'),
('ЕКО-32'),
('ЕКОв-31'),
('ЕКОз-31'),
('ЕП-31'),
('ЕП-31інт'),
('ЕПз-31'),
('ЗВК-31'),
('ЗВК-32'),
('ЗВКз-31з'),
('ЗВКп-31ін'),
('ЗВКсі-31'),
('ЗЛ-31'),
('ЗЛ-32'),
('КН-31'),
('КНінт-31'),
('КІ-31'),
('М-31'),
('М-32'),
('МАР-31'),
('МАРінт-31'),
('МБГ-31'),
('МБГ-32'),
('МБГз-31інт'),
('МБз-31'),
('МБз-3з'),
('МБо-32'),
('МБоз-31інт'),
('МБп-31'),
('МБпз-31інт'),
('МЕ-31'),
('МЕ-31інт'),
('Мз-31'),
('ОА-31'),
('ОА-31інт'),
('ОА-32'),
('ОАв-31'),
('ОАз-31'),
('ОАп-31з'),
('ОП-31'),
('ОПз-31'),
('ПМ-11інт'),
('ПМ-31'),
('ПР-31'),
('ПР-32'),
('ПРз-11інт'),
('ПРз-12інт'),
('ПЦБ-31'),
('ПЦБ-32'),
('ПЦБ-33і'),
('ПЦБ-34і'),
('ПЦБз-31'),
('ТБК-31'),
('ТБКз-31'),
('ТГВ-31'),
('ТГВз-31'),
('ТГВз-52і'),
('ТГВп-31інт'),
('ТЕ-31'),
('ТЕз-31'),
('ТТ-31'),
('ТТз-31'),
('ТУР-31'),
('УПЕП-31'),
('УПЕП-32'),
('УПЕПз-31'),
('УПЕПін-31'),
('ФІН-31'),
('ФІН-31інт'),
('ФІНз-31'),
('Ін-31'),
('ІНФ-11інт'),
('ІНФ-31'),
('А-41'),
('А-42'),
('АДіА-41'),
('АТ-41'),
('АТз-41'),
('АУТП-41'),
('АУТП-42'),
('АУТПз-41'),
('АХГ-41'),
('АХГз-41'),
('ВБА-41'),
('ВБАз-41'),
('ВВ-41'),
('ВВз-41інт'),
('ГВР-41'),
('ГВР-42'),
('ГВР-43'),
('ГВР-44'),
('ГВРз-41'),
('ГЕ-41'),
('ГЕ-42'),
('ГЕз-41'),
('ГКЗз-41'),
('ГМз-41'),
('ГМс-41з'),
('ГР-41'),
('ГРз-41'),
('ГТБ-41'),
('ГТБз-41'),
('ГІС-41'),
('ЕКО-41'),
('ЕКО-42'),
('ЕКОв-41'),
('ЕКОз-41'),
('ЕП-41'),
('ЕП-41інт'),
('ЕП-42'),
('ЕПз-41'),
('ЕПз-41ін'),
('ЕПзч-41інт'),
('ЗВК-41'),
('ЗВК-42'),
('ЗВК-43'),
('ЗВКз-41з'),
('ЗВКсі-41'),
('ЗЛ-41'),
('ЗЛ-42'),
('М-41'),
('М-42'),
('МАРінт-41'),
('МБГ-41'),
('МБГз-41ін'),
('МБз-41'),
('МБз-4з'),
('МБо-41'),
('МБп-42'),
('МЕ-41інт'),
('Мз-41'),
('Мз-41ін'),
('Мч-41інт'),
('ОА-41'),
('ОА-41інт'),
('ОА-42'),
('ОАв-41'),
('ОАз-41'),
('ОАз-41ін'),
('ОАз-42ін'),
('ОАзч-41інт'),
('ОАод-4і'),
('ОАп-41з'),
('ОП-41'),
('ОПз-41'),
('ПМ-41'),
('ПР-41інт'),
('ПР-42інт'),
('ПЦБ-41'),
('ПЦБ-42і'),
('ПЦБз-41'),
('ТБК-41'),
('ТГВ-41'),
('ТГВз-41'),
('ТЕ-41'),
('ТЕз-41'),
('ТТ-41'),
('ТТз-41'),
('УПЕП-41'),
('УПЕП-42'),
('УПЕПз-41'),
('УПЕПз-41ін'),
('УПЕПін-41'),
('ФІН-41'),
('ФІН-41інт'),
('ФІНз-41'),
('ФІНз-41ін'),
('Ін-41'),
('ААГ-51'),
('ААГм-51'),
('АБСм-51'),
('АБСс-51'),
('АДіА-51'),
('АДіА-51м'),
('АДіАз-51'),
('АТз-51'),
('АУТП-51'),
('АУТПз-51'),
('АУТПз-5з'),
('АУТПм-52'),
('АХГ-51'),
('АХГ-51м'),
('АХГз-51'),
('ВБАз-51'),
('ВБР-51'),
('ВБР-51м'),
('ВВ-51'),
('ВВз-51інт'),
('ВВм-51'),
('ВПБм-51'),
('ГВРз-51'),
('ГЕ-51'),
('ГЕз-51'),
('ГЕм-51'),
('ГКЗз-51'),
('ГМ-51'),
('ГМз-51'),
('ГМм-51'),
('ГМс-51з'),
('ГРз-51'),
('ГТБ-51'),
('ГТБз-51'),
('ГТБм-51'),
('ГІС-51'),
('ГІС-51м'),
('ДАСм-51'),
('ДАСс-51'),
('ДС-51'),
('ЕД-51'),
('ЕДз-51'),
('ЕКО-51'),
('ЕКО-51м'),
('ЕКОз-51'),
('ЕКОз-51з'),
('ЕП-51'),
('ЕПз-51'),
('ЕПз-51ін'),
('ЕПз-61'),
('ЕПз-62ч'),
('ЕПзч-51інт'),
('ЕПм-51'),
('ЗВК-51'),
('ЗВК-51м'),
('ЗВК-52'),
('ЗВКз-51з'),
('ЗВКм-61з'),
('ЗВКс-51з'),
('ЗВКсі-51'),
('МАР-51'),
('МБГ-51'),
('МБГз-51'),
('МБГм-51'),
('МБз-5з'),
('МЕ-51м'),
('Мз-51'),
('Мз-51ін'),
('МОіА-51'),
('МОіАм-51'),
('МОіАм-61з'),
('Мп-51'),
('МПДм-51'),
('МТТ-51м'),
('Мч-51інт'),
('МІДм-51'),
('ОА-51'),
('ОАв-51'),
('ОАв-51інт'),
('ОАв-61з'),
('ОАз-51'),
('ОАз-51ін'),
('ОАз-52ін'),
('ОАз-53інт'),
('ОАз-61'),
('ОАзч-51інт'),
('ОАм-51'),
('ОАод-5і'),
('ОАп-51з'),
('ОВРВГ-51м'),
('ОП-51'),
('ОПз-51'),
('ОПм-51'),
('ОПУАТ-51'),
('ОПУАТм-51'),
('ОХВ-51'),
('ОХВм-51'),
('ПВШз-61м'),
('ПЕКО-51м'),
('ПЕКОз-61'),
('ПМ-51'),
('ПМ-52м'),
('ПР-51'),
('ПР-52'),
('ПТМ-51'),
('ПТМз-51'),
('ПТМм-51'),
('ПЦБ-51'),
('ПЦБ-51м'),
('ПЦБз-51'),
('ПЦБз-52і'),
('ПІ-51'),
('РВм-51'),
('РРКК-51'),
('РРККм'),
('ТБК-51'),
('ТБК-52м'),
('ТБКз-51'),
('ТГВ-51'),
('ТГВз-51'),
('ТГВм-52'),
('ТЕ-51'),
('ТЕз-51'),
('ТЕм-51'),
('ТТз-51'),
('УНЗз-61м'),
('УПЕПз-51'),
('УПЕПз-51ін'),
('УПЕПм-51'),
('УПЕПм-61з'),
('УПм-51'),
('УФБм-51'),
('УФЕБзм-61'),
('ФІН-51'),
('ФІНз-51'),
('ФІНз-51ін'),
('ФІНз-61'),
('ФІНм-51'),
('Ін-51'),
('ААГз-61'),
('ААГм-61з'),
('АБСм-61'),
('АБСс-61'),
('АГХз-61'),
('АУТПв-61'),
('АУТПз-61'),
('АУТПз-6м'),
('АУТПп-61з'),
('АХГ-61м'),
('ВБР-62м'),
('ВБРз-61'),
('ВВз-61'),
('ВВз-61м'),
('ГЕз-61'),
('ГМз-61'),
('ГМз-61з'),
('ГМм-61з'),
('ГМп-61з'),
('ГМс-61з'),
('ГТБз-61'),
('ГІСз-61'),
('ДАСм-61'),
('ДАСс-61'),
('ЕД-61'),
('ЕДз-61'),
('ЕКОз-61'),
('ЕКОз-61м'),
('ЕПм-61'),
('ЗВКв-61'),
('ЗВКз-61'),
('ЗВКп-61з'),
('ЗВКс-61з'),
('МБГз-61'),
('МОіАз-61'),
('МОіАм-61'),
('МПДм-61'),
('МІДм-61'),
('ОАм-61'),
('ОАм-71з'),
('ОАп-61з'),
('ОПм-61'),
('ОПУАТз-61'),
('ОПУАТз-61м'),
('ОХВз-61'),
('ПТМз-61'),
('ПТМз-61м'),
('ПЦБз-61'),
('ПЦБм-61з'),
('РРККз-61'),
('РРККч-61з'),
('РРККчз-61м'),
('ТБКз-61'),
('ТГВз-61'),
('ТГВм-61з'),
('ТГПп-61з'),
('ТЕз-61'),
('УПЕПм-61'),
('УПЕПм-71з'),
('УФБм-61'),
('ФІНм-61');