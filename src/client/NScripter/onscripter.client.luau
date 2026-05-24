local ONScripterLabel = require(script.Parent.ONScripterLabel)
function main(): number
	ONScripterLabel.executeLabel()

	warn("Exit code: 0")
end

main()
