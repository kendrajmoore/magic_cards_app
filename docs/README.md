# Magic Cards App

This app is intended to help users to list and organize their magic cards collection. This
app also allows users to search for new magic cards

**_Magic Cards App_**  An application created with Ruby on Rails and the official Magic Card API.

Official documentation: https://kendrajmoore.github.io/magic_cards_app/#/

Official Magic Card API website: https://docs.magicthegathering.io/

Website: https://magic-cards-kjm.herokuapp.com/

## Base URL

```
https://magic-cards-kjm.herokuapp.com/
```

The base url contains a list of all the official magic cards with photos up to 100 cards. Users
can also search for specific cards.

There is one available resource

-   Cards: CRUD your magic cards with Ruby on Rails

```
Index - https://magic-cards-kjm.herokuapp.com/card_data
Show - https://magic-cards-kjm.herokuapp.com/card_data/:id
Edit - https://magic-cards-kjm.herokuapp.com/card_data/:id/edit
Delete -  https://magic-cards-kjm.herokuapp.com/card_data/:id
```

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## Project Team


Created by Kendra Moore for Backend Web 1.3 at Make School
