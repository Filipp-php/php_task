-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Янв 20 2022 г., 16:52
-- Версия сервера: 8.0.25
-- Версия PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `documents`
--

CREATE TABLE `documents` (
  `d_id` int NOT NULL,
  `pr_num` int NOT NULL,
  `doc_name` text NOT NULL,
  `doc_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `documents`
--

INSERT INTO `documents` (`d_id`, `pr_num`, `doc_name`, `doc_link`) VALUES
(39, 2282, '61e987d25012c_2. ТЗ ГСМ.docx', 'https://storage.eltox.ru/766e466e-c21c-4162-b6c3-6e9ec08ae64a/61e987d25012c_2. ТЗ ГСМ.docx'),
(40, 2282, '61e987d60d9e4_3. Обоснование НМЦД.docx', 'https://storage.eltox.ru/766e466e-c21c-4162-b6c3-6e9ec08ae64a/61e987d60d9e4_3. Обоснование НМЦД.docx'),
(41, 2282, '61e987dac032e_4. Проект Договора ГСМ.docx', 'https://storage.eltox.ru/766e466e-c21c-4162-b6c3-6e9ec08ae64a/61e987dac032e_4. Проект Договора ГСМ.docx'),
(42, 2282, '61e987def3e60_Извещение и документация ЭЗК Поставка топлива.docx', 'https://storage.eltox.ru/766e466e-c21c-4162-b6c3-6e9ec08ae64a/61e987def3e60_Извещение и документация ЭЗК Поставка топлива.docx'),
(43, 2282, '61e987e391abd_Положение.doc', 'https://storage.eltox.ru/766e466e-c21c-4162-b6c3-6e9ec08ae64a/61e987e391abd_Положение.doc'),
(44, 2281, '61e7d16d6fef3_Извещение.doc', 'https://storage.eltox.ru/f2c0a317-1cde-4373-a146-49d4c99b8837/61e7d16d6fef3_Извещение.doc'),
(45, 2280, '61dede87a1f68_Извещение и документация запроса котировок молоко.docx', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61dede87a1f68_Извещение и документация запроса котировок молоко.docx'),
(46, 2280, '61dedfdba09aa_Проект Договора Молоко 1 кв. 2022 (февраль, март).docx', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61dedfdba09aa_Проект Договора Молоко 1 кв. 2022 (февраль, март).docx'),
(47, 2280, '61dedfe3b6d0e_Обоснование молоко на 1 кв. (февраль, март) 2022г..pdf', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61dedfe3b6d0e_Обоснование молоко на 1 кв. (февраль, март) 2022г..pdf'),
(48, 2280, '61dedfe889017_Положение о закупках 20.07.2021.pdf', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61dedfe889017_Положение о закупках 20.07.2021.pdf'),
(49, 2280, '61dedfed0a5ae_Изменения в Положение о закупке товаров, работ и услуг.pdf', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61dedfed0a5ae_Изменения в Положение о закупке товаров, работ и услуг.pdf'),
(50, 2279, '61dc260fc0a12_Извещение и документация запроса котировок фрукты.docx', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc260fc0a12_Извещение и документация запроса котировок фрукты.docx'),
(51, 2279, '61dc2613c3468_Проект договора на поставку фруктов.doc', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc2613c3468_Проект договора на поставку фруктов.doc'),
(52, 2279, '61dc261af24ff_Положение о закупке товаров_compressed_compressed.pdf', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc261af24ff_Положение о закупке товаров_compressed_compressed.pdf'),
(53, 2278, '61dc235c6b3ce_Извещение и документация запроса котировок молоко.docx', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc235c6b3ce_Извещение и документация запроса котировок молоко.docx'),
(54, 2278, '61dc236152afa_Проект договора на молоко.doc', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc236152afa_Проект договора на молоко.doc'),
(55, 2278, '61dc2369300c9_Положение о закупке товаров_compressed_compressed.pdf', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc2369300c9_Положение о закупке товаров_compressed_compressed.pdf'),
(56, 2277, '61dc19adb7155_Извещение и документация запроса котировок крупа.docx', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc19adb7155_Извещение и документация запроса котировок крупа.docx'),
(57, 2277, '61dc19c307221_Проект договора на крупа, мука, макаронные изделия.doc', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc19c307221_Проект договора на крупа, мука, макаронные изделия.doc'),
(58, 2277, '61dc19cd50847_Положение о закупке товаров_compressed_compressed.pdf', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc19cd50847_Положение о закупке товаров_compressed_compressed.pdf'),
(59, 2276, '61dc15e14bfc1_Извещение и документация запроса котировок бакалея.docx', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc15e14bfc1_Извещение и документация запроса котировок бакалея.docx'),
(60, 2276, '61dc15e5867f8_Проект договора на поставку бакалеи.doc', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc15e5867f8_Проект договора на поставку бакалеи.doc'),
(61, 2276, '61dc15ee8d32a_Положение о закупке товаров_compressed_compressed.pdf', 'https://storage.eltox.ru/4b9f5821-6471-4122-b9a8-33fa84ad1b2d/61dc15ee8d32a_Положение о закупке товаров_compressed_compressed.pdf'),
(62, 2275, '61cc50bd8537b_Извещение котировка.docx', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61cc50bd8537b_Извещение котировка.docx'),
(63, 2275, '61cc50c127f87_02 Описание предмета закупки.docx', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61cc50c127f87_02 Описание предмета закупки.docx'),
(64, 2275, '61cc50c38b1ae_2.1 Обоснование НМЦД.docx', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61cc50c38b1ae_2.1 Обоснование НМЦД.docx'),
(65, 2275, '61cc50c65fbda_04 Проект договора.docx', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61cc50c65fbda_04 Проект договора.docx'),
(66, 2275, '61cc50c9024c5_05 Положение о закупках 2021г..docx', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61cc50c9024c5_05 Положение о закупках 2021г..docx'),
(67, 2274, '61ba03333f926_Извещение котировка.docx', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61ba03333f926_Извещение котировка.docx'),
(68, 2274, '61ba0336cecf2_05 Положениео закупке от 06.10.2021 с изменениями.docx', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61ba0336cecf2_05 Положениео закупке от 06.10.2021 с изменениями.docx'),
(69, 2274, '61ba03390f796_04 Проект договора.doc', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61ba03390f796_04 Проект договора.doc'),
(70, 2274, '61ba033b37ed9_2.1 Обоснование НМЦД.docx', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61ba033b37ed9_2.1 Обоснование НМЦД.docx'),
(71, 2274, '61ba033d74205_02 Описание предмета закупки.docx', 'https://storage.eltox.ru/a9dae8ad-1d60-4411-89bf-e8a53c9ff262/61ba033d74205_02 Описание предмета закупки.docx'),
(72, 2273, '61b876696b866_Извещение котировка.docx', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61b876696b866_Извещение котировка.docx'),
(73, 2273, '61b8766c30419_02 Описание предмета закупки.docx', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61b8766c30419_02 Описание предмета закупки.docx'),
(74, 2273, '61b8766e69990_2.1 Обоснование НМЦД.docx', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61b8766e69990_2.1 Обоснование НМЦД.docx'),
(75, 2273, '61b87670b04d2_04 Проект договора.doc', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61b87670b04d2_04 Проект договора.doc'),
(76, 2273, '61b876734ced5_05 Положениео закупке.pdf', 'https://storage.eltox.ru/411f5a39-adb3-4339-8cf4-bc20b47d9c41/61b876734ced5_05 Положениео закупке.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `procedures`
--

CREATE TABLE `procedures` (
  `number` int NOT NULL,
  `ooc` bigint NOT NULL,
  `link` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `procedures`
--

INSERT INTO `procedures` (`number`, `ooc`, `link`, `email`) VALUES
(2273, 32110941864, 'https://etp.eltox.ru/procedure/read/2273', 'madou26@mail.ru'),
(2274, 32110949539, 'https://etp.eltox.ru/procedure/read/2274', 'madou5@mail.ru'),
(2275, 32111009557, 'https://etp.eltox.ru/procedure/read/2275', 'madou5@mail.ru'),
(2276, 32211019748, 'https://etp.eltox.ru/procedure/read/2276', 'madou-6@mail.ru'),
(2277, 32211019873, 'https://etp.eltox.ru/procedure/read/2277', 'madou-6@mail.ru'),
(2278, 32211020124, 'https://etp.eltox.ru/procedure/read/2278', 'madou-6@mail.ru'),
(2279, 32211020170, 'https://etp.eltox.ru/procedure/read/2279', 'madou-6@mail.ru'),
(2280, 32211028346, 'https://etp.eltox.ru/procedure/read/2280', 'madou26@mail.ru'),
(2281, 32211047302, 'https://etp.eltox.ru/procedure/read/2281', 'rvl.komi@yandex.ru'),
(2282, 32211053103, 'https://etp.eltox.ru/procedure/read/2282', 'uslugi-nest@yandex.ru');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `pr_num` (`pr_num`);

--
-- Индексы таблицы `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`number`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `documents`
--
ALTER TABLE `documents`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`pr_num`) REFERENCES `procedures` (`number`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
