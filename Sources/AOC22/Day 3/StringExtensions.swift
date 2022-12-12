extension String 
{
    func split(bylength: Int) -> [String] 
    {
        var startIndex = self.startIndex
        var results = [Substring]()

        while startIndex < self.endIndex 
        {
            let endIndex = self.index(startIndex, offsetBy: bylength, limitedBy: self.endIndex) ?? self.endIndex
            results.append(self[startIndex..<endIndex])
            startIndex = endIndex
        }

        return results.map { String($0) }
    }

    func toCharacterSet() -> Set<Character>
    {
        var characters = Set<Character>()
        for char in self
        {
            characters.insert(char)
        }

        return characters
    }
}