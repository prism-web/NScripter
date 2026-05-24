local h = {}

export type LabelInfo = {
	name: string,
	label_header: string,
	start_address: string,
	start_line: number,
	num_of_lines: number,
}

export type ArrayVariable = {
	no: number,
	num_dim: number,
	dim: { number },
	data: number,
}

export type VariableInfo = {
	type: number,
	var_no: number,
	array: ArrayVariable,
}

h.enum = {
	END_NONE = 0,
	END_COMMA = 1,
	END_1BYTE_CHAR = 2,
	END_COMMA_READ = 4,

	VAR_NONE = 0,
	VAR_INT = 1,
	VAR_ARRAY = 2,
	VAR_STR = 4,
	VAR_CONST = 8,
	VAR_PTR = 16,

	CMD_NONE = 0,
	CMD_BUILTIN = 1,
	CMD_TEXT = 2,
	CMD_PRETEXT = 3,
	CMD_USERDEF = 4,
	CMD_UNKNOWN = 5,
}

h.string_buffer = ""
h.string_counter = 0

h.current_cmd_type = 0

h.current_script = ""
h.next_script = ""
h.end_status = 0

h.rgosub_wait_pos = ""
h.num_rgosub_waits = 0
h.cur_rgosub_wait = 0
h.rgosub_wait_1byte = false

h.rgosub_flag = false
h.is_rgosub_click = false
h.rgosub_click_newpage = false
h.rgosub_1byte_mode = false

h.current_variable = {
	type = 0,
	var_no = 0,
	array = {
		no = 0,
		num_dim = 0,
		dim = {},
		data = 0,
	},
}

function h.getStringBuffer()
	return h.string_buffer
end

return h
