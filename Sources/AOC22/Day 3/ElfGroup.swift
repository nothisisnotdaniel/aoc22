public class ElfGroup
{
    private var backpacks: [Backpack]

    init()
    {
        self.backpacks = [Backpack]()
    }

    public func add(backpack: Backpack) 
    {
        backpacks.append(backpack)
    }

    public func findBadge() -> Int
    {
        let firstBackpack = backpacks[0]
        let secondBackpack = backpacks[1]
        let thirdBackpack = backpacks[2]

        let badgeCandidates1 = firstBackpack.findCommonItems(otherBackpack: secondBackpack)
        let badgeCandidates2 = secondBackpack.findCommonItems(otherBackpack: thirdBackpack)
        let badgeCandidates3 = thirdBackpack.findCommonItems(otherBackpack: firstBackpack)
        let badges = badgeCandidates1.intersection(badgeCandidates2).intersection(badgeCandidates3)

        var badgeScore: Int = 0
        for badge in badges
        {
            badgeScore += badge.properAsciiValue()
        }

        return badgeScore
    }
}