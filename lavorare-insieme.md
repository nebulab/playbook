# Lavorare insieme

## Orari e luoghi di lavoro 🕙 

La nostra settimana lavorativa si costituisce di 4 giorni dedicati a lavori per clienti esterni (non necessariamente sempre con lo stesso cliente) e di 1 giorno, il venerdì, dedicato solo all'apprendimento, ai progetti interni o al contributo open source.

Le giornate lavorative sono di 8 ore piuttosto flessibili. Per legge non si possono comunque superare le 11 ore giornaliere. L'orario adottato dalla maggior parte di noi è compreso tra le 9:30 e le 18:30 considerando un’ora circa per la pausa pranzo. L’organizzazione del lavoro deve essere comunque vista nell’ottica del lavoro in team. Quindi chi sceglie di lavorare in orari diversi deve essere attento a non impedire ad un altro di svolgere correttamente il proprio lavoro.

Riguardo al luogo la flessibilità è ancora maggiore. Nebulab al momento ha 2 sedi operative, una a Pescara e una a Latina, ma si è liberi di lavorare ovunque si voglia (volendo anche da casa propria).

Questa flessibilità in termini di orario e luogo è resa possibile dall'uso continuo e attento di strumenti ad hoc.

#### Stand-up Meeting Settimanali 🔈 

Venerdì mattina, appena siamo tutti operativi ci riuniamo in una video call (Skype) per fare il punto della situazione tutti insieme. L'obiettivo è quello di impiegare un paio di minuti a testa per discutere di quello che si è fatto durante la settimana e quello che si farà nella prossima, evidenziando dove necessario criticità o successi di quanto sta accadendo nei progetti su cui lavoriamo. Questo è importante perché non tutti lavoriamo sugli stessi progetti e perché spesso non abbiamo l'occasione di confrontarci tutti insieme su di essi.

Ogni venerdì, alle 10:00 Slackbot ci ricorda:

```
Reminder: Stand-up Meeting del Venerdì

Domande

* cosa si è fatto durante la settimana. Ci sono stati problemi?
* cosa si fa oggi (venerdì)?
* cosa si farà la settimana prossima?
```

##### Esempio

Un esempio molto basilare di intervento potrebbe essere:

```
Ciao a tutti, questa settimana ho lavorato sul progetto NASA, oggi mi occuperò 
della sponsorizzazione del RubyDay e di risolvere un bug sul sito di Nebulab; 
la settimana prossima continuerò a lavorare sul progetto NASA, per il quale 
siamo quasi pronti per il lancio della nuova piattaforma web.
```

##### Risolviamo insieme i problemi e celebriamo insieme i successi

Cerchiamo di tenere gli interventi al minimo indispensabile ma non esageriamo! Se ci sono cose importanti di cui parlare facciamolo pure, al massimo qualcuno suggerirà di continuare il discorso in separata sede con un numero ristretto di partecipanti.

È importante che in questi piccoli recap vengano fuori anche:

- spunti di miglioramento
- argomenti di confronto
- cose che non vanno bene
- cose che vanno bene

##### Report degli Stand-Up

