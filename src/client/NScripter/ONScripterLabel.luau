local ScriptParser_h = require(script.Parent["ScriptParser.h"])
local script_h = require(script.Parent["ScriptHandler.h"])
local ONScripterLabel = {}

function ONScripterLabel.executeLabel()
	local last_token_line = -1
	local _restart_return = 0

	while ScriptParser_h.current_line < ScriptParser_h.current_label_info.num_of_lines do
		print(script_h.getStringBuffer()[0])
		if
			ScriptParser_h.debug_level > 0
			and last_token_line ~= ScriptParser_h.current_line
			and script_h.getStringBuffer()[0] ~= 0x0a -- this probably doesnt work but since im not gonna use this for a while ill do it later
		then
		end
	end

	last_token_line = -1
end

function ONScripterLabel.init()
	ONScripterLabel.readToken()
end

function ONScripterLabel.readToken() end

-- todo: make init because you actually forgot theres something before executelabel you dumbass

return ONScripterLabel
