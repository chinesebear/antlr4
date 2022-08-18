package atn

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.Lexer;

public interface LexerAction {

    func getActionType (): LexerActionType 

    func isPositionDependent (): Bool 

    func execute (lexer: Lexer): Unit 

}


