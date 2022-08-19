package default

// import org.antlr.v4.runtime.misc.Interval;
from std import collection.*

open public class TokenStreamRewriter {

    public static let DEFAULT_PROGRAM_NAME: String = "default"
    
    public static let PROGRAM_INIT_SIZE: Int32 = 100
    
    public static let MIN_TOKEN_INDEX: Int32 = 0
    
    protected let tokens: Option<TokenStream> = Option<TokenStream>.None
    
    protected let programs: Map<String, List<TokenStreamRewriterRewriteOperation>> = Map<String, List<TokenStreamRewriterRewriteOperation>>()
    
    protected let lastRewriteTokenIndexes: Map<String, Integer> = Map<String, Integer>()
    
    public open func getTokenStream (): Option<TokenStream> {
  //    return tokens;

        return Option<TokenStream>.None
    }

    public open func rollback (instructionIndex: Int32): Unit {
  //    rollback(DEFAULT_PROGRAM_NAME, instructionIndex);

        
    }

    public open func rollback (programName: String, instructionIndex: Int32): Unit {
  //    List<TokenStreamRewriterRewriteOperation> is = programs.get(programName);
  //    if (is != null) {
  //        programs.put(programName, is.subList(MIN_TOKEN_INDEX, instructionIndex));

        
    }

    public open func deleteProgram (): Unit {
  //    deleteProgram(DEFAULT_PROGRAM_NAME);

        
    }

    public open func deleteProgram (programName: String): Unit {
  //    rollback(programName, MIN_TOKEN_INDEX);

        
    }

    public open func insertAfter (t: Option<Token>, text: Object): Unit {
  //    insertAfter(DEFAULT_PROGRAM_NAME, t, text);

        
    }

    public open func insertAfter (index: Int32, text: Object): Unit {
  //    insertAfter(DEFAULT_PROGRAM_NAME, index, text);

        
    }

    public open func insertAfter (programName: String, t: Option<Token>, text: Object): Unit {
  //    insertAfter(programName, t.getTokenIndex(), text);

        
    }

    public open func insertAfter (programName: String, index: Int32, text: Object): Unit {
  //    TokenStreamRewriterRewriteOperation op = new TokenStreamRewriterInsertAfterOp(index, text);
  //    List<TokenStreamRewriterRewriteOperation> rewrites = getProgram(programName);
  //    op.instructionIndex = rewrites.size();
  //    rewrites.add(op);

        
    }

    public open func insertBefore (t: Option<Token>, text: Object): Unit {
  //    insertBefore(DEFAULT_PROGRAM_NAME, t, text);

        
    }

    public open func insertBefore (index: Int32, text: Object): Unit {
  //    insertBefore(DEFAULT_PROGRAM_NAME, index, text);

        
    }

    public open func insertBefore (programName: String, t: Option<Token>, text: Object): Unit {
  //    insertBefore(programName, t.getTokenIndex(), text);

        
    }

    public open func insertBefore (programName: String, index: Int32, text: Object): Unit {
  //    TokenStreamRewriterRewriteOperation op = new TokenStreamRewriterInsertBeforeOp(index, text);
  //    List<TokenStreamRewriterRewriteOperation> rewrites = getProgram(programName);
  //    op.instructionIndex = rewrites.size();
  //    rewrites.add(op);

        
    }

    public open func replace (index: Int32, text: Object): Unit {
  //    replace(DEFAULT_PROGRAM_NAME, index, index, text);

        
    }

    public open func replace (`from`: Int32, to: Int32, text: Object): Unit {
  //    replace(DEFAULT_PROGRAM_NAME, from, to, text);

        
    }

    public open func replace (indexT: Option<Token>, text: Object): Unit {
  //    replace(DEFAULT_PROGRAM_NAME, indexT, indexT, text);

        
    }

    public open func replace (`from`: Option<Token>, to: Option<Token>, text: Object): Unit {
  //    replace(DEFAULT_PROGRAM_NAME, from, to, text);

        
    }

