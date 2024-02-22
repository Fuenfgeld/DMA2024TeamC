
# Projekt CALICO-MA: CAncer LIfe COst Study for Massachusetts 
| Gruppe DMA2024TeamC

![Dashboard](https://github.com/Fuenfgeld/DMA2024TeamC/assets/39849786/34dece6f-6e3a-46c2-a3d6-4bb1cefe5bed)



[Dashboard der Forschungsergebnisse](https://public.tableau.com/views/CALICO_Massachusetts/Dashboard1?:language=en-GB&:sid=&:display_count=n&:origin=viz_share_link) 

**CALICO-MA** ist ein Data Management Projekt zu Studienzwecken im Rahmen des [Berufsbegleitenden Online-Master „Biomedizinische Informatik und Data Science“ der Hochschule Mannheim](https://www.master-bids.hs-mannheim.de/). Anhand des Projekts werden die spezifischen Kosten für verschiedene Krebserkrankungen, sowie die lebenslangen Kosten für Patienten und das Gesundheitssystem untersucht. Zudem wird der Frage nachgegangen, ob höhere Behandlungskosten zugleich mit einer besseren Lebensqualität einhergehen und ob geografische Unterschiede zwischen verschiedenen Countys im Bundesstaat Massachusetts vorhanden sind. Konkret werden die Fragen anhand von synthetischen Patientendaten zu Brust-, Darm- und Lungenkrebs beantwortet [Synthea TM](https://synthetichealth.github.io/synthea/)  ([Walonoski et al. 2017](https://doi.org/10.1093/jamia/ocx079)).

📚 Die Dokumentation des Projektes steht unter [CALICO-MA WIKI](https://github.com/Fuenfgeld/DMA2024TeamC/wiki) zur Verfügung.

Das Projekt entstand über mehrere Entwicklungsschritte: Ein vertiefter Einblick ist dem WIKI-Abschnitt [Projekt Backlog](https://github.com/users/Fuenfgeld/projects/9/views/1) zu entnehmen.

📊 Die entstandenen Ergebnisse werden unter [Ergebnisse](https://github.com/Fuenfgeld/DMA2024TeamC/wiki/6.-Ergebnisse) dargestellt

## Überblick der Projektschritte und des Datenflusses

![Projektdiagramm](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Documentation/Projektdiagramm_CALICO_MA.png)




## Codeentwicklung

In dem Order [Code](https://github.com/Fuenfgeld/DMA2024TeamC/tree/main/Code) sind die beiden Jupyter Notebook Scripte [ETL2Datawarehouse.ipynb](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/ETL2Datawarehouse.ipynb) für den [ETL-Prozess](https://github.com/Fuenfgeld/DMA2024TeamC/wiki/4.-ETL-Prozess) und [DWH_GeoVisualisierung.ipynb](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/DWH_GeoVisualisierung.ipynb) für die [Explorative Datenanalyse](https://github.com/Fuenfgeld/DMA2024TeamC/wiki/5.-Explorative-Datenanalyse) abgelegt.

In diesen beiden Jupyter Notebooks sind jeweils die links zu Google Colab zu finden um diese in der dortigen Umgebung auszuführen. Die benötigten Bibliotheken werden am Anfang der Scripte geladen. Zudem wird eine Verbindung zum persönlichen Google Drive hergestellt und in diesem das Repository geclont um die benötigten CSV-Daten zur erhalten. 

Für das Ausführen der Scripte außerhalb von Google Colab (z.B. wie in diesem Projekt das lokal genutzte MS Visual Studio Code mit Windows Subsystem für Linux, Ubuntu 22.04.3 LTS) wurde für die Python-Verwaltung [Poetry](https://python-poetry.org/) verwendet. Die hierfür nötigen Konfigurationsdateien [poetry.lock](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/poetry.lock) und [pyproject.toml](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/pyproject.toml) sind unter [Code](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/) zu finden.

Für den Low-Code-Pfad wurde eine Testversion von [Tableau Prep Builder Version 2023.1.3 (23.13.23.0614.0602)](https://www.tableau.com/support/releases/prep/2023.1.3) verwendet, um die vereinigten Tabellen mit den drei Krebsarten und die Eingabedatei [Fact_table.csv](https://github.com/Fuenfgeld/DMA2024TeamC/tree/main/Data/Tableau) zu generieren, die für die Erstellung des [Ergebnis-Dashboards](https://public.tableau.com/app/profile/monica.espitia/viz/CALICO_Massachusetts/Dashboard1) verwendet werden kann (erstellt mit der kostenlosen Plattform [Tableau Public](https://www.tableau.com/de-de/products/public)).

Die detaillierte Dokumentation der mit Tableau durchgeführten Datenaufbereitung und -transformation finden Sie unter dem Kapitel [4.1 ETL Low Code (Tableau)](https://github.com/Fuenfgeld/DMA2024TeamC/wiki/4.1-ETL-Low-Code-(Tableau)) in unserem Projekt-Repository hier in Github. [geocodio](https://www.geocod.io/) wurde verwendet, um die fehlenden Daten der Postleitzahlen zu ergänzen (46 % der Patienten hatten keine Postleitzahl in der Patiententabelle), die für die Erstellung des Ergebnis-Dashboards in Tableau Public benötigt wurden. Die Tabelle mit den vollständigen Informationen zu den Postleitzahlen finden Sie hier [facts_table_complete_ZIP.csv](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Data/Tableau/facts_table_complete_ZIP.csv). 


## Hinweis zur Reproduzierbarkeit
Die Rohdaten können über die Module Breast-Cancer, Lung-Cancer und Colorectal-Cancer von [Synthea TM](https://synthetichealth.github.io/synthea/) bezogen werden. Die betreffenden Daten können im Rahmen unserer [Datendokumentation](https://github.com/Fuenfgeld/DMA2024TeamC/tree/main/Data/Quelldaten/CSV_Data) eingesehen werden. 

Für die statistische Analyse und das Machine Learning Modell benötigte Daten wurden im Zuge des Einlesen der Datenbank aggregiert und sind anhand des [Codes](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/DWH_GeoVisualisierung_HS_GS.ipynb) einsehbar.


