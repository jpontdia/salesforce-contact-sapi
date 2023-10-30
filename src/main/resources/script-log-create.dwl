%dw 2.0
import * from dw::util::Values
output application/json
---
{
	message: "Create record",
    payload: payload
		mask field("lastName") with "*****"
		mask field("address") with "*****"
		mask field("email") with "*****"  
}