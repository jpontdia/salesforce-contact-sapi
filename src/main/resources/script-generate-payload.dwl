%dw 2.0
output json
---
if (payload != null)
	payload map (item, value) ->
	{
		id: item.Id,
	    firstName: item.FirstName default '',
	    lastName: item.LastName default '',
	    name: item.Name default '',
	    email: item.Email default '',
	    phone: item.Phone default '',
	    homePhone: item.HomePhone default '',
	    mobilePhone: item.MobilePhone default '',
	    accountId: item.AccountId default '',
	    leadSource: item.LeadSource default '',
	    department: item.Department default '',
	    title: item.Title default ''
	}
else {}