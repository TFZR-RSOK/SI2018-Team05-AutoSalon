# SI2018 - Team05 - AutoSalon
Projekat iz predmeta “Razvoj softvera otvorenog koda”, naziv rada jeste “AutoSalon” i tema rada je aplikacija koja treba da dozvoli korisnicima da dodaju, pogledaju, pretraže, izmene i obrišu automobile auto salona. Korisnicama bi bilo dozvoljeno da ocenjuju, komentarišu i razmenjuju informacije o automobilima. Na projektu rade: **Zorica Brkić – SI 29/15** i **Nemanja Tasić – SI 41/16**. Izrada aplikacije je podeljena na 4 sloja: frontend (korisnički interfejs), rest servis, middletier (logika programa) i baza podataka. Sama izrada je podeljena kako sledi: 
1. **Zorica Brkić – SI 29/15** - [@brkicz](https://github.com/brkicz "@brkicz") – Kreiranje baze podataka (MSSQL) – Stored Procedure, Views, Triggers, Transactions, Database backup, MSSQL korisnički nalozi. Kreiranje logike aplikacije i povezivanje sa bazom podataka, ujedno i kreiranje REST servisa - ASP.NET MVC, JSON
2. **Nemanja Tasić – SI 41/16** - [@ntasic89](https://github.com/ntasic89 "@ntasic89") – Kreiranje grafičkog dizajna putem ASP.NET MVC, podrška: CSS (SASS), HTML i jQuery. Kreiranje logike aplikacije i povezivanje sa bazom podataka, ujedno i kreiranje REST servisa - ASP.NET MVC, JSON

**Pošto se tim sastoji iz dva člana, projekat treba realizovati u roku od 5 nedelja. Imajući u vidu da je projekat prijavljen 28.02.2019. isti treba realizovati najkasnije do 08.04.2019.**

**NAPOMENA** : Tim je pretnodno, pre otprilike 5 meseci započeo realizaciju jednog projekta koji nije završio u predviđenom vremenskom roku i spomenuti projekat je proglašem neuspelim projektom. Repozitorijum spomenutog projekta se nalazi na [SI2018-Team04-MarkirajMe](https://github.com/TFZR-RSOK/SI2018-Team04-MarkirajMe "SI2018-Team04-MarkirajMe")

<hr/>

# Evaluacija projekta SI2018 - Team05 - AutoSalon

Pre evaluacije ukazujem na sledeće:

**Nemanja Tasić SI 46/16 je 07.04.2019. uputio molbu da tim kojem pripada tokom 08.04.2019. šalje fajlove na GitHub repozitorijum, i isti je odbijen**, citiram "Vaš zahtev ne mogu da prihvatim" **pošto već imaju nešto duži rok od predviđenih 5 nedelja imajući u vidu da su im pozivnice za repozitorijum poslate 28.02.2019.** Dakle, na raspolaganju je bilo 39 dana, nasuprot predviđenih 35 dana. **I pored odbijene molbe, tim je 08.04.2019. u periodu od 00:00 AM do 08:00 AM napravio 10 commit-ova ka formiranom udaljenom GitHub repozitorijumu**. Rečenica "Repozitorijum zaključavam sutra ujutru, i to što ste uradili evaluiram." **ne znači da postoji neko dodatno vreme za rad iako sam naveo i ovde citirao da zahtev tima ne mogu da prihvatim.**

**Navedeno je dovoljno da priloženi projekat ne evaluiram i da ga proglasim neuspešnim, ali će isti ipak biti evaluiran i pri tome, poslednji validan commit smatram commit-om od 07.04.2018. u 11:37 PM.**

Komparacije radi, projekat [NinjaManagerSimulator](https://github.com/TFZR-RSOK/SI2018-Team02-NinjaManagerSimulator/ "NinjaManagerSimulator") poseduje par commit-ova koji su se realizovali na dan odbrane rada i posle odbrane rada, ali su isti odobreni od strane predmetnog profesora / asistenta pošto se tim sastoji od 3 člana a dozvoljeni period za realizaciju navedenog projekta (zbog broja članova tima) je 18 meseci. Shodno tome, pošto su odbrane su već realizovane i formirani bodovi, spomenute naknadne minorne korekcije (manje korekcije koda i dokumentacije) ne utiču na broj bodova koji su studenti osvojili. Pre odbrane spomenutog rada [NinjaManagerSimulator](https://github.com/TFZR-RSOK/SI2018-Team02-NinjaManagerSimulator/ "NinjaManagerSimulator") utvrđeno je da poseduje sve potrebne elemente da se isti prihvati i realizuje odbrana, ali su takođe i spomenuti nedostaci uvršteni u konačnu evaluaciju bodova.

# Propusti projekta SI2018 - Team05 - AutoSalon

**Do 08.04.2019. kad je, na osnovu broja članova tima dogovoreno da realizuju projekat, nije realizovano sledeće:**

1. Nije korišćen eksterni repozitorijum tj. biblioteke koje čiji se izvorni kod nalazi na GitHub-u. Spomenuto je navedeno na [TFZR - Razvoj softvera otvorenog koda - Ocenjivanje znanja](http://www.tfzr.uns.ac.rs/Predmet/razvoj-softvera-otvorenog-koda/ocenjivanje-znanja "TFZR - Razvoj softvera otvorenog koda - Ocenjivanje znanja") gde piše **"mandatorno je koristiti GitHub kao sistem za kontrolu verzija izvornog koda kao i repozitorijume (biblioteke) čiji se izvorni kod nalazi na spomenutom servisu ili nekom od drugih servisa za kontrolu verzija."**
U projektu [NinjaManagerSimulator](https://github.com/TFZR-RSOK/SI2018-Team02-NinjaManagerSimulator/ "NinjaManagerSimulator") to je Elsa Java Serijalizacija iz repozitorijuma [Elsa Java Serialization](https://github.com/jankotek/elsa/ "Elsa Java Serialization") i navedeno piše na [NinjaManagerSimulator - Wiki - 4. Arhitektura projekta](https://github.com/TFZR-RSOK/SI2018-Team02-NinjaManagerSimulator/wiki/4.-Arhitektura-projekta "NinjaManagerSimulator - Wiki - 4. Arhitektura projekta"). Paketi iz \frontend\packages direktorijuma nisu preuzeti sa GitHub-a već je sve preuzeto putem NuGet packet manager-a u sklopu projekta AutoSalonFrontend
2. Nije izabrana licenca za projekat / repozitorijum u skladu sa licencom repozitorijuma koji je trebao da se koristi u stavci 1. [TFZR - Razvoj softvera otvorenog koda - Ocenjivanje znanja](http://www.tfzr.uns.ac.rs/Predmet/razvoj-softvera-otvorenog-koda/ocenjivanje-znanja "TFZR - Razvoj softvera otvorenog koda - Ocenjivanje znanja") Citat **"Takođe, bitno je odrediti vrstu licence softvera koji spomenuti tim razvija, kao i poštovati licence biblioteka i softvera koje se koriste za izradu istog."**
3. Nije formirana Wiki dokumentacija. Primer Wiki dokumentacije [NinjaManagerSimulator - Wiki](https://github.com/TFZR-RSOK/SI2018-Team02-NinjaManagerSimulator/wiki "NinjaManagerSimulator - Wiki")
4. Projekat je rađen sa jednog računara, potencijalno pripremljen unapred. Sve je rađeno u master grani što nije dobro. **Vidi se iz commit-ova da članovi tima koriste jednu istu putanju / folder za RESTful servis "D:\FTN\_casovi\ASP.NET\".**
5. Graf projekta na Insights / Network poseduje samo jednu liniju, što znači da je sve rađeno u master grani, bez kreiranja grana, spajanja i dr.
Uporediti [AutoSalon - Network Graf](https://github.com/TFZR-RSOK/SI2018-Team05-AutoSalon/network "AutoSalon - Network Graf")
i [NinjaManagerSimulator - Metwork Graf](https://github.com/TFZR-RSOK/SI2018-Team02-NinjaManagerSimulator/network "NinjaManagerSimulator - Metwork Graf")
6. UML Use Case dijagram koji je koleginica Zorica Brkić SI 29/15 poslala 04.03.2019. nije adekvatno urađen. Na navedeno joj je ukazano 04.03.2019. i koleginica nije korigovala spomenuti dijagram a ni uputila bilo kakvu korespodenciju ka predmetnom profesoru / asistentu od navedenog datuma.
7. Folder Logic je prazan, tu je trebala da se nalazi logika projekta. Sa Commit-ovima od 08.04.2019. tu se nalazi validator modela u kojem se ispituje da li određeni atributi poseduju null vrednosti, tj. da li su uneti. Postoji očigledna razlika između logike projekta i validacije modela.
8. Postoje određeni potencijalni bezbednosni propusti i odnose se na upotrebu bootstrap-a u:
SI2018-Team05-AutoSalon/frontend/AutoSalonFrontend/packages.config
SI2018-Team05-AutoSalon/restservice/AutoSalonRestService/packages.config
Oba commit-a je realizovao kolega Nemanja Tasić SI 46/16, prvi 02.04.2019. a drugi 07.04.2019.
GitHub je navedeni propust markirao sa **"moderate severity".**
Navedeni propust se relativno lako rešava, ali je prisutan i na isti se mora ukazati.
9. U folderu SI2018-Team05-AutoSalon/database/ se nalazi projekat AutoSalonDataAcces pa se postavlja pitanje, zašto se C# projekat smešta u folder u kojem bi trebalo da se nalaze samo SQL skripte. Sa aspekta razmeštaja projektnih elemenata navedeno se može smatrati propustom, ali svakako nije krucijalan i predstavlja jednu od potencijalnih tema za dalju diskusiju.
10. Komentarisanje koda je gotovo nepostojeće, dok su commit poruke korektne.

**Imajući u vidu prethodno izloženo, projekat se smatra NEUSPELIM / NEREALIZOVANIM projektom.**

Čak i da se izuzmu commit-ovi koji su usledili nakon dozvoljenog vremenskog roka, i projekat gleda kao celina zajedno sa poslednjim commit-om od 08.04.2019. u 07:54 AM postoje prethodno izloženi propusti i ne zadovoljavanje traženih stavki tj. specifikacije projekta (seminarskog rada).

Iako je projekat zvanično započet 28.02.2018. prvi commit u formi jednostavne SQL skripte je formiran 04.03.2019. a onda je usledio veliki period neaktivnosti do 02.04.2019. što potencijalno daje potporu opservacijama iz tački 4 i 5. Od ukupno 29 commit-ova, 9 je realizovao predmetni profesor / asistent dok je formirao repozitorijum i README.MD fajlove, dok je kolega Nemanja Tasić SI 46/16 realizovao 13 commita, a koleginica Zorica Brkić SI 29/15 6 commita. Dakle, na osnovu prethodno izloženog, stvara se utisak da su 4 nedelje propuštene a iskorišćena samo 5 dana.

**Spomenuti tim može, ukoliko to želi, prijaviti novu temu, ali tek za 6 meseci, dakle ne pre 08.10.2019, gde će opet važiti isti vremenski rok za realizaciju projekta ukoliko tim ima 2 člana.**

doc. dr Predrag Pecev <br/>
pecev@tfzr.uns.ac.rs

**09.04.2019.**
