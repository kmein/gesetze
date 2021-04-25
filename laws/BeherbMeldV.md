# [BeherbMeldV] Verordnung über die elektronische Speicherung von Daten zur Einhaltung der besonderen Meldepflicht in Beherbergungsstätten  (Beherbergungsmeldedatenverordnung - BeherbMeldV)

Ausfertigungsdatum: 05.06.2020

 

## Eingangsformel

Auf Grund des § 56 Absatz 2 des Bundesmeldegesetzes vom 3. Mai 2013 (BGBl. I S. 1084), der durch Artikel 1 Nummer 4 Buchstabe a des Gesetzes vom 22. November 2019 (BGBl. I S. 1746) eingefügt worden ist, verordnet das Bundesministerium des Innern, für Bau und Heimat:


## § 1 – Anwendungsbereich

Diese Verordnung regelt die Einzelheiten der elektronischen Speicherung und Bereitstellung der Daten von beherbergten Personen in Beherbergungsstätten nach § 29 Absatz 5 und § 30 Absatz 4 des Bundesmeldegesetzes durch die Leiter der Beherbergungsstätten oder der Einrichtungen nach § 29 Absatz 4 des Bundesmeldegesetzes.


## § 2 – Dateispezifische Anforderungen

(1) Die in § 1 genannten Leiter der Beherbergungsstätten oder der Einrichtungen haben zu jeder beherbergten Person nach § 29 Absatz 2 des Bundesmeldegesetzes einen Datensatz vollständig am Tag der Ankunft zu speichern.

(2) Die Daten sind als strukturierter maschinenlesbarer Datensatz im Dateiformat der Extensible Markup Language (XML) zu speichern. Die Daten sind im UNICODE-Zeichensatz UTF 8 zu codieren. Das Bundesministerium des Innern, für Bau und Heimat gibt die Struktur des XML-Dokumentes als XML-Schema-Definition (XSD) im Bundesanzeiger bekannt.

(3) Die Datei ist nach dem Muster „JJJJMMTT\_BeherbMeldeschein\_Zaehler.xml“ zu benennen. Dabei ist einzusetzen:

1. bei „JJJJ“ das Jahr des ersten Beherbergungstags mit vier Ziffern,

2. bei „MM“ der Monat des ersten Beherbergungstags mit zwei Ziffern,

3. bei „TT“ der Kalendertag des ersten Beherbergungstags mit zwei Ziffern und

4. bei „Zaehler“ eine fortlaufende Nummerierung der Datensätze eines Tages beginnend mit der Zahl 1.

(4) Die Datensätze sind sortiert in Ordnerstrukturen nach Jahren und Monaten wie in Absatz 3 Nummer 1 und 2 bestimmt zu speichern.

(5) In jedem Datensatz sind die zu erhebenden Daten nach der Anlage zu dieser Verordnung zu speichern.

(6) Landesrechtliche Vorgaben zur Ausführung des Bundesmeldegesetzes bleiben unberührt.


## § 3 – Bereitstellung der Daten

Verlangt eine nach § 30 Absatz 4 Satz 3 des Bundesmeldegesetzes berechtigte Behörde gespeicherte Dateien, so hat der Leiter der Beherbergungsstätte oder der Einrichtung die Datensätze entsprechend den Anforderungen des § 2 zur Einsichtnahme bereitzustellen und eine Übertragung auf Datenträger oder Speichersysteme zu ermöglichen.


## § 4 – Inkrafttreten

Diese Verordnung tritt am Tag nach der Verkündung in Kraft.


## Anlage – (zu § 2 Absatz 5)Bei der Speicherung der Daten im Datensatz zu verwendende Bezeichner

(Fundstelle: BGBl. I 2020, 1219)

