public enum Move
{
    case rock
    case paper
    case scissor

    public static func parse(fromString: String) throws -> Move
    {
        switch fromString
        {
            case "A": fallthrough
            case "X":
                return Move.rock
            case "B": fallthrough
            case "Y":
                return Move.paper
            case "C": fallthrough
            case "Z":            
                return Move.scissor
            default:
                throw MoveParsingError.unrecognizedMove
        }   
    }

    public static func from(theirMove: Move, outcome: Outcome) throws -> Move
    {
        if (outcome == Outcome.draw)
        {
            return theirMove
        }

        if (outcome == Outcome.loss)
        {
            if (theirMove == Move.rock)
            {
                return Move.scissor
            }

            if (theirMove == Move.paper)
            {
                return Move.rock
            }     

            if (theirMove == Move.scissor)
            {
                return Move.paper
            }            
        }

        if (outcome == Outcome.win)
        {
            if (theirMove == Move.rock)
            {
                return Move.paper
            }

            if (theirMove == Move.paper)
            {
                return Move.scissor
            }     

            if (theirMove == Move.scissor)
            {
                return Move.rock
            }            
        }

        throw OutcomeParsingError.unexpectedCombination
    }    
}

public enum MoveParsingError: Error {
    case unrecognizedMove
}