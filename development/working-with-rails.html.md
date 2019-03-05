---
title: Working with Rails
---
## Seeds

In addition to the readme, the presence or absence of good seeds is another element that determines
how quickly you can start work on a new project.

Once a new feature has been developed, it's a good idea to write seeds that can be used to test it. 
There is no need to be too detailed and test all possible scenarios, but it is useful to help new 
developers have an idea how the application works without having to configure it manually.

Again, for inspiration on how to write seeds, you can see some of the existing projects or ask in 
\#development. 

## Migrations

We should always be careful with DB migrations, especially when working on high-traffic applications 
where a bad migration can easily cause minutes of downtime.

It is a good practice to configure [strong_migrations](https://github.com/ankane/strong_migrations) 
for projects, so that any migrations that could cause downtime are detected before being deployed
to production.
