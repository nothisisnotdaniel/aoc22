class Elf : Comparable
{
    private(set) var calories: Int

    public init()
    {
        calories = 0
    }

    public func addCalories(withValue: Int)
    {
        self.calories += withValue
    }

    static func < (lhs: Elf, rhs: Elf) -> Bool {
        return lhs.calories < rhs.calories
    }

    static func == (lhs: Elf, rhs: Elf) -> Bool {
        return lhs.calories == rhs.calories
    }    
}