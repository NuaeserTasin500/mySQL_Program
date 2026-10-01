-- Read Only Mode

-- If we use alter database as read only mode, we can't delete that database
-- Read-only mode strictly blocking any actions that insert, delete, or update data.
CREATE DATABASE my_Database;
USE my_Database;
ALTER DATABASE my_Database READ ONLY = 1; -- read only mode enabled
DROP DATABASE my_Database; -- can't remove my_Database because Read only mode is enabled
ALTER DATABASE my_Database READ ONLY = 0; -- read only mode disabled