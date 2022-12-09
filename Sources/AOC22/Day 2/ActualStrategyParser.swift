public class ActualStrategyGuideParser
{
    public func parse(fromLines: [String]) -> [Round]
    {
        var rounds = [Round]()

        for lineIndex in 0...fromLines.count-1
        {
            let line = fromLines[lineIndex]
            let choices = line.components(separatedBy: " ")
            
            let opponentsMove = try! Move.parse(fromString: choices[0])
            let outcome = try! Outcome.parse(fromString: choices[1])
            let currentRound = Round(withOpponentsMove: opponentsMove, withOutcome: outcome)
            
            rounds.append(currentRound)
        }

        return rounds
    }
}