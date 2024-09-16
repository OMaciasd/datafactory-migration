#!/bin/bash
az sql server show --name your-sql-server-name --resource-group your-resource-group
az sql db show --name your-database-name --server your-sql-server-name --resource-group your-resource-group
