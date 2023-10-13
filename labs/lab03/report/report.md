---
## Front matter
title: "Лабораторная работа №3"
subtitle: "Язык разметки Markdown"
author: "Самархановва Полина НКАбд-05-23"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.

# Задание

1. В соответствующем каталоге сделайте отчёт по лабораторной работе № 2 в формате
Markdown. В качестве отчёта необходимо предоставить отчёты в 3 форматах: pdf, docx
и md.
2. Загрузите файлы на github.

# Выполнение лабораторной работы

1. Для выполнения лабораторной работы на своей технике я установила следующее ПО: TeX Live, Pandoc. После чего открыла терминал и перешла в каталог курса сформированный при выполнении лабораторной работы
№2: (рис. @fig:001).

![Переход в каталог курса](image/1.png){#fig:001 width=70%}

2. Далее я обновила локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull: (рис. @fig:002).

![Обновление локального репозитория](image/2.png){#fig:002 width=70%}

3. Потом я перешла в каталог с шаблоном отчета по лабораторной работе № 3: (рис. @fig:003).

![Переход в каталог с шаблоном отчета по лабораторной работе 3](image/3.png){#fig:003 width=70%}

4. Далее я провела компиляцию шаблона с использованием Makefile с помощью команды make:(рис. @fig:004).

![Компиляция шаблона](image/4.png){#fig:004 width=70%}

 После чего проверила корректность выполнения:(рис. @fig:005).
 
![Проверка](image/5.png){#fig:005 width=70%}

5. Я удалила полученный файлы с использованием Makefile. Для этого введя команду make clean: (рис. @fig:006).

![Удаление файлов с помощью make clean](image/6.png){#fig:006 width=70%}

После этого проверила, что все файлы удалились: (рис. @fig:007).

![Проверка](image/7.png){#fig:007 width=70%}

6. Далее я открыла файл report.md c помощью текстового редактора и изучила его структуру:(рис. @fig:008)

![Открытие файла](image/8.png){#fig:008 width=70%}

7. После этого я составила отчет и скомпилировала его с использованием Makefile

8. Далее я выгрузила все на Github:(рис. @fig:009)

![Выгружение на Github](image/9.png){#fig:009 width=70%}


# Вывод

При выполнении лабораторной работы я освоила процедуру оформления отчета с помощью легковестного языка разметки Markdown. Эти навыки помогут мне в будущем

# Список литературы{.unnumbered}

1. GDB: The GNU Project Debugger. — URL: https://www.gnu.org/software/gdb/.
2. GNU Bash Manual. — 2016. — URL: https://www.gnu.org/software/bash/manual/.
3. Midnight Commander Development Center. — 2021. — URL: https://midnight-commander.
org/.
4. NASM Assembly Language Tutorials. — 2021. — URL: https://asmtutor.com/.
5. Newham C. Learning the bash Shell: Unix Shell Programming. — O’Reilly Media, 2005. —
354 с. — (In a Nutshell). — ISBN 0596009658. — URL: http://www.amazon.com/Learning␂bash-Shell-Programming-Nutshell/dp/0596009658.
6. Robbins A. Bash Pocket Reference. — O’Reilly Media, 2016. — 156 с. — ISBN 978-1491941591.
7. The NASM documentation. — 2021. — URL: https://www.nasm.us/docs.php.
8. Zarrelli G. Mastering Bash. — Packt Publishing, 2017. — 502 с. — ISBN 9781784396879.
9. Колдаев В. Д., Лупин С. А. Архитектура ЭВМ. — М. : Форум, 2018.
10. Куляс О. Л., Никитин К. А. Курс программирования на ASSEMBLER. — М. : Солон-Пресс,
2017.
11. Новожилов О. П. Архитектура ЭВМ и систем. — М. : Юрайт, 2016.
12. Расширенный ассемблер: NASM. — 2021. — URL: https://www.opennet.ru/docs/RUS/nasm/.
13. Робачевский А., Немнюгин С., Стесик О. Операционная система UNIX. — 2-е изд. — БХВ␂Петербург, 2010. — 656 с. — ISBN 978-5-94157-538-1.
14. Столяров А. Программирование на языке ассемблера NASM для ОС Unix. — 2-е изд. —
М. : МАКС Пресс, 2011. — URL: http://www.stolyarov.info/books/asm_unix.
15. Таненбаум Э. Архитектура компьютера. — 6-е изд. — СПб. : Питер, 2013. — 874 с. —
(Классика Computer Science).
16. Таненбаум Э., Бос Х. Современные операционные системы. — 4-е изд. — СПб. : Питер,
2015. — 1120 с. — (Классика Computer Science)
