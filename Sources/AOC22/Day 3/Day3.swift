public class Day3 : Day
{
    private var backpackParser: BackpackParser

    public init(backpackParser: BackpackParser)
    {
        self.backpackParser = backpackParser
    }

    public func run(withInput: String?)
    {
        guard let input = withInput else 
        {
            print("No input given.")
            return
        }

        let lines = input.components(separatedBy: .newlines)
        let backpacks = backpackParser.parse(from: lines)
        var duplicateScore: Int = 0

        var groups = [ElfGroup]()
        var currentGroup: ElfGroup = ElfGroup()

        for backpackIndex in 0...backpacks.count-1
        {
            if backpackIndex % 3 == 0
            {
                currentGroup = ElfGroup()
                groups.append(currentGroup)
            }

            currentGroup.add(backpack: backpacks[backpackIndex])
            duplicateScore += backpacks[backpackIndex].search()
        }

        print(#"Solution 1: \#(duplicateScore)"#)

        var badgeScore: Int = 0
        for group in groups
        {
            badgeScore += group.findBadge()
        }

        print(#"Solution 2: \#(badgeScore)"#)
    }
}