# Rubocop

L'utilizzo di Rubocop è importante per uniformare lo stile del 
codice quanto più possibile sulle nostre applicazioni. Questo 
favorisce l'ordine e la pulizia all'interno dei file, semplifica 
la lettura del codice e rende meno complessa la rotazione
degli sviluppatori tra progetti e feature.

Invece di reinventare la ruota, abbiamo deciso di seguire una 
styleguide adottata a livello universale, cioè [Relaxed.Ruby.Style](http://relaxed.ruby.style/)

Utilizzare una styleguide accettata universalmente ha anche 
l'effetto di ridurre il lock-in nei confronti dei nostri clienti
che saranno liberi di cambiare partner di sviluppo senza trovare
codice scritto in maniera troppo opinionata.

Per iniziare ad usare questa styleguide basta inserire queste righe 
nel vostro `rubocop.yml`:

```yaml
inherit_from:
  - https://relaxed.ruby.style/rubocop.yml
```
