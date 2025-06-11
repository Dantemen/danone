
-- Dar Permisos a 'Agentes Externos' 
Grant SELECT ON Base_Enter.Sandman TO 'AgentesExternos'@'localhost';

-- Quitar Permisos a 'Agentes Externos' 
REVOKE SELECT ON Base_Enter.Sandman FROM 'AgentesExternos'@'localhost';


-- Dar Permisos a 'PO' 
Grant SELECT ON Base_Enter.Sandman TO 'PO'@'localhost';

-- Quitar Permisos a 'PO' 
REVOKE SELECT ON Base_Enter.Sandman FROM 'PO'@'localhost';


-- Dar Permisos a 'PM' 
Grant UPDATE, DELETE, CREATE ON Base_Enter.Sandman TO 'PM'@'localhost';

-- Quitar Permisos a 'PM' 
REVOKE UPDATE, DELETE, CREATE ON Base_Enter.Sandman FROM 'PM'@'localhost';


-- Dar Permisos a 'Architect' 
Grant UPDATE, DROP, CREATE ON Base_Enter.Sandman TO 'Architect'@'localhost';

-- Quitar Permisos a 'Architect' 
REVOKE UPDATE, DROP, CREATE ON Base_Enter.Sandman FROM 'Architect'@'localhost';


-- Dar Permisos a 'BA' 
Grant SELECT ON Base_Enter.Sandman TO 'BA'@'localhost';

-- Quitar Permisos a 'BA' 
REVOKE SELECT ON Base_Enter.Sandman FROM 'BA'@'localhost';


-- Dar Permisos a 'Developer' 
Grant SELECT ON Base_Enter.Sandman TO 'Developer'@'localhost';

-- Quitar Permisos a 'Developer' 
REVOKE SELECT ON Base_Enter.Sandman FROM 'Developer'@'localhost';
