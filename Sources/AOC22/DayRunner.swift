class DayRunner
{
    var days: Dictionary<String, Day>

    init(withDays: Dictionary<String, Day>)
    {
        self.days = withDays
    }

    func run() -> Bool
    {
        if let dayArgument = parsedArguments.first(where: { $0.name == "day" })
        {
            let day = dayArgument.value
            if let dayToRun = self.days[day]
            {
                var inputFromFile: String? = nil;

                if let filenameArgument = parsedArguments.first(where: { $0.name == "filename" })
                {
                    let filename = filenameArgument.value
                    let location = #"./Sources/AOC22/Day \#(day)/Resources/\#(filename)"#
                    inputFromFile = try! String(contentsOfFile: location)   
                }

                dayToRun.run(withInput: inputFromFile)
                return true;
            }
            else
            {
                print(#"Day \#(day) is not configured"#)
                return false;
            }
        }
        else
        {
            print("No day to run found. Add day:1 to run day 1")
            return false;
        }        
    }
}