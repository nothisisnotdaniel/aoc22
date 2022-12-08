import Foundation

let arguments = CommandLine.arguments;
let argumentParser = ArgumentParser(desiredArguments: ["day", "filename"])
var parsedArguments = argumentParser.parse(arguments: arguments)

var days = Dictionary<String, Day>()
days["1"] = Day1(withParser: ElfParser())

let runner = DayRunner(withDays: days)
let result = runner.run()

