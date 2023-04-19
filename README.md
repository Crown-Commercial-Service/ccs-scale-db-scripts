CAS Agreements Service and Guided Match Database Structure Scripts
===========

Overview
--------
These are the SQL scripts required to create the database for the Crown Commercial Services (_CCS_) 
Agreements Service and Guided Match, which are part of the CAS application.

Structure
---------
The repository splits the scripts into several folders under the main "agreements-service" and "guided-match" parents:

* core_structure (scripts required to initialise the database as it was on repo restructure)
* patches (scripts containing adjustments to the database structure made after repo restructure, held per application release)
* remote_setup (scripts which can be run to setup the database in remote environments such as GPaaS)
* reset_setup (scripts to drop the database tables, allowing for a reset of your database structure setup)

The repository also contains:
* env_setting.sh (an environment file containing variables needed to run the scripts)
* local_setup.sh (a script that when run will execute all scripts to set the database up on your local machine)

Requirements
-------------------
In order to run the scripts contained in this repository you will need:

* PostgreSQL
* pgAdmin (recommended)

Running Locally
----------------------------
In order to setup the databases locally you need run 2 scripts file in your terminal:

* local_setup_agreement.sh
* local_setup_guided_match.sh

Please note that you may need to adjust some of the settings in "env_setting.sh", such as the database user to run with, depending on your local PostgreSQL installation setup.

For further guidance, please see full setup documentation here: https://crowncommercialservice.atlassian.net/wiki/spaces/SCALE/pages/3377790983/CaS+API+-+Local+Development+Environment

Branching
----------------------------
Developers should branch from develop to make changes, and pull request back into develop.

Whilst there is no official "releasing" for this repository, develop should be merged up into "main" when an application release containing database structure changes is performed for audit purposes.

Maintenance
----------------------------
When making changes to the database structure controlled by this repository, please follow the following guidelines:

* Do not modify any of the scripts within the "core_structure" folders
* Any changes to table structures or constraints should be added to the relevant "patches" folder.  You should add a .sql file to that folder named in the format "release-x.x.sql", with the numbering corresponding to the release number that the database changes equate to (starting at 1.0)
* For any changes/additions you add into the "patches" folders, please add a comment into your file including the case number (and ideally a one line description) of the change you're making, for audit purposes
* Should you be adding new tables, please make sure to update the drop_tables.sql script in the relevant "reset_setup" folder to ensure that they are cleared down when that script is run

Copyright
---------
Copyright (c) Crown CommercialService 2022.

This source code is licensed under the Open Government Licence 3.0.

http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