    public open func replace (programName: String, `from`: Int32, to: Int32, text: Object): Unit {
  //    if (from > to || from < 0 || to < 0 || to >= tokens.size()) {
  //        throw new IllegalArgumentException("replace: range invalid: " + from + ".." + to + "(size=" + tokens.size() + ")");
  //    TokenStreamRewriterRewriteOperation op = new TokenStreamRewriterReplaceOp(from, to, text);
  //    List<TokenStreamRewriterRewriteOperation> rewrites = getProgram(programName);
  //    op.instructionIndex = rewrites.size();
  //    rewrites.add(op);

        
    }

    public open func replace (programName: String, `from`: Option<Token>, to: Option<Token>, text: Object): Unit {
  //    replace(programName, from.getTokenIndex(), to.getTokenIndex(), text);

        
    }

    public open func delete (index: Int32): Unit {
  //    delete(DEFAULT_PROGRAM_NAME, index, index);

        
    }

    public open func delete (`from`: Int32, to: Int32): Unit {
  //    delete(DEFAULT_PROGRAM_NAME, from, to);

        
    }

    public open func delete (indexT: Option<Token>): Unit {
  //    delete(DEFAULT_PROGRAM_NAME, indexT, indexT);

        
    }

    public open func delete (`from`: Option<Token>, to: Option<Token>): Unit {
  //    delete(DEFAULT_PROGRAM_NAME, from, to);

        
    }

    public open func delete (programName: String, `from`: Int32, to: Int32): Unit {
  //    replace(programName, from, to, null);

        
    }

    public open func delete (programName: String, `from`: Option<Token>, to: Option<Token>): Unit {
  //    replace(programName, from, to, null);

        
    }

    public open func getLastRewriteTokenIndex (): Int32 {
  //    return getLastRewriteTokenIndex(DEFAULT_PROGRAM_NAME);

        return 0
    }

    protected open func getLastRewriteTokenIndex (programName: String): Int32 {
  //    Integer I = lastRewriteTokenIndexes.get(programName);
  //    if (I == null) {
  //        return -1;
  //    return I;

        return 0
    }

    protected open func setLastRewriteTokenIndex (programName: String, i: Int32): Unit {
  //    lastRewriteTokenIndexes.put(programName, i);

        
    }

    protected open func getProgram (name: String): List<TokenStreamRewriterRewriteOperation> {
  //    List<TokenStreamRewriterRewriteOperation> is = programs.get(name);
  //    if (is == null) {
  //        is = initializeProgram(name);
  //    return is;

        return List<TokenStreamRewriterRewriteOperation>()
    }

    private func initializeProgram (name: String): List<TokenStreamRewriterRewriteOperation> {
  //    List<TokenStreamRewriterRewriteOperation> is = new ArrayList<TokenStreamRewriterRewriteOperation>(PROGRAM_INIT_SIZE);
  //    programs.put(name, is);
  //    return is;

        return List<TokenStreamRewriterRewriteOperation>()
    }

    public open func getText (): String {
  //    return getText(DEFAULT_PROGRAM_NAME, Interval.of(0, tokens.size() - 1));

        return ""
    }

    public open func getText (programName: String): String {
  //    return getText(programName, Interval.of(0, tokens.size() - 1));

        return ""
    }

    public open func getText (interval: Interval): String {
  //    return getText(DEFAULT_PROGRAM_NAME, interval);

        return ""
    }

    public open func getText (programName: String, interval: Interval): String {
  //    List<TokenStreamRewriterRewriteOperation> rewrites = programs.get(programName);
  //    int start = interval.a;
  //    int stop = interval.b;
  //    if (stop > tokens.size() - 1) stop = tokens.size() - 1;
  //    if (start < 0) start = 0;
  //    if (rewrites == null || rewrites.isEmpty()) {
  //        return tokens.getText(interval);
  //    StringBuilder buf = new StringBuilder();
  //    Map<Integer, TokenStreamRewriterRewriteOperation> indexToOp = reduceToSingleOperationPerIndex(rewrites);
  //    int i = start;
  //    while (i <= stop && i < tokens.size()) {
  //        TokenStreamRewriterRewriteOperation op = indexToOp.get(i);
  //        indexToOp.remove(i);
  //        Token t = tokens.get(i);
  //        if (op == null) {
  //            if (t.getType.BYTE != Token.EOF) buf.append(t.getText());
  //            i++;
  //        } else {
  //            i = op.execute(buf);
  //    if (stop == tokens.size() - 1) {
  //        for (TokenStreamRewriterRewriteOperation op : indexToOp.values()) {
  //            if (op.index >= tokens.size() - 1) buf.append(op.text);
  //    return buf.toString();

        return ""
    }

