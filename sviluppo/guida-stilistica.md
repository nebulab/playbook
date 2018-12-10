# Guida stilistica

Seguiamo queste linee guida per la scrittura di codice pulito e applicazioni affidabili:

- Ruby: 
  - https://github.com/bbatsov/ruby-style-guide
  - https://github.com/uohzxela/clean-code-ruby
- Rails: https://github.com/bbatsov/rails-style-guide
- CSS: https://pages.18f.gov/frontend/css-coding-styleguide/architecture/
- RSpec: http://betterspecs.org/
- Javascript: https://github.com/airbnb/javascript

**Nota:** Nel leggere questa sezione, tenete sempre in considerazione che sui progetti è importante
adattarsi allo stile del cliente, se ha un proprio team di sviluppo. In caso contrario, va bene 
portare _gradualmente_ il progetto verso i nostri standard ([Opportunistic Refactoring](https://martinfowler.com/bliki/OpportunisticRefactoring.html)).

## Rubocop

L'utilizzo di Rubocop è importante per uniformare lo stile del codice quanto più possibile nelle 
nostre applicazioni. Questo favorisce l'ordine e la pulizia all'interno dei file, semplifica la 
lettura del codice e rende meno complessa la rotazione degli sviluppatori tra progetti e feature.

Invece di reinventare la ruota, abbiamo deciso di seguire una style guide adottata a livello 
universale, cioè [Relaxed.Ruby.Style](http://relaxed.ruby.style/)

Utilizzare una style guide accettata universalmente ha anche l'effetto di ridurre il lock-in nei 
confronti dei nostri clienti che saranno liberi di cambiare partner di sviluppo senza trovare
codice scritto in maniera troppo opinionata.

Per iniziare ad usare questa styleguide basta inserire queste righe nel vostro `rubocop.yml`:

```yaml
inherit_from:
  - https://relaxed.ruby.style/rubocop.yml
```

## Frontend

### Stili e BEM

Per lo sviluppo frontend, partite da queste risorse:

- [BEM Quick Start](https://en.bem.info/methodology/quick-start/)
- [BEM for Beginners: Why you Need BEM](https://www.smashingmagazine.com/2018/06/bem-for-beginners/)

E integrate con questi commenti, frutto dell'esperienza accumulata sui progetti:

- *Selettore universale*: a volte è accettabile, ma non bisogna abusarne. Un buon esempio è l'uso del
  selettore universale per impostare il `box-model` degli elementi.
- *Nomenclatura*: usiamo il [Two Dashes style](https://en.bem.info/methodology/naming-convention/#two-dashes-style).
- *Mix*: Evitiamoli, complicano inutilmente la struttura e si possono usare i modifier per ottenere le stesse funzionalità.
- *Struttura dei file*: Usiamo un file per blocco, senza separare anche elementi e modifier. Non mettiamo l'underscore davanti ai nomi dei file da importare.
- *Variabili*: usiamo un solo file per tutte le variabili, invece di separarle in diversi file.
- *@extend*: evitiamolo, anche perché ha poco senso in una struttura BEM. 
