package default

// import org.antlr.v4.runtime.misc.Interval;
from std import collection.*

open public class TokenStreamRewriter {

    public static let DEFAULT_PROGRAM_NAME: String = "default"
    
    public static let PROGRAM_INIT_SIZE: Int32 = 100
    
    public static let MIN_TOKEN_INDEX: Int32 = 0
    
    protected let tokens: TokenStream = TokenStream()
    
    protected let programs: Map<String, List<RewriteOperation>> = Map<String, List<RewriteOperation>>()
    
    protected let lastRewriteTokenIndexes: Map<String, Integer> = Map<String, Integer>()
    
    public open func getTokenStream (): TokenStream {
        return TokenStream()
    }

    public open func rollback (instructionIndex: Int32): Unit {
        
    }

    public open func rollback (programName: String, instructionIndex: Int32): Unit {
        
    }

    public open func deleteProgram (): Unit {
        
    }

    public open func deleteProgram (programName: String): Unit {
        
    }

    public open func insertAfter (t: Token, text: Object): Unit {
        
    }

    public open func insertAfter (index: Int32, text: Object): Unit {
        
    }

    public open func insertAfter (programName: String, t: Token, text: Object): Unit {
        
    }

    public open func insertAfter (programName: String, index: Int32, text: Object): Unit {
        
    }

    public open func insertBefore (t: Token, text: Object): Unit {
        
    }

    public open func insertBefore (index: Int32, text: Object): Unit {
        
    }

    public open func insertBefore (programName: String, t: Token, text: Object): Unit {
        
    }

    public open func insertBefore (programName: String, index: Int32, text: Object): Unit {
        
    }

    public open func replace (index: Int32, text: Object): Unit {
        
    }

    public open func replace (`from`: Int32, to: Int32, text: Object): Unit {
        
    }

    public open func replace (indexT: Token, text: Object): Unit {
        
    }

    public open func replace (`from`: Token, to: Token, text: Object): Unit {
        
    }

    public open func replace (programName: String, `from`: Int32, to: Int32, text: Object): Unit {
        
    }

    public open func replace (programName: String, `from`: Token, to: Token, text: Object): Unit {
        
    }

    public open func delete (index: Int32): Unit {
        
    }

    public open func delete (`from`: Int32, to: Int32): Unit {
        
    }

    public open func delete (indexT: Token): Unit {
        
    }

    public open func delete (`from`: Token, to: Token): Unit {
        
    }

    public open func delete (programName: String, `from`: Int32, to: Int32): Unit {
        
    }

    public open func delete (programName: String, `from`: Token, to: Token): Unit {
        
    }

    public open func getLastRewriteTokenIndex (): Int32 {
        return 0
    }

    protected open func getLastRewriteTokenIndex (programName: String): Int32 {
        return 0
    }

    protected open func setLastRewriteTokenIndex (programName: String, i: Int32): Unit {
        
    }

    protected open func getProgram (name: String): List<RewriteOperation> {
        return List<RewriteOperation>()
    }

    private func initializeProgram (name: String): List<RewriteOperation> {
        return List<RewriteOperation>()
    }

    public open func getText (): String {
        return ""
    }

    public open func getText (programName: String): String {
        return ""
    }

    public open func getText (interval: Interval): String {
        return ""
    }

    public open func getText (programName: String, interval: Interval): String {
        return ""
    }

    protected open func reduceToSingleOperationPerIndex (rewrites: List<RewriteOperation>): Map<Integer, RewriteOperation> {
        return Map<Integer, RewriteOperation>()
    }

    protected open func catOpText (a: Object, b: Object): String {
        return ""
    }

    protected open func getKindOfOps<T> (rewrites: List< RewriteOperation>, kind: Class<T>, before: Int32): List< T> where T <: RewriteOperation{
        return List< T>()
    }

    public init() {}
}

class TokenStreamRewriterRewriteOperation {
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
        return 0
    }

    public func toString (): String {
        return ""
    }

}


class TokenStreamRewriterInsertBeforeOp <: RewriteOperation {
    var class_out: TokenStreamRewriter
    public init(out: TokenStreamRewriter) {
        class_out = out
    }
    public init() {
        class_out = TokenStreamRewriter()
    }
    public func execute (buf: StringBuilder): Int32 {
        return 0
    }

}


class TokenStreamRewriterInsertAfterOp <: InsertBeforeOp {
    var class_out: TokenStreamRewriter
    public init(out: TokenStreamRewriter) {
        class_out = out
    }
    public init() {
        class_out = TokenStreamRewriter()
    }
}


class TokenStreamRewriterReplaceOp <: RewriteOperation {
    var class_out: TokenStreamRewriter
    public init(out: TokenStreamRewriter) {
        class_out = out
    }
    public init() {
        class_out = TokenStreamRewriter()
    }
    protected var lastIndex: Int32 = 0
    
    public func execute (buf: StringBuilder): Int32 {
        return 0
    }

    public func toString (): String {
        return ""
    }

}