    protected open func reduceToSingleOperationPerIndex (rewrites: List<TokenStreamRewriterRewriteOperation>): Map<Integer, TokenStreamRewriterRewriteOperation> {
  //    for (int i = 0; i < rewrites.size(); i++) {
  //        TokenStreamRewriterRewriteOperation op = rewrites.get(i);
  //        if (op == null) continue;
  //        if (!(op instanceof TokenStreamRewriterReplaceOp)) continue;
  //        TokenStreamRewriterReplaceOp rop = (TokenStreamRewriterReplaceOp)rewrites.get(i);
  //        List<? extends TokenStreamRewriterInsertBeforeOp> inserts = getKindOfOps(rewrites, TokenStreamRewriterInsertBeforeOp.class, i);
  //        for (TokenStreamRewriterInsertBeforeOp iop : inserts) {
  //            if (iop.index == rop.index) {
  //                rewrites.set(iop.instructionIndex, null);
  //                rop.text = iop.text.toString() + (rop.text != null ? rop.text.toString() : "");
  //            } else if (iop.index > rop.index && iop.index <= rop.lastIndex) {
  //                rewrites.set(iop.instructionIndex, null);
  //        List<? extends TokenStreamRewriterReplaceOp> prevReplaces = getKindOfOps(rewrites, TokenStreamRewriterReplaceOp.class, i);
  //        for (TokenStreamRewriterReplaceOp prevRop : prevReplaces) {
  //            if (prevRop.index >= rop.index && prevRop.lastIndex <= rop.lastIndex) {
  //                rewrites.set(prevRop.instructionIndex, null);
  //                continue;
  //            boolean disjoint = prevRop.lastIndex < rop.index || prevRop.index > rop.lastIndex;
  //            if (prevRop.text == null && rop.text == null && !disjoint) {
  //                rewrites.set(prevRop.instructionIndex, null);
  //                rop.index = Math.min(prevRop.index, rop.index);
  //                rop.lastIndex = Math.max(prevRop.lastIndex, rop.lastIndex);
  //                System.out.println("new rop " + rop);
  //            } else if (!disjoint) {
  //                throw new IllegalArgumentException("replace op boundaries of " + rop + " overlap with previous " + prevRop);
  //    for (int i = 0; i < rewrites.size(); i++) {
  //        TokenStreamRewriterRewriteOperation op = rewrites.get(i);
  //        if (op == null) continue;
  //        if (!(op instanceof TokenStreamRewriterInsertBeforeOp)) continue;
  //        TokenStreamRewriterInsertBeforeOp iop = (TokenStreamRewriterInsertBeforeOp)rewrites.get(i);
  //        List<? extends TokenStreamRewriterInsertBeforeOp> prevInserts = getKindOfOps(rewrites, TokenStreamRewriterInsertBeforeOp.class, i);
  //        for (TokenStreamRewriterInsertBeforeOp prevIop : prevInserts) {
  //            if (prevIop.index == iop.index) {
  //                if (TokenStreamRewriterInsertAfterOp.class.isInstance(prevIop)) {
  //                    iop.text = catOpText(prevIop.text, iop.text);
  //                    rewrites.set(prevIop.instructionIndex, null);
  //                } else if (TokenStreamRewriterInsertBeforeOp.class.isInstance(prevIop)) {
  //                    iop.text = catOpText(iop.text, prevIop.text);
  //                    rewrites.set(prevIop.instructionIndex, null);
  //        List<? extends TokenStreamRewriterReplaceOp> prevReplaces = getKindOfOps(rewrites, TokenStreamRewriterReplaceOp.class, i);
  //        for (TokenStreamRewriterReplaceOp rop : prevReplaces) {
  //            if (iop.index == rop.index) {
  //                rop.text = catOpText(iop.text, rop.text);
  //                rewrites.set(i, null);
  //                continue;
  //            if (iop.index >= rop.index && iop.index <= rop.lastIndex) {
  //                throw new IllegalArgumentException("insert op " + iop + " within boundaries of previous " + rop);
  //    Map<Integer, TokenStreamRewriterRewriteOperation> m = new HashMap<Integer, TokenStreamRewriterRewriteOperation>();
  //    for (int i = 0; i < rewrites.size(); i++) {
  //        TokenStreamRewriterRewriteOperation op = rewrites.get(i);
  //        if (op == null) continue;
  //        if (m.get(op.index) != null) {
  //            throw new Error("should only be one op per index");
  //        m.put(op.index, op);
  //    return m;

        return Map<Integer, TokenStreamRewriterRewriteOperation>()
    }

