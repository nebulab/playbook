# Usare Git e GitHub

Git viene usato per gestire tutti i progetti su cui lavoriamo. Imparare ad usare
Git è molto importante poichè, oltre che conservare il codice, permette di documentarlo
e condividere con il resto del team le scelte implementative, anche a distanza di
tempo.

Prima di cominciare a contribuire ci sono un paio di cose da sapere:

- usiamo sempre il [GitHub Flow](https://guides.github.com/introduction/flow/):
su tutti i progetti usiamo i feature branch per fare delle modifiche ed un unico
branch `master` per conservare il codice;
- usiamo dei commit message che permettano di ricostruire lo storico degli sviluppi
e che seguano delle regole che puoi trovare [qui](https://chris.beams.io/posts/git-commit/).

A parte questi punti non ci sono altre regole. Se hai bisogno di chiarimenti
rivolgiti ai tuoi colleghi (di persona o su #sviluppo su Slack).

Se vuoi continuare ad approfoindire l'argomento ecco una lista di link
interessanti su Git:

- https://mislav.net/2014/02/hidden-documentation/
- http://who-t.blogspot.com/2009/12/on-commit-messages.html
- https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

## Workflow

Le funzionalità da implementare vanno gestite tramite pull request su GitHub.

Per implementare una nuova funzionalità si deve:

1. se necessario creare una issue (utilizzare la lingua decisa per il progetto)
2. creare un nuovo branch nome-team/nome-funzionalita (es. nebulab/login);
3. aggiungere un certo numero di commit (in inglese :gb:);
4. fare la pull request al branch master (utilizzare la lingua decisa per il progetto)
5. farsi accettare la pull request da un'altra persona che fa la review;
6. testare la nuova funzionalità su staging prima di fare il deploy in production.

In generale quando si collabora a progetti esterni:

- Adattarsi ai messaggi di commit, issue e pull request pre-esistenti solo se questi sono espressi 
  in maniera omogenea.
- Applicare le [regole di Nebulab](https://github.com/nebulab/playbook/blob/master/sviluppo/usare-git.md#messaggi-di-commit) 
  (dopo aver chiesto al team, se presente) quando si rileva un'incoerenza nella forma dei messaggi.
