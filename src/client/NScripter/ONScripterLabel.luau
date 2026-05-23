local ScriptParser_h = require(script.Parent["ScriptParser.h"])
local ONScripterLabel = {}

function ONScripterLabel.executeLabel()
	local last_token_line = -1
	local restart_return = 0

	while ScriptParser_h.current_line < ScriptParser_h.current_label_info.num_of_lines do
	end

	last_token_line = -1
end
