# Hello, Instructors!
#
# Here's the command that will execute sql files in the proper order to fully
# test dynamic insertion followed by the union and the intersection queries

sqlite3 cats.db ".read build-cats.sql" ".read phase-1.sql" ".read phase-2.sql" ".read phase-3.sql" ".read phase-4.sql"
