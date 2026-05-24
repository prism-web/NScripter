local scripthandler_h = require(script.Parent["ScriptHandler.h"])
local h = {}

h.debug_level = 1
h.M_PI = 3.14159265358979323846
h.DEFAULT_FONT_SIZE = 26
h.DEFAULT_LOOKBACK_NAME0 = "uoncur.bmp"
h.DEFAULT_LOOKBACK_NAME1 = "uoffcur.bmp"
h.DEFAULT_LOOKBACK_NAME2 = "doncur.bmp"
h.DEFAULT_LOOKBACK_NAME3 = "doffcur.bmp"

h.current_line = 0
local current_label_info: scripthandler_h.LabelInfo = {
	name = "",
	label_header = "",
	start_address = "",
	start_line = 0,
	num_of_lines = 0,
}
h.current_label_info = current_label_info

h.script_h = scripthandler_h
print(getmetatable(scripthandler_h))
print(getmetatable(scripthandler_h).__call)
scripthandler_h()

return h
