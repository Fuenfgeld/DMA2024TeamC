
# Projekt CALICO-MA: CAncer LIfe COst Study for Massachusetts 
| Gruppe DMA2024TeamC

![Screenshot 2024-02-12 at 17 03 49](https://github.com/Fuenfgeld/DMA2024TeamC/assets/39849786/6847bb26-1fb9-495a-8c9d-834da9eed2c4)


**CALICO-MA** ist ein Data Management Projekt zu Studienzwecken im Rahmen des [Berufsbegleitenden Online-Master „Biomedizinische Informatik und Data Science“ der Hochschule Mannheim](https://www.master-bids.hs-mannheim.de/). Anhand des Projekts werden die spezifischen Kosten für verschiedene Krebserkrankungen, sowie die lebenslangen Kosten für Patienten und das Gesundheitssystem untersucht. Zudem wird der Frage nachgegangen, ob höhere Behandlungskosten zugleich mit einer besseren Lebensqualität einhergehen und ob geografische Unterschiede zwischen verschiedenen Countys im Bundesstaat Massachusetts vorhanden sind. Konkret werden die Fragen anhand von synthetischen Patientendaten zu Brust-, Darm- und Lungenkrebs beantwortet [Synthea TM](https://synthetichealth.github.io/synthea/). ([Walonoski et al. 2017](https://doi.org/10.1093/jamia/ocx079)).

📚 Die Dokumentation des Projektes steht unter [CALICO-MA WIKI](https://github.com/Fuenfgeld/DMA2024TeamC/wiki) zur Verfügung.

Das Projekt entstand über mehrere Entwicklungsschritte: Ein vertiefter Einblick ist dem WIKI-Abschnitt [Projekt Backlog](https://github.com/users/Fuenfgeld/projects/9/views/1) zu entnehmen.

📊 Die entstandenen Ergebnisse werden unter [Ergebnisse](https://github.com/Fuenfgeld/DMA2024TeamC/wiki/6.-Ergebnisse) und [Dashboard der Forschungsergebnisse](https://public.tableau.com/views/CALICO_Massachusetts/Dashboard1?:language=en-GB&:sid=&:display_count=n&:origin=viz_share_link) dargestellt

## Überblick der Projektschritte und des Datenflusses








## Codeentwicklung

💾 [Code zur Herstellung der Rohdatenbank](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/ETL2Datawarehouse_GS.ipynb)

🔄 [Code zum ETL-Prozess](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/ETL2Datawarehouse_GS.ipynb)

🔢 [Code zum EDA-Prozess](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/DWH_GeoVisualisierung_HS.ipynb)

🚀 [Code zum ML ] In progress

## Hinweis zur Reproduzierbarkeit
Die Rohdaten können über die Module Breast-Cancer, Lung-Cancer und Colorectal-Cancer von [Synthea TM](https://synthetichealth.github.io/synthea/) bezogen werden. Die betreffenden Daten können im Rahmen unserer [Datendokumentation](https://github.com/Fuenfgeld/DMA2024TeamC/tree/main/Data/Quelldaten/CSV_Data) eingesehen werden. 

Für die statistische Analyse und das Machine Learning Modell benötigte Daten wurden im Zuge des Einlesen der Datenbank aggregiert und sind anhand des [Codes](https://github.com/Fuenfgeld/DMA2024TeamC/blob/main/Code/DWH_GeoVisualisierung_HS_GS.ipynb) einsehbar.


