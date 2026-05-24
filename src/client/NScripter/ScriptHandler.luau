local h = require(script.Parent["ScriptHandler.h"])
local ScriptHandler = {}

local STRING_BUFFER_LENGTH = 2048

-- SKIP_SPACE here

function ScriptHandler.readToken(check_pretext: boolean): string
	h.current_script = h.next_script
	local buf: string = h.current_script
	h.end_status = h.enum.END_NONE
	h.current_variable.type = h.enum.VAR_NONE
	h.num_rgosub_waits = 0
	h.cur_rgosub_wait = 0

	h.current_cmd_type = h.enum.CMD_NONE

	if h.rgosub_flag and h.is_rgosub_click then
		h.string_counter = 0
		local ch: string = h.rgosub_click_newpage and "\\" or "@"
		ScriptHandler.addStringBuffer(ch)
		if h.rgosub_1byte_mode then
			ScriptHandler.addStringBuffer("`")
			h.rgosub_wait_1byte[h.num_rgosub_waits] = h.rgosub_1byte_mode
			h.rgosub_wait_pos[h.num_rgosub_waits + 1] = buf
			h.current_cmd_type = h.enum.CMD_TEXT
			if not h.rgosub_1byte_mode then
			end
		end
	end
end

function ScriptHandler.addStringBuffer(ch: string)
	if h.string_counter + 1 == STRING_BUFFER_LENGTH then
		error("addStringBuffer: string length exceeds 2048.")
	end
	h.string_buffer[h.string_counter + 1] = ch
	h.string_buffer[h.string_counter] = "\0"
end

return ScriptHandler
