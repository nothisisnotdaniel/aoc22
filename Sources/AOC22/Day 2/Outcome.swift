public enum Outcome
{
    case win
    case loss
    case draw

    public static func from(myMove: Move, theirMove: Move) throws -> Outcome
    {
        if (myMove == theirMove)
        {
            return Outcome.draw
        }

        if (myMove == Move.rock && theirMove == Move.scissor)
        {
            return Outcome.win
        }

        if (myMove == Move.paper && theirMove == Move.rock)
        {
            return Outcome.win
        }

        if (myMove == Move.scissor && theirMove == Move.paper)
        {
            return Outcome.win
        }        

        if (myMove == Move.scissor && theirMove == Move.rock)
        {
            return Outcome.loss
        }

        if (myMove == Move.rock && theirMove == Move.paper)
        {
            return Outcome.loss
        }     

        if (myMove == Move.paper && theirMove == Move.scissor)
        {
            return Outcome.loss
        }

        throw OutcomeParsingError.unexpectedCombination
    }

    public static func parse(fromString: String) throws -> Outcome
    {
        switch fromString
        {
            case "X":
                return Outcome.loss
            case "Y":
                return Outcome.draw
            case "Z":            
                return Outcome.win
            default:
                throw OutcomeParsingError.unrecognizedOutcome
        }   
    }
}

public enum OutcomeParsingError: Error {
    case unexpectedCombination
    case unrecognizedOutcome
}