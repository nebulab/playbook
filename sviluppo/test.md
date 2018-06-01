# Test

In Nebulab crediamo fermamente nel valore del testing automatizzato. Tutto il codice che scriviamo
è testato e quando ci capita di lavorare su un progetto senza test cerchiamo di testarne un pezzo
per volta, man mano che ci lavoriamo su, finché non raggiunge uno stato soddisfacente. I test ci
danno la sicurezza di apportare modifiche a un progetto senza rompere nulla, e ci permettono di
lavorare velocemente producendo codice di qualità.

Detto questo, abbiamo una filosofia pragmatica verso il testing (così come verso tutto il resto).
I test devono essere uno strumento che ci aiuta nel lavoro di implementazione, non diventare tutto
il nostro lavoro. Ci sono alcune accortezze che possiamo usare per assicurarci che i nostri test
siano efficaci senza diventare un onere:

- Scriviamo per lo più integration test, che richiedono meno manutenzione e testano più componenti
contemporaneamente
- Nei test, diamo priorità 1) a ciò che si può rompere più facilmente e 2) a ciò che è più critico
per il business del cliente
- Assicuriamoci che i test siano significativi: davvero si assicurano che il codice non si rompa,
o passerebbero in ogni caso?
- Scriviamo test che servano anche come documentazione per il codice, in modo che possano essere
usati come risorsa per capire come funziona il progetto

Una buona guida al testing pragmatico è questo blogpost: 
[Write tests. Not too many. Mostly integration.](https://blog.kentcdodds.com/write-tests-not-too-many-mostly-integration-5e8c7fff591c)
