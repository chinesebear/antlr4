package default


public interface WritableToken <: Token {

    func setText (text: String): Unit 

    func setType (ttype: Int32): Unit 

    func setLine (line: Int32): Unit 

    func setCharPositionInLine (pos: Int32): Unit 

    func setChannel (channel: Int32): Unit 

    func setTokenIndex (index: Int32): Unit 

}


