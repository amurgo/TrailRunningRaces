# Pràctica 1: Trail Running Races 2021

## Descripció
Primera pràctica corresponent a l'assignatura de Tipologia i Cicle de Vida de les Dades del Màster en Ciència de Dades de la UOC. Mitjançant tècniques d'automatització de l'us del navegador i web scraping s'obtenen les dades rellevants de totes les curses oficials de trail running organitzades durant el 2021.

## Membres de l'equip
Aquesta feina ha estat realitzada pels alumnes Àlex Peláez Membrado i Albert Amurgo Pacheco.

## Fitxers
- 

## Portabilitat
Hem elaborat scripts per a poder executar el projecte des d'entorns Windows i MacOS. Existeix un script per a cada plataforma que instal·la els entorns i les dependències automàticament.

## Rendiment
Inicialment el projecte feia servir només la llibreria Selenium per a obtebir dades i el temps d'execució era considerablement alt (>12 hores). Per millorar el rendiment *aplicarem* els següents canvis:

* Execució de 3 browsers en paral·lel
* Ús de la llibreria Requests per invocar a les crides XHR (AJAX) i evitar l'overhead de l'explorador

## Branching/Merging
La política de branching/merging es la següent:

* Cada issue té la seva propia branca a partir de main
* Els fitxers ipynb pugen sense l'output 
* Hi ha una branca per cada release que sí inclou la sortida

## Recursos
