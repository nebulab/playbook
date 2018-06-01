# Errori comuni

Capita che alcuni problemi nel deploy o nello sviluppo di nuove funzionalità siano legati ad errori 
comuni e che tendono a ripresentarsi ciclicamente. Questa pagina vuole proporre una serie di 
soluzioni a problemi già incontrati, in modo tale che non si perda troppo tempo a ricercarne cause e 
soluzioni.

- [Database](#database)

## Database

- Spesso si aggiorna il database di development (e.g. `farmavillage_dev`) ma ci si dimentica di 
aggiornare quello dei test (e.g. `farmavillage_test`). Capita che ci siano incongruenze con le 
colonne o altro. Per risolvere si deve dare il comando `rake db:test:prepare`.
