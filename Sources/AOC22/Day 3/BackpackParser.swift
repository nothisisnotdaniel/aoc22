import Foundation

public class BackpackParser
{
    public func parse(from: [String]) -> [Backpack]
    {
        var backpacks = [Backpack]()

        for lineIndex in 0...from.count - 1
        {
            let backpackLine = from[lineIndex]
            let compartmentSize = backpackLine.count / 2
            let compartments = backpackLine.split(bylength: compartmentSize)

            backpacks.append(Backpack(withFirstCompartmentContaining: compartments[0], andSecondCompartmentContaining: compartments[1]))
        }

        return backpacks
    }
}