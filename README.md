# Pràctica 1: Trail Running Races 2021

## Descripció
Primera pràctica corresponent a l'assignatura de Tipologia i Cicle de Vida de les Dades del Màster en Ciència de Dades de la UOC. Mitjançant tècniques d'automatització de l'us del navegador i web scraping s'obtenen les dades rellevants de totes les curses oficials de trail running organitzades durant el 2021.

## Membres de l'equip
Aquesta feina ha estat realitzada pels alumnes Àlex Peláez Membrado i Albert Amurgo Pacheco.

## Fitxers
* PRA1.ipynb: Fitxer amb el codi font
* WindowsEnvironment.ps1: Instal·lació entorn Windows
* Trail Running Races 2020-2029.csv: Fitxer de sortida
* PRACTICA1.pdf: Document de la pràctica

## Portabilitat
Hem elaborat scripts per a poder executar el projecte des d'entorns Windows i MacOS. Existeix un script per a cada plataforma que instal·la els entorns i les dependències automàticament.

## Rendiment
Inicialment el projecte feia servir només la llibreria Selenium per a obtebir dades i el temps d'execució era considerablement alt (>12 hores). Per millorar el rendiment *aplicarem* els següents canvis:

* Execució de 3 browsers en paral·lel
* Ús de la llibreria Requests per invocar a les crides XHR (AJAX) i evitar l'overhead de l'explorador

Amb aquests canvis passem a una execució molt més ràpida (menys d'una hora). Podria ser encara me´s ràpida fent servir únicament la llibreria requests però hem mantingut Selenium per poder fer servir diferetns alternatives.

## Branching/Merging
La política de branching/merging és la següent:

* Cada issue té la seva propia branca a partir de main
* Els fitxers ipynb pugen sense l'output 

