%dw 2.0
output application/json
---
payload map ((item, index) ->

if ((item.Field_Name) contains "Worksheet") ( "Identifiers" : item.Field_Name) else if ((item.Field_Name) contains "Score") ( "Identifiers" : item.Field_Name)

else item
)


//After mapping the item we have used nested if-else condition to get the excepted output.