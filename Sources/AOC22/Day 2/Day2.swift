
public class Day2 : Day
{
    private var strategyGuideParser: StrategyGuideParser
    private var actualStrategyGuideParser: ActualStrategyGuideParser

    public init(withStartegyGuidParser: StrategyGuideParser, withActualStartegyGuidParser: ActualStrategyGuideParser)
    {
        self.strategyGuideParser = withStartegyGuidParser
        self.actualStrategyGuideParser = withActualStartegyGuidParser
    }

    public func run(withInput: String?)
    {
        guard let input = withInput else 
        {
            print("No input given.")
            return
        }

        let lines = input.components(separatedBy: .newlines)
        let roundsPuzzle1 = strategyGuideParser.parse(fromLines: lines)

        var totalScorePuzzle1: Int = 0
        for roundIndex in 0...roundsPuzzle1.count-1
        {
            totalScorePuzzle1 += roundsPuzzle1[roundIndex].calculatePoints()
        }

        print(#"Solution 1: \#(totalScorePuzzle1)"#)

        let roundsPuzzle2 = actualStrategyGuideParser.parse(fromLines: lines)
        var totalScorePuzzle2: Int = 0
        for roundIndex in 0...roundsPuzzle2.count-1
        {
            totalScorePuzzle2 += roundsPuzzle2[roundIndex].calculatePoints()
        }

        print(#"Solution 2: \#(totalScorePuzzle2)"#)       
    }
}