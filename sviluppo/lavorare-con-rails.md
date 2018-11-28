# Lavorare con Rails

## Seed

Oltre al readme, la presenza o l'assenza di buoni seed sono un altro degli elementi che determina
quanto velocemente si può iniziare a lavorare su un progetto nuovo.

Ogni volta che una nuova feature viene sviluppata, sarebbe buona norma scrivere dei seed che possono
essere usati per testare la feature. Non è necessario essere troppo dettagliati e testare ogni
possibile scenario, ma è utile permettere ai nuovi sviluppatori di farsi un'idea di come funzioni
l'applicazione senza doverla configurare manualmente.

Di nuovo, per ispirazione sulla scrittura di seed si possono vedere alcuni dei progetti esistenti
o chiedere in #sviluppo. 

## Migrazioni

Bisogna stare sempre attenti alle migrazioni che scriviamo, soprattutto quando stiamo lavorando su
applicazioni ad alto traffico che potrebbero causare downtime.

Una buona norma è configurare [strong_migrations](https://github.com/ankane/strong_migrations) sui
progetti, in modo che qualunque migrazione che potrebbe causare del downtime venga rilevata prima di 
essere rilasciata in produzione. 
