class ArgumentParser 
{
    var desiredArguments: [String]

    init(desiredArguments: [String])
    {
        self.desiredArguments = desiredArguments
    }

    func parse(arguments: [String]) -> [FoundArgument]
    {
        var foundArguments = [FoundArgument]()

        for argument in arguments 
        {
            for desiredArgument in desiredArguments
            {
                let argumentParts = argument.split(separator: ":")

                if desiredArgument.caseInsensitiveCompare(argumentParts[0]) == .orderedSame
                {
                    foundArguments.append(FoundArgument(withName: desiredArgument, andValue: String(argumentParts[1])))
                }
            }
        }

        return foundArguments
    }   
}

class FoundArgument
{
    var name: String
    var value: String

    init(withName: String, andValue: String)
    {
        self.name = withName
        self.value = andValue
    }
}