<table width="100%" style="border-collapse: collapse;border-top: 0.5pt solid ; border-bottom: 0.5pt solid ; border-left: 0.5pt solid ; border-right: 0.5pt solid ; "><colgroup><col style="width: 4%" /><col style="width: 30%" /><col style="width: 66%" /></colgroup><tbody><tr class="odd"><td style="text-align: left;"> </td><td style="text-align: center;">Bezeichner</td><td style="text-align: center;">Erläuterung</td></tr><tr class="even"><td style="text-align: left;"> 1.</td><td style="text-align: center;">DatumAnkunft</td><td style="text-align: center;">Datum der Ankunft der beherbergten Person (JJJJMMTT)</td></tr><tr class="odd"><td style="text-align: left;"> 2.</td><td style="text-align: center;">DatumAbreise</td><td style="text-align: center;">Datum der voraussichtlichen Abreise (JJJJMMTT)</td></tr><tr class="even"><td style="text-align: left;"> 3.</td><td style="text-align: center;">Familienname</td><td style="text-align: center;">vollständiger derzeitiger Familienname mit Namensbestandteilen, jeweils durch Leerzeichen getrennt</td></tr><tr class="odd"><td style="text-align: left;"> 4.</td><td style="text-align: center;">Vornamen</td><td style="text-align: center;">sämtliche Vornamen, jeweils durch Leerzeichen getrennt</td></tr><tr class="even"><td style="text-align: left;"> 5.</td><td style="text-align: center;">Geburtsdatum</td><td style="text-align: center;">Geburtsdatum (JJJJMMTT)</td></tr><tr class="odd"><td style="text-align: left;"> 6.</td><td style="text-align: center;">Staatsangehoerigkeiten</td><td style="text-align: center;">sämtliche Staatsangehörigkeiten</td></tr><tr class="even"><td style="text-align: left;"> 7.</td><td style="text-align: center;">Anschrift</td><td style="text-align: center;">bestehend aus<dl><dt>a)</dt><dd>Staat, in dem sich der Wohnort befindet</dd><dt>b)</dt><dd>Postleitzahl des Wohnorts</dd><dt>c)</dt><dd>Wohnortbezeichnung</dd><dt>d)</dt><dd>sofern vorhanden, Zusätze zum Wohnort</dd><dt>e)</dt><dd>Straßenbezeichnung</dd><dt>f)</dt><dd>Hausnummerziffern sowie gegebenenfalls zusätzlich Buchstaben oder Zusatzziffern</dd><dt>g)</dt><dd>sofern vorhanden, Ergänzungen zur Anschrift</dd></dl></td></tr><tr class="odd"><td style="text-align: left;"> 8.</td><td style="text-align: center;">AnzahlAngehoerige</td><td style="text-align: center;">Anzahl der mitreisenden Angehörigen gemäß § 29 Absatz 2 Satz 2 des Bundesmeldegesetzes</td></tr><tr class="even"><td style="text-align: left;"> 9.</td><td style="text-align: center;">AnzahlMitreisende</td><td style="text-align: center;">Anzahl der Mitreisenden bei Reisegesellschaften gemäß § 29 Absatz 2 Satz 3 des Bundesmeldegesetzes</td></tr><tr class="odd"><td style="text-align: left;">10.</td><td style="text-align: center;">StaatsangehoerigkeitMitreisende</td><td style="text-align: center;">sämtliche Staatsangehörigkeiten der Mitreisenden der Reisegesellschaften</td></tr><tr class="even"><td style="text-align: left;">11.</td><td style="text-align: center;">SeriennummerPass</td><td style="text-align: center;">Seriennummer des anerkannten und gültigen Passes oder Passersatzpapiers ausländischer Personen oder Angaben zu Abweichungen oder Nichtvorlage</td></tr><tr class="odd"><td style="text-align: left;">12.</td><td style="text-align: center;">Zahlungszuordnungsnummer</td><td style="text-align: center;">bestehend aus der zweckgebunden Zuordnungsnummer des elektronischen Zahlungsvorganges (Token) und aus dem Namen des Zahlungsdienstleisters der Beherbergungsstätte, der den Token generiert</td></tr><tr class="even"><td style="text-align: left;">13.</td><td style="text-align: center;">Beherbergungsstaette</td><td style="text-align: center;">bestehend aus Namen und Anschrift der Beherbergungsstätte oder Einrichtung, die die Daten speichert</td></tr></tbody></table>
