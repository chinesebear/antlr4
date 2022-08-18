package atn

// import org.antlr.v4.runtime.Recognizer;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.misc.MurmurHash;
// import org.antlr.v4.runtime.misc.Utils;
from std import collection.*
// import java.util.Collection;
// import java.util.Collections;
// import java.util.Iterator;

public abstract class SemanticContext {

    public static let NONE: SemanticContext = SemanticContext()
    
    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool 

    public func evalPrecedence (parser: Recognizer<T, T>, parserCallStack: RuleContext): SemanticContext {
        return SemanticContext()
    }

    public static func and (a: SemanticContext, b: SemanticContext): SemanticContext {
        return SemanticContext()
    }

    public static func or (a: SemanticContext, b: SemanticContext): SemanticContext {
        return SemanticContext()
    }

    private static func filterPrecedencePredicates (collection: Collection< SemanticContext>): List<PrecedencePredicate> {
        return List<PrecedencePredicate>()
    }

    public init() {}
}

class SemanticContextPredicate <: SemanticContext {
    var class_out: SemanticContext
    public init(out: SemanticContext) {
        class_out = out
    }
    public init() {
        class_out = SemanticContext()
    }
    public let ruleIndex: Int32 = 0
    
    public let predIndex: Int32 = 0
    
    public let isCtxDependent: Bool = true
    
    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool {
        return true
    }

    public func hashCodeFunc (): Int32 {
        return 0
    }

    public func equals (obj: Object): Bool {
        return true
    }

    public func toString (): String {
        return ""
    }

}


class SemanticContextPrecedencePredicate <: SemanticContext & Comparable<PrecedencePredicate> {
    var class_out: SemanticContext
    public init(out: SemanticContext) {
        class_out = out
    }
    public init() {
        class_out = SemanticContext()
    }
    public let precedence: Int32 = 0
    
    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool {
        return true
    }

    public func evalPrecedence (parser: Recognizer<T, T>, parserCallStack: RuleContext): SemanticContext {
        return SemanticContext()
    }

    public func compareTo (o: PrecedencePredicate): Int32 {
        return 0
    }

    public func hashCodeFunc (): Int32 {
        return 0
    }

    public func equals (obj: Object): Bool {
        return true
    }

    public func toString (): String {
        return ""
    }

}


class SemanticContextOperator <: SemanticContext {
    var class_out: SemanticContext
    public init(out: SemanticContext) {
        class_out = out
    }
    public init() {
        class_out = SemanticContext()
    }
    public func getOperands (): Collection<SemanticContext> 

}


class SemanticContextAND <: Operator {
    var class_out: SemanticContext
    public init(out: SemanticContext) {
        class_out = out
    }
    public init() {
        class_out = SemanticContext()
    }
    public let opnds: Array<SemanticContext> = Array<SemanticContext>()
    
    public func getOperands (): Collection<SemanticContext> {
        return Collection<SemanticContext>()
    }

    public func equals (obj: Object): Bool {
        return true
    }

    public func hashCodeFunc (): Int32 {
        return 0
    }

    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool {
        return true
    }

    public func evalPrecedence (parser: Recognizer<T, T>, parserCallStack: RuleContext): SemanticContext {
        return SemanticContext()
    }

    public func toString (): String {
        return ""
    }

}


class SemanticContextOR <: Operator {
    var class_out: SemanticContext
    public init(out: SemanticContext) {
        class_out = out
    }
    public init() {
        class_out = SemanticContext()
    }
    public let opnds: Array<SemanticContext> = Array<SemanticContext>()
    
    public func getOperands (): Collection<SemanticContext> {
        return Collection<SemanticContext>()
    }

    public func equals (obj: Object): Bool {
        return true
    }

    public func hashCodeFunc (): Int32 {
        return 0
    }

    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool {
        return true
    }

    public func evalPrecedence (parser: Recognizer<T, T>, parserCallStack: RuleContext): SemanticContext {
        return SemanticContext()
    }

    public func toString (): String {
        return ""
    }

}



