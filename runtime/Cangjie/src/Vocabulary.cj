package default


public interface Vocabulary {

    func getMaxTokenType (): Int32 

    func getLiteralName (tokenType: Int32): String 

    func getSymbolicName (tokenType: Int32): String 

    func getDisplayName (tokenType: Int32): String 

}