Spesso capita che vengano fuori degli argomenti di cui ridiscutere nei prossimi stand-up o separatamente. Per questo utilizziamo una board Trello dedicata: [Stand-Up](https://trello.com/b/GjXy3rlF/stand-up).

Qui, per ogni meeting, si farà una card contenente un recap dei punti lasciati in sospeso. Le card avranno una label `Cose in sospeso` finché ci saranno punti ancora irrisolti al loro interno. Alla fine di ogni meeting faremo un rapido check tutti insieme delle vecchie card.

**NB**: Questo approccio è sperimentale, se ci sono idee migliori per la gestione di questo aspetto parliamone nel prossimo stand-up!

## Strumenti 🔧 

### Google Apps 📱
Usiamo la versione "business" dei servizi di google per usare e condividere:
* Email ([Gmail](https://mail.google.com))
* Calendari ([Google Calendar](https://www.google.com/calendar/))
* Contatti ([Google Contacts](https://www.google.com/contacts/))
* File ([Drive](https://drive.google.com))
* Meeting con clienti, collaboratori ed altri membri del team ([Google Hangout](https://plus.google.com/hangouts))

Per poter usufruire di tutti questi servizi (dopo essere stati registrati
appositamente con un nuovo account) si può seguire [questa procedura](http://support.apple.com/kb/PH14276)
per installare in locale sul proprio Mac tutti i servizi Google.

Tra questi servizi prestate particolare ai calendari ed ai contatti sul quale
potrete trovare diverse informazioni condivise quali contatti utili (clienti,
freelance, etc.) e calendari di appuntamenti, ferie e malattia.

### Slack 💬 

Per chattare e tenersi in contatto con gli altri. È fondamentale per comunicare
e capire i ogni momento chi si sta occupando di cosa.
L'account principale è https://nebulab.slack.com/ e se si è in possesso di un
indirizzo email del dominio nebulab.it è possibile accedere scegliendo una
password.

Su Slack è possibile trovare alcune stanze pubbliche a cui tutti possono
partecipare liberamente (e il cui nome dovrebbe essere abbastanza
auto-esplicativo, come per `#bestemmie-varie`) e delle stanze private che
solitamente vengono usate per parlare di singoli progetti e/o clienti su cui non
tutti devono lavorare.

In chat è possibile anche ricevere un'infinità di messaggi automatici che
informano di vari eventi che si verificano. Dallo stato dei server ai tweet
dell'account [@nebulab_it](https://twitter.com/nebulab_it) ci sono chicche ed
informazioni utili per tutti i gusti.

Possono essere utilizzati anche alcuni comandi utili. Il più utile di tutti è
`/deploy` con cui si possono effettuare i deploy delle applicazioni che Nebulab
gestice. Ad esempio `/deploy nebulab staging` effettuerà un deploy in `staging`
del sito web [nebulab.it](http://nebulab.it).

Altri comandi invece non servono proprio a niente se non a cazzeggiare... Occhio
a quello che scrivete perchè alcune parole riceveranno una risposta automatica,
a volte divertente ma a volte anche offensiva! :P


###### Temi di Slack

Nebulab light: `#F0F7FD,#EBEFF2,#FEF135,#222222,#FFFFFF,#222222,#5FBFFD,#5FBFFD`
Nebulab dark:  `#1D1D1D,#000000,#1373B1,#FFFFFF,#5FBFFD,#FFFFFF,#FEF135,#5FBFFD`

#### Linee guida per usare la chat

Lavorare da remoto/con sedi diverse ci fornisce tanti vantaggi ma ha anche aspetti negativi. La chat è a tutti gli effetti uno dei più importanti punti di aggregazione che abbiamo per creare e mantenere solidità e compattezza nel team. Collezioniamo qui alcuni punti da seguire nel suo utilizzo:

- Salutiamo in `#general` appena arriviamo e quando andiamo via.
- Usiamo la chat anche per le cavolate.
- Non preoccupiamoci di disturbare gli altri, chi è occupato non leggerà.
- Evitiamo le chat private il più possibile, soprattutto per richieste di aiuto o supporto. Altri potrebbero avere una risposta migliore, imparare dalla domanda o semplicemente avere voglia di scatenare un divertentissimo flame 🔥 . 

## Istruzione 📚 

Tutti i membri del team possono avere accesso a libri, e-book e corsi online.

Le credenziali per i corsi online sono:

<table>
  <thead>
    <tr>
      <th>Corso</th>
      <th style="text-align:center">utente</th>
      <th style="text-align:center">password</th>
      <th style="text-align:center">status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://www.codeschool.com">Code School</a></td>
      <td style="text-align:center"><a href="mailto:info@nebulab.it">info@nebulab.it</a></td>
      <td style="text-align:center">Granchi0</td>
      <td style="text-align:center">attivo</td>
    </tr>
    <tr>
      <td><a href="http://teamtreehouse.com">Treehouse</a></td>
      <td style="text-align:center"><a href="mailto:info@nebulab.it">info@nebulab.it</a></td>
      <td style="text-align:center">JxMszbgGinnAwd7X6PDQ</td>
      <td style="text-align:center">richiedere attivazione</td>
    </tr>
    <tr>
      <td><a href="http://tutsplus.com">Tuts+</a></td>
      <td style="text-align:center">nebulab</td>
      <td style="text-align:center">Granchi0</td>
      <td style="text-align:center">richiedere attivazione</td>
    </tr>
    <tr>
      <td><a href="https://stackskills.com">Become an Ethical Hacker Bundle</a></td>
      <td style="text-align:center"><a href="mailto:info@nebulab.it">info@nebulab.it</a></td>
      <td style="text-align:center">nebulos123</td>
      <td style="text-align:center">attivo</td>
    </tr>
    <tr>
      <td><a href="https://gorails.com">GoRails - Training for Ruby on Rails developers.</a></td>
      <td style="text-align:center"><a href="mailto:info@nebulab.it">account@nebulab.it</a></td>
      <td style="text-align:center">monarchiaportamivia</td>
      <td style="text-align:center">attivo</td>
    </tr>
    <tr>
      <td><a href="https://railscasts.com/">RailsCasts Pro</a></td>
      <td colspan="3" style="text-align:center">&larr; Tutto gratis...</td>
    </tr>
  </tbody>
</table>

Nel caso di necessità è possibile richiedere l’acquisto di libri o servizi di cui si ha bisogno.

## Salute e sicurezza sul lavoro 👷 

Entrambi gli uffici di Nebulab rispettano le norme di sicurezza sul lavoro vigenti in Italia.

Non è produttivo e soprattuto non è salutare rimanere seduti nella stessa posizione per quasi 8 ore. Raccomandiamo vivamente a tutti i membri del nostro team di fare delle pause regolari di almeno 15 minuti ogni 2 ore di lavoro continuo davanti al computer. Durante queste pause è bene alzarsi e allontanarsi dalla propria postazione di lavoro e praticare altre attività come bere un caffè o un tè, fare uno spuntino, fare una passeggiata, portare a spasso il cane.

## Benefits 🌴 

Chiunque all’interno del nostro team ha diritto ai seguenti benefici:

* Hardware e licenze software a scelta;
* Un libretto da 5,29 € di buoni pasto al mese da utilizzare durante la pausa pranzo o per fare la spesa al supermercato per chi è assunto in una delle sedi di Nebulab; *TEMPORANEAMENTE SOSPESO*
* 2/3 meeting annuali di durata settimanale in cui si lavora tutti insieme (anche chiamate **Settimane Nebulose**)
* Orari flessibili;
* Spese per eventuali conferenze completamente coperte;
* Possibilità di lavorare da remoto.

## Ferie, permessi, straordinari e malattia 😷

I giorni di ferie e le ore di permesso residue possono essere consultate nulla propria busta paga:

* Giorni di ferie, nella casella `FERIE RES.`
* Ore per festività soppresse (o Ex Festività), nella casella `FEST. RES.`
* Ore per Riduzione Orario Lavorativo (o ROL), nella casella `ROL RES.`

Lo stesso vale per le quantità maturate e godute, consultando le stesse caselle in corrispondenza di `MAT.` e `GOD.`. 
L'acronimo `A.P.` sta per Anno Precedente e indica le quantità che sono di competenza dell'anno precedente ma tuttavia ancora godibili.

#### Ferie

Sono previsti 26 giorni di ferie l'anno. Tutti i membri del team devono comunicare, tramite chat o anche a voce, possibilmente almeno due settimane prima, i giorni di ferie di cui si desidera beneficiare.

#### Permessi, permessi straordinari e lavoro straordinario

I permessi si dividono in ROL e EX-FESTIVITA' e possono essere richiesti anche nel corso della giornata lavorativa.

Un'altra tipologia di permessi sono quelli che vengono concessi in casi straordinari come matrimonio, funerale, donazione del sangue etc…. Un elenco di permessi straordinari (retribuiti e non) è disponibile al seguente [link](http://www.fpcgil.it/flex/cm/pages/ServeBLOB.php/L/IT/IDPagina/7737).

Ore di lavoro straordinario possono essere richieste in casi eccezionali dall’azienda per particolari esigenze di organizzazione del lavoro.

#### Malattia

Per quanto riguarda le comunicazioni relative alla malattia il dipendente deve contattare il proprio medico per richiedere il certificato attestante l'assenza per malattia. Il medico, effettuerà l'invio telematico di tale certificato all'INPS che, a sua volta, lo renderà disponibile sempre in modalità telematica. In base ai giorni di malattia concessi dal medico curante, il dipendente dovrà comunicare all'azienda i giorni di assenza insieme al codice univoco del certificato.

#### Float

Per tenere traccia dei giorni di ferie, permessi, straordinari e malattia usiamo il software web [Float di Nebulab](http://nebulab.float.com/).

Cliccando sulla voce `TIME OFF` nella finestra di edit del giorno sarà possibile segnare tutte le tipologie di assenze per Permessi o Ferie ed i giorni passati in Malattia. La scelta della tipologia di `Time Off`, disponibile nel menù a tendina, dovrà seguire i seguenti criteri:

* `Permesso/Ferie` va utilizzato per le ore di permesso o per i giorni di ferie: potete usarlo quindi per giornata intera di ferie, flaggando `full day`, oppure mettendo il numero di ore di permesso;
* `Malattia` va utilizzato in caso di Malattia, **inserendo nelle note il Codice di Protocollo rilasciato dal medico curante**;
* `Permesso straordinario` va utilizzato per i permessi concessi in casi straordinari elencati nella sezione [Permessi, permessi straordinari e lavoro straordinario](https://github.com/nebulab/nebulab/wiki/Lavorare-insieme#permessi-permessi-straordinari-e-lavoro-straordinario).

## Paga 💰 

Il pagamento dello stipendio viene emesso tramite bonifico bancario entro il giorno 10 di ogni mese. La tredicesima mensilità viene erogata nel mese di dicembre mentre la quattordicesima nel mese di giugno.

Il cedolino in cui risultano tutti gli importi di competenza del mese o delle mensilità aggiuntive sarà disponibile nella cartella `/Buste Paga` privata su Google Drive di Nebulab.

## Musica 🎹 

In entrambi le sedi di Nebulab abbiamo installato due Bowers & Wilkins Z2 che possono essere usati sia come Dock per iPhone sia come Speaker AirPlay. 
Abbiamo creato due playlist collaborative, una per l’ufficio di Latina (`spotify:user:mtylty:playlist:5TpO3ZhoIY2AHfAKPhU14m`) e una per l’ufficio di Pescara (`spotify:user:davidedistefano:playlist:7hq8ECgMNqrk8i1QZ3Kq32`) da cui si possono aggiungere i brani in coda. 

Naturalmente per rispetto degli altri da evitare assolutamente generi musicali spinti tipo death metal Norvegese o trashate pop tipo Nicki Minaj.

## Non lavorare più insieme 😢
Il contratto di lavoro prevede la facoltà per il lavoratore di recedere unilateralmente dal contratto stesso mediante rassegnazione delle proprie dimissioni. La [procedura di dimissioni](https://www.cliclavoro.gov.it/Cittadini/Pagine/Adempimenti.aspx) è Telematica e può avvenire con diverse modalità:

- autonomamente, sul sito clicklavoro.gov.it per tutti coloro che sono in possesso delle credenziali per accedere all'INPS. Di seguito un link ad un utile [video tutorial](https://youtu.be/02yuLr7-h_E);
- recarsi presso i soggetti abilitati che sono patronati, organizzazioni sindacali, commissioni di certificazione, enti bilaterali e, con l’entrata in vigore del D. Lgs. 185/2016, anche consulenti del lavoro e sedi territoriali dell’Ispettorato nazionale del lavoro.

Le dimissioni devono essere date con un congruo preavviso, variabile a seconda della tipologia del contratto, dell'anzianità e del livello. Di solito si tratta di 20-30 giorni, ma siete invitati a controllare il vostro caso specifico.
