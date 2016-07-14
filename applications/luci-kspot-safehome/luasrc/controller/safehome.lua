--[[
KSpot - Lua Configuration Interface

Copyright 2016 Kloudspot

$Id$
]]--

module("luci.controller.safehome", package.seeall)

function index()
	local page
    
	page = entry({"admin", "network", "safehome"}, cbi("safehome/safehome"), _("Safe Home"))
	page.dependent = true

end
