# Sviluppo

## Setup

La fase di setup è necessaria per passare da una macchina vergine ad un computer
pronto per lavorare sui progetti Nebulab. Concetti fondamentali:
  
  * usare un Mac, preferibilmente un portatile;
  * usare [laptop](https://github.com/thoughtbot/laptop);
  * usare dei [dotfiles](http://github.com/nebulab/dotfiles).

Non viene obbligato nessuno ad usare i tool specificati da laptop e dotfiles ma è richiesto essere 
disponibili verso gli altri, soprattutto se si è scelto di usare una tecnologia che gli altri non 
usano.

## Codice

Linee guida per la scrittura di codice pulito ed applicazioni affidabili:

- Ruby: https://github.com/bbatsov/ruby-style-guide
- Rails: https://github.com/bbatsov/rails-style-guide
- CSS: https://pages.18f.gov/frontend/css-coding-styleguide/architecture/
- RSpec: http://betterspecs.org/
- Javascript: https://github.com/airbnb/javascript
- [Rubocop](https://github.com/nebulab/nebulab/wiki/Rubocop)

## Git / GitHub

### Messaggi di commit

Nebulab adotta le seguenti regole per i progetti interni:

- Prima lettera maiuscola.
- Messaggi espressi in *imperative mood*.

Esempi: 

- Add user specs
- Display checkout button
- Fix file upload bug

### Issue e pull request

Le funzionalità da implementare vanno gestite tramite pull request su GitHub. Per implementare una 
nuova funzionalità si deve:

0. se necessario creare una issue (utilizzare la lingua decisa per il progetto)
1. creare un nuovo branch nome-team/nome-funzionalita (es. nebulab/login);
2. aggiungere un certo numero di commit (in Inglese :gb:);
3. fare la pull request al branch master (utilizzare la lingua decisa per il progetto)
4. farsi accettare la pull request da un'altra persona che fa la review;
5. testare la nuova funzionalità su staging prima di fare il deploy in production.

In generale quando si collabora a progetti esterni:

- Adattarsi ai messaggi di **commit, issue e pull request preesistenti** solo se questi sono 
  espressi in maniera omogenea.
- Applicare **le regole di Nebulab** quando si rileva un’incoerenza nella forma dei messaggi.

## Readme

Come farsi capire dagli altri

## Variabili di configurazione

TODO: da completare una volta implementato sui progetti

## Seed

I seed questi sconosciuti

## Test

Come/quando farli

## Errori comuni

Capita che alcuni problemi nel deploy o nello sviluppo di nuove funzionalità siano legati ad errori 
comuni e che tendono a ripresentarsi ciclicamente. Questa pagina vuole proporre una serie di 
soluzioni a problemi già incontrati, in modo tale che non si perda troppo tempo a ricercarne cause e 
soluzioni.

- [Database](#database)

### Database

- Spesso si aggiorna il database di development (e.g. `farmavillage_dev`) ma ci si dimentica di 
aggiornare quello dei test (e.g. `farmavillage_test`). Capita che ci siano incongruenze con le 
colonne o altro. Per risolvere si deve dare il comando `rake db:test:prepare`.
