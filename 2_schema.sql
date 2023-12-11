-- get all schemas
SELECT 
    s.name AS schema_name, 
    u.name AS schema_owner
FROM 
    sys.schemas s
INNER JOIN sys.sysusers u ON u.uid = s.principal_id
ORDER BY 
    s.name;

-- get current schema
select schema_name()


-- Using a database schema goes along with the benefits that include:

-- Allow several users per schema
-- Use the same schema with different databases
-- Move database objects between schemas quickly
-- Control access and apply user permissions to protect database objects efficiently at a schema level
-- Remove a user without impact on user-dependent database elements
-- Manage database objects in logical groups
-- Transfer ownership between schemas