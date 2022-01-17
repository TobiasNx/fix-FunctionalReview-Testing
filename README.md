This is a repo for testing and functional review of new features in metafacture-fix.
It is based on (https://gitlab.com/oersi/oersi-etl)

Needs an metafacture-fix repo for testing.

Set up project
--------------

`git clone https://gitlab.com/oersi/oersi-etl.git`

`cd oersi-etl`

User documentation
==================

The ETL workflows are based on Metafacture, see https://metafacture.org

Run workflows for review
-------------

Switching to another feature branch of fix for review:

- In your metafacture fix repo change to your branch which should be reviewed
- Then in that folder run: `./gradlew publishToMavenLocal` 

In this repo for testing run:

`./gradlew --refresh-dependencies run --args 'data/review/[Folder]/[test].flux'``


