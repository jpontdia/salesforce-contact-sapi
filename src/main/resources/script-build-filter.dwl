%dw 2.0
import modules::soql

var sqlFilter1 = soql::soqlBuilder("", "AND",
        soql::stringParameter("FirstName", vars.firstName))
var sqlFilter2 = soql::soqlBuilder(sqlFilter1, "AND",
        soql::stringParameter("LastName", vars.lastName))
var sqlFilter3 = soql::soqlBuilder(sqlFilter2, "AND",
        soql::stringParameter("Id", vars.id))
var sqlFilter4 = soql::soqlBuilder(sqlFilter3, "AND",
        soql::stringParameter("email", vars.email))
output application/json
---
sqlFilter4