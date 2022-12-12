extension Character
{
    func properAsciiValue() -> Int
    {
        if let intValue = self.asciiValue 
        {
            return Int(self.isUppercase ? intValue-38 : intValue-96)
        }

        return -1
    }
}