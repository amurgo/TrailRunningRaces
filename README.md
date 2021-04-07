# Pràctica 1: Trail Running Races 2021

## Descripció
Primera pràctica corresponent a l'assignatura de Tipologia i Cicle de Vida de les Dades del Màster en Ciència de Dades de la UOC. Mitjançant tècniques d'automatització de l'us del navegador i web scraping s'obtenen les dades rellevants de totes les curses oficials de trail running organitzades durant el 2021.

## Membres de l'equip
Aquesta feina ha estat realitzada pels alumnes Àlex Peláez Membrado i Albert Amurgo Pacheco.

## Fitxers
* PRA1.ipynb: Fitxer amb el codi font
* WindowsEnvironment.ps1: Instal·lació entorn Windows
* Trail Running Races 2020-2029.csv: Fitxer de sortida
* PRACTICA1.docx: Document de la pràctica

## Disseny 
Inicialment es parteix el període en tants subperíodes com fils d’execució desitgem i executem en paral·lel cada fil.

Cada fil torna a dividir el subperíode en subperíodes de 30 dies (mesos) ja que hem detectat errors quan l’explorador manegat per Selenium carregava molts continguts. Per a cada període mensual obrim una nova instància del navegador i:

* Carreguem totes les curses del període.
* Amb BeutifulSoup obtenim les dades principals.
* Concatenem totes les dades dels mesos anteriors.

Un cop han acabat els fils executats es concatenen tots els dataframes i generem la clau primària (ID, Any)
Per a cada cursa fem una crida AJAX per a obtenir els detalls. Donat que és una execució molt ràpida 6 requests/segon no hem cregut oportú fer una execució paral·lela.
Amb els detalls anem construint una dataframe amb la mateixa clau primària (id_course, annee) i finalment fem un merge amb l’inicial. Per acabar, exportem el dataframe a un fitxer CSV.

A la <a href="DOCX/Figure1.png">Figura 1</a> podem veure el disseny a alt nivell.

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

