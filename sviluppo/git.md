# Git / GitHub

## Messaggi di commit

Nebulab adotta le seguenti regole per i progetti interni:

- Prima lettera maiuscola.
- Messaggi espressi in *imperative mood*.

Esempi: 

- Add user specs
- Display checkout button
- Fix file upload bug

## Issue e pull request

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