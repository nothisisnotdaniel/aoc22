public class StrategyGuideParser
{
    public func parse(fromLines: [String]) -> [Round]
    {
        var rounds = [Round]()

        for lineIndex in 0...fromLines.count-1
        {
            let line = fromLines[lineIndex]
            let choices = line.components(separatedBy: " ")
            
            let opponentsMove = try! Move.parse(fromString: choices[0])
            let myMove = try! Move.parse(fromString: choices[1])
            let currentRound = Round(withOpponentsMove: opponentsMove, withMyMove: myMove)
            
            rounds.append(currentRound)
        }

        return rounds
    }
}
