local scripthandler_h = require(script.Parent["ScriptHandler.h"])
local scriptparser_h = {}

scriptparser_h.M_PI = 3.14159265358979323846
scriptparser_h.DEFAULT_FONT_SIZE = 26
scriptparser_h.DEFAULT_LOOKBACK_NAME0 = "uoncur.bmp"
scriptparser_h.DEFAULT_LOOKBACK_NAME1 = "uoffcur.bmp"
scriptparser_h.DEFAULT_LOOKBACK_NAME2 = "doncur.bmp"
scriptparser_h.DEFAULT_LOOKBACK_NAME3 = "doffcur.bmp"

scriptparser_h.current_line = 0
local current_label_info: scripthandler_h.LabelInfo = {}
scriptparser_h.current_label_info = current_label_info

scriptparser_h.script_h = scripthandler_h

return scriptparser_h
