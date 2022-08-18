package default


open public class ConsoleErrorListener <: BaseErrorListener {

    public static let INSTANCE: ConsoleErrorListener = ConsoleErrorListener()
    
    public open override func syntaxError (recognizer: Recognizer<T, T>, offendingSymbol: Object, line: Int32, charPositionInLine: Int32, msg: String, e: RecognitionException): Unit {
  //    System.err.println("line " + line + ":" + charPositionInLine + " " + msg);

        
    }

    public init() {}
}


