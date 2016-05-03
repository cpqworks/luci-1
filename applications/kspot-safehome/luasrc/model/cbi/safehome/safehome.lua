--[[
KSpot - Lua Configuration Interface

Copyright 2016 Kloudspot

$Id$
]]--

m = Map("safehome", translate("Safe Home"),
	translate("Secure your home with the Safe Home Feature "))

s = m:section(NamedSection, "DEFAULT", "settings", translate("Settings"))
s.addremove = false
s.anonymous = false

e = s:option(Flag, "enabled", translate("Enable"))
e.rmempty = false

return m
