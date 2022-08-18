package misc

// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNDeserializer;
// import org.antlr.v4.runtime.dfa.DFA;
// import java.util.Collection;
from std import collection.*
from std import io.*

open public class InterpreterDataReader {

    public static func parseFile (fileName: String): InterpreterData {
        return InterpreterData()
    }

    public init() {}
}

class InterpreterDataReaderInterpreterData {
    var class_out: InterpreterDataReader
    public init(out: InterpreterDataReader) {
        class_out = out
    }
    public init() {
        class_out = InterpreterDataReader()
    }
    var atn: ATN = ATN()
    
    var vocabulary: Vocabulary = Vocabulary()
    
    var ruleNames: List<String> = List<String>()
    
    var channels: List<String> = List<String>()
    
    var modes: List<String> = List<String>()
    
}