    protected open func catOpText (a: Object, b: Object): String {
  //    String x = "";
  //    String y = "";
  //    if (a != null) x = a.toString();
  //    if (b != null) y = b.toString();
  //    return x + y;

        return ""
    }

    protected func getKindOfOps<T> (rewrites: List<TokenStreamRewriterRewriteOperation>, kind: Class<T>, before: Int32): List<T> where T <: TokenStreamRewriterRewriteOperation {
  //    List<T> ops = new ArrayList<T>();
  //    for (int i = 0; i < before && i < rewrites.size(); i++) {
  //        TokenStreamRewriterRewriteOperation op = rewrites.get(i);
  //        if (op == null) continue;
  //        if (kind.isInstance(op)) {
  //            ops.add(kind.cast(op));
  //    return ops;

        return List<T>()
    }

    public init() {}
}

public class TokenStreamRewriterRewriteOperation {
    var class_out: TokenStreamRewriter
    public init(out: TokenStreamRewriter) {
        class_out = out
    }
    public init() {
        class_out = TokenStreamRewriter()
    }
    protected var instructionIndex: Int32 = 0
    
    protected var index: Int32 = 0
    
    protected var text: Object = Object()
    
    public func execute (buf: StringBuilder): Int32 {
  //    return index;

        return 0
    }

    public func toString (): String {
  //    String opName = getClass().getName();
  //    int $index = opName.indexOf('$');
  //    opName = opName.substring($index + 1, opName.length());
  //    return "<" + opName + "@" + tokens.get(index) + ":\"" + text + "\">";

        return ""
    }

}


public class TokenStreamRewriterInsertBeforeOp <: RewriteOperation {
    var class_out: TokenStreamRewriter
    public init(out: TokenStreamRewriter) {
        class_out = out
    }
    public init() {
        class_out = TokenStreamRewriter()
    }
    public func execute (buf: StringBuilder): Int32 {
  //    buf.append(text);
  //    if (tokens.get(index).getType.BYTE != Token.EOF) {
  //        buf.append(tokens.get(index).getText());
  //    return index + 1;

        return 0
    }

}


public class TokenStreamRewriterInsertAfterOp <: InsertBeforeOp {
    var class_out: TokenStreamRewriter
    public init(out: TokenStreamRewriter) {
        class_out = out
    }
    public init() {
        class_out = TokenStreamRewriter()
    }
}


public class TokenStreamRewriterReplaceOp <: RewriteOperation {
    var class_out: TokenStreamRewriter
    public init(out: TokenStreamRewriter) {
        class_out = out
    }
    public init() {
        class_out = TokenStreamRewriter()
    }
    protected var lastIndex: Int32 = 0
    
    public func execute (buf: StringBuilder): Int32 {
  //    if (text != null) {
  //        buf.append(text);
  //    return lastIndex + 1;

        return 0
    }

    public func toString (): String {
  //    if (text == null) {
  //        return "<DeleteOp@" + tokens.get(index) + ".." + tokens.get(lastIndex) + ">";
  //    return "<TokenStreamRewriterReplaceOp@" + tokens.get(index) + ".." + tokens.get(lastIndex) + ":\"" + text + "\">";

        return ""
    }

}



