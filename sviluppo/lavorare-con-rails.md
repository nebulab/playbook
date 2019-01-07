# Working with Rails

## Seed

In addition to readme, the presence or absence of good seeds is another element that determines
how quickly you can start work on a new project.

Once a new feature has been developed, it would be a good idea to always write seeds that can be
used to test the feature. There is no need to be too detailed and test
all possible scenarios, but it is useful to help new developers have an idea how
the application works without having to configure it manually.

Again, for inspiration on how to write seeds, you can see some of the existing projects 
or ask at #development. 

## Migrations

We should always take care with the migrations we write, especially when working on 
high-traffic applications that could cause downtime.

It it good practice to configure [strong_migrations](https://github.com/ankane/strong_migrations) for
projects, so that any migration that could cause downtime is detected before 
being released for production. 
