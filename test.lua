    -- https://github.com/kikito/inspect.lua/blob/master/inspect.lua
    local inspect = require("inspect")
    local internet = require("internet")

    local args = {...}
     
    local handle = internet.request(args[1])
    local result = ""
    for chunk in handle do result = result..chunk end
    -- Print the body of the HTTP response
    print(result)
     

