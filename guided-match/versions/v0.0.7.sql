/*
Version No Version Description
v0.0.7     This file is a script to create add an additional column to error_messages */

Alter table error_messages add column error_summary varchar(2000);
