public class Backpack
{
    private var firstCompartment: Set<Character>
    private var secondCompartment: Set<Character>

    public init(withFirstCompartmentContaining: String, andSecondCompartmentContaining: String)
    {
        self.firstCompartment = withFirstCompartmentContaining.toCharacterSet()
        self.secondCompartment = andSecondCompartmentContaining.toCharacterSet()
    }

    public func search() -> Int
    {
        let duplicates = findDuplicates()
        var duplicateScore: Int = 0
        for duplicate in duplicates
        {
            duplicateScore += duplicate.properAsciiValue()
        }

        return duplicateScore
    }

    public func findCommonItems(otherBackpack: Backpack) -> Set<Character>
    {
        let ownItems = self.firstCompartment.union(self.secondCompartment)
        let theirItems = otherBackpack.firstCompartment.union(otherBackpack.secondCompartment)

        return ownItems.intersection(theirItems)
    }

    private func findDuplicates() -> Set<Character>
    {
        return firstCompartment.intersection(secondCompartment)
    }
}