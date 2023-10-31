import * from bat::BDD
import * from bat::Assertions
import * from bat::Mutable

var context = bat::Mutable::HashMap()
var url = "$(config.protocol)://$(config.host):$(config.port)$(config.basepath)"

// Load JSON POST Payload
var payload= readUrl("classpath://payload.json","application/json")

---
describe("The testing process for API") in [

  it("Create a new record") in [
    POST `$(url)` with {
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: payload
    }  assert [
      $.response.status mustEqual 201
    ] execute [
      log($.response),
      context.set('id', ($.response.headers.Location splitBy  "/")[3] )
    ]
  ],
  
  it must 'Get the record by id' in [
    GET `$(url)/$(context.get('id'))` with {

    } assert [
      $.response.status mustEqual 200,
      context.get('id') mustEqual $.response.body.id,
    ] execute [
      log($.response)
    ]
  ],

  it must 'Get the record by name' in [
    GET `$(url)?firstName=$(payload.firstName)&lastName=$(payload.lastName)` with {

    } assert [
      $.response.status mustEqual 200,
      context.get('id') mustEqual $.response.body[0].id,
    ] execute [
      log($.response)
    ]
  ],

  it must 'Delete the record' in [
    DELETE `$(url)/$(context.get('id'))` with {

    } assert [
      $.response.status mustEqual 200
    ] execute [
      log($.response)
    ]
  ]
]