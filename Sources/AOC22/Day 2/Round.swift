public class Round
{
    private var opponentsMove: Move
    private var myMove: Move
    private var outcome: Outcome

    public init(withOpponentsMove: Move, withMyMove: Move)
    {
        self.opponentsMove = withOpponentsMove
        self.myMove = withMyMove
        self.outcome = try! Outcome.from(myMove: withMyMove, theirMove: withOpponentsMove)
    }

    public init(withOpponentsMove: Move, withOutcome: Outcome)
    {
        self.opponentsMove = withOpponentsMove
        self.outcome = withOutcome
        self.myMove = try! Move.from(theirMove: withOpponentsMove, outcome: withOutcome)
    }

    public func calculatePoints() -> Int
    {
        let movePoints = self.myMove == Move.rock ? 1 : (self.myMove == Move.paper ? 2 : 3)
        let outcomePoints = self.outcome == Outcome.win ? 6 : (self.outcome == Outcome.draw ? 3 : 0)
        return movePoints + outcomePoints
    }
}