module("luci.controller.firewall", package.seeall)

function index()
	entry({"admin", "advanced", "firewall"},
		alias("admin", "advanced", "firewall", "forwards"),
		_("Firewall"), 60).i18n = "firewall"

--[[
	entry({"admin", "network", "firewall", "zones"},
		arcombine(cbi("firewall/zones"), cbi("firewall/zone-details")),
		_("General Settings"), 10).leaf = true
--]]

	entry({"admin", "advanced", "firewall", "forwards"},
		arcombine(cbi("firewall/forwards"), cbi("firewall/forward-details")),
		_("Port Forwards"), 20).leaf = true

--[[
	entry({"admin", "network", "firewall", "rules"},
		arcombine(cbi("firewall/rules"), cbi("firewall/rule-details")),
		_("Traffic Rules"), 30).leaf = true

	entry({"admin", "network", "firewall", "custom"},
		cbi("firewall/custom"),
		_("Custom Rules"), 40).leaf = true
--]]
end
