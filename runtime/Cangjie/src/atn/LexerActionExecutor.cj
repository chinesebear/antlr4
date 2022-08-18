package default

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.IntStream;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.misc.MurmurHash;
from std import collection.*

open public class LexerActionExecutor {

    private let lexerActions: Array<Option<LexerAction>> = Array<Option<LexerAction>>()
    
    private let hashCode: Int32 = 0
    
    public init (lexerActions: Array<Option<LexerAction>>){

    }

    public static func append (lexerActionExecutor: LexerActionExecutor, lexerAction: Option<LexerAction>): LexerActionExecutor {
  //    if (lexerActionExecutor == null) {
  //        return new LexerActionExecutor(new Option<LexerAction>[]{lexerAction});
  //    LexerAction[] lexerActions = Arrays.copyOf(lexerActionExecutor.lexerActions, lexerActionExecutor.lexerActions.length + 1);
  //    lexerActions[lexerActions.length - 1] = lexerAction;
  //    return new LexerActionExecutor(lexerActions);

        return LexerActionExecutor()
    }

    public open func fixOffsetBeforeMatch (offset: Int32): LexerActionExecutor {
  //    LexerAction[] updatedLexerActions = null;
  //    for (int i = 0; i < lexerActions.length; i++) {
  //        if (lexerActions[i].isPositionDependent() && !(lexerActions[i] instanceof LexerIndexedCustomAction)) {
  //            if (updatedLexerActions == null) {
  //                updatedLexerActions = lexerActions.clone();
  //            updatedLexerActions[i] = new LexerIndexedCustomAction(offset, lexerActions[i]);
  //    if (updatedLexerActions == null) {
  //        return this;
  //    return new LexerActionExecutor(updatedLexerActions);

        return LexerActionExecutor()
    }

    public open func getLexerActions (): Array<Option<LexerAction>> {
  //    return lexerActions;

        return Array<Option<LexerAction>>()
    }

    public open func execute (lexer: Option<Lexer>, input: Option<CharStream>, startIndex: Int32): Unit {
  //    boolean requiresSeek = false;
  //    int stopIndex = input.index();
  //    try {
  //        for (LexerAction lexerAction : lexerActions) {
  //            if (lexerAction instanceof LexerIndexedCustomAction) {
  //                int offset = ((LexerIndexedCustomAction)lexerAction).getOffset();
  //                input.seek(startIndex + offset);
  //                lexerAction = ((LexerIndexedCustomAction)lexerAction).getAction();
  //                requiresSeek = (startIndex + offset) != stopIndex;
  //            } else if (lexerAction.isPositionDependent()) {
  //                input.seek(stopIndex);
  //                requiresSeek = false;
  //            lexerAction.execute(lexer);
  //    } finally {
  //        if (requiresSeek) {
  //            input.seek(stopIndex);

        
    }

    public open func hashCodeFunc (): Int32 {
  //    return this.hashCode;

        return 0
    }

    public open func equals (obj: Object): Bool {
  //    if (obj == this) {
  //        return true;
  //    } else if (!(obj instanceof LexerActionExecutor)) {
  //        return false;
  //    LexerActionExecutor other = (LexerActionExecutor)obj;
  //    return hashCode == other.hashCode && Arrays.equals(lexerActions, other.lexerActions);

        return true
    }

    public init() {}
}


