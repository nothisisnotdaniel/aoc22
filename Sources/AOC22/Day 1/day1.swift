import Foundation

class Day1 : Day
{
    private var elfParser: ElfParser

    init(withParser: ElfParser)
    {
        self.elfParser = withParser
    }

    func run(withInput: String?)
    {
        guard let input = withInput else 
        {
            print("No input given.")
            return
        }

        let lines = input.components(separatedBy: .newlines)
        var elves = elfParser.parseElves(fromLines: lines)
        elves.sort(by: >)

        if let elfWithHighestCalories = elves.first
        {
            print(#"Solution Part 1: \#(elfWithHighestCalories.calories)"#)
        }

        var totalCaloriesOfTopThreeElves: Int = 0
        for i in 0...2
        {
            totalCaloriesOfTopThreeElves += elves[i].calories
        }

        print(#"Solution Part 2: \#(totalCaloriesOfTopThreeElves)"#)        
    }
}