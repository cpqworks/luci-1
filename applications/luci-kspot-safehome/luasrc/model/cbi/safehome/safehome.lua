--[[
KSpot - Lua Configuration Interface

Copyright 2016 Kloudspot

$Id$
]]--

local uci = luci.model.uci.cursor()
m = SimpleForm("dropspot", translate("Safe Home"),
                translate("Secure your home with the Safe Home Feature "))
m.reset = false
m.submit = false

s = m:section(SimpleSection, nil, nil)
--s = m:section(NamedSection, "common", "common", translate("Settings"))
e = s:option(Value, "safehome", translate("Safe Home Enabled: "))
e.default = uci:get("dropspot", "common", "safehome") or 'false'

return m

