import Foundation

class ElfParser
{
    public func parseElves(fromLines: [String]) -> [Elf]
    {
        var elves = [Elf]()

        var currentElf = Elf()
        elves.append(currentElf)

        for lineIndex in 0...fromLines.count-1
        {
            let line = fromLines[lineIndex]

            if line.isEmpty &&  lineIndex < fromLines.count - 1
            {
                currentElf = Elf()
                elves.append(currentElf)
            }
            else
            {
                currentElf.addCalories(withValue: Int(line) ?? 0)
            }
        }

        return elves
    }
}