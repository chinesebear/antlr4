package default

// import org.antlr.v4.runtime.Recognizer;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.misc.MurmurHash;
// import org.antlr.v4.runtime.misc.Utils;
from std import collection.*
// import java.util.Collection;
// import java.util.Collections;
// import java.util.Iterator;

public abstract class SemanticContext {

    public static let NONE: Option<SemanticContext> = Option<SemanticContext>.None
    
    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool 

    public open func evalPrecedence (parser: Recognizer<T, T>, parserCallStack: RuleContext): Option<SemanticContext> {
  //    return this;

        return Option<SemanticContext>.None
    }

    public static func and (a: Option<SemanticContext>, b: Option<SemanticContext>): Option<SemanticContext> {
  //    if (a == null || a == NONE) return b;
  //    if (b == null || b == NONE) return a;
  //    SemanticContextAND result = new SemanticContextAND(a, b);
  //    if (result.opnds.length == 1) {
  //        return result.opnds[0];
  //    return result;

        return Option<SemanticContext>.None
    }

    public static func or (a: Option<SemanticContext>, b: Option<SemanticContext>): Option<SemanticContext> {
  //    if (a == null) return b;
  //    if (b == null) return a;
  //    if (a == NONE || b == NONE) return NONE;
  //    SemanticContextOR result = new SemanticContextOR(a, b);
  //    if (result.opnds.length == 1) {
  //        return result.opnds[0];
  //    return result;

        return Option<SemanticContext>.None
    }

    private static func filterPrecedencePredicates (collection: Collection<Option<SemanticContext>>): List<SemanticContextPrecedencePredicate> {
  //    ArrayList<SemanticContextPrecedencePredicate> result = null;
  //    for (Iterator<? extends SemanticContext> iterator = collection.iterator(); iterator.hasNext(); ) {
  //        SemanticContext context = iterator.next();
  //        if (context instanceof SemanticContextPrecedencePredicate) {
  //            if (result == null) {
  //                result = new ArrayList<SemanticContextPrecedencePredicate>();
  //            result.add((SemanticContextPrecedencePredicate)context);
  //            iterator.remove();
  //    if (result == null) {
  //        return Collections.emptyList();
  //    return result;

        return List<SemanticContextPrecedencePredicate>()
    }

    public init() {}
}

public class SemanticContextPredicate <: SemanticContext {
    var class_out: Option<SemanticContext>
    public init(out: Option<SemanticContext>) {
        class_out = out
    }
    public init() {
        class_out = Option<SemanticContext>.None
    }
    public let ruleIndex: Int32 = 0
    
    public let predIndex: Int32 = 0
    
    public let isCtxDependent: Bool = true
    
    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool {
  //    RuleContext localctx = isCtxDependent ? parserCallStack : null;
  //    return parser.sempred(localctx, ruleIndex, predIndex);

        return true
    }

    public func hashCodeFunc (): Int32 {
  //    int hashCode = MurmurHash.initialize();
  //    hashCode = MurmurHash.update(hashCode, ruleIndex);
  //    hashCode = MurmurHash.update(hashCode, predIndex);
  //    hashCode = MurmurHash.update(hashCode, isCtxDependent ? 1 : 0);
  //    hashCode = MurmurHash.finish(hashCode, 3);
  //    return hashCode;

        return 0
    }

    public func equals (obj: Object): Bool {
  //    if (!(obj instanceof SemanticContextPredicate)) return false;
  //    if (this == obj) return true;
  //    SemanticContextPredicate p = (SemanticContextPredicate)obj;
  //    return this.ruleIndex == p.ruleIndex && this.predIndex == p.predIndex && this.isCtxDependent == p.isCtxDependent;

        return true
    }

    public func toString (): String {
  //    return "{" + ruleIndex + ":" + predIndex + "}?";

        return ""
    }

}


public class SemanticContextPrecedencePredicate <: SemanticContext & Comparable<PrecedencePredicate> {
    var class_out: Option<SemanticContext>
    public init(out: Option<SemanticContext>) {
        class_out = out
    }
    public init() {
        class_out = Option<SemanticContext>.None
    }
    public let precedence: Int32 = 0
    
    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool {
  //    return parser.precpred(parserCallStack, precedence);

        return true
    }

    public func evalPrecedence (parser: Recognizer<T, T>, parserCallStack: RuleContext): Option<SemanticContext> {
  //    if (parser.precpred(parserCallStack, precedence)) {
  //        return Option<SemanticContext>.NONE;
  //    } else {
  //        return null;

        return Option<SemanticContext>.None
    }

    public func compareTo (o: SemanticContextPrecedencePredicate): Int32 {
  //    return precedence - o.precedence;

        return 0
    }

    public func hashCodeFunc (): Int32 {
  //    int hashCode = 1;
  //    hashCode = 31 * hashCode + precedence;
  //    return hashCode;

        return 0
    }

    public func equals (obj: Object): Bool {
  //    if (!(obj instanceof SemanticContextPrecedencePredicate)) {
  //        return false;
  //    if (this == obj) {
  //        return true;
  //    SemanticContextPrecedencePredicate other = (SemanticContextPrecedencePredicate)obj;
  //    return this.precedence == other.precedence;

        return true
    }

    public func toString (): String {
  //    return "{" + precedence + ">=prec}?";

        return ""
    }

}


public class SemanticContextOperator <: SemanticContext {
    var class_out: Option<SemanticContext>
    public init(out: Option<SemanticContext>) {
        class_out = out
    }
    public init() {
        class_out = Option<SemanticContext>.None
    }
    public func getOperands (): Collection<Option<SemanticContext>> 

}


public class SemanticContextAND <: Operator {
    var class_out: Option<SemanticContext>
    public init(out: Option<SemanticContext>) {
        class_out = out
    }
    public init() {
        class_out = Option<SemanticContext>.None
    }
    public let opnds: Array<Option<SemanticContext>> = Array<Option<SemanticContext>>()
    
    public func getOperands (): Collection<Option<SemanticContext>> {
  //    return Arrays.asList(opnds);

        return Collection<Option<SemanticContext>>()
    }

    public func equals (obj: Object): Bool {
  //    if (this == obj) return true;
  //    if (!(obj instanceof SemanticContextAND)) return false;
  //    SemanticContextAND other = (SemanticContextAND)obj;
  //    return Arrays.equals(this.opnds, other.opnds);

        return true
    }

    public func hashCodeFunc (): Int32 {
  //    return MurmurHash.hashCode(opnds, SemanticContextAND.class.hashCode());

        return 0
    }

    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool {
  //    for (SemanticContext opnd : opnds) {
  //        if (!opnd.eval(parser, parserCallStack)) return false;
  //    return true;

        return true
    }

    public func evalPrecedence (parser: Recognizer<T, T>, parserCallStack: RuleContext): Option<SemanticContext> {
  //    boolean differs = false;
  //    List<SemanticContext> operands = new ArrayList<SemanticContext>();
  //    for (SemanticContext context : opnds) {
  //        SemanticContext evaluated = context.evalPrecedence(parser, parserCallStack);
  //        differs |= (evaluated != context);
  //        if (evaluated == null) {
  //            return null;
  //        } else if (evaluated != NONE) {
  //            operands.add(evaluated);
  //    if (!differs) {
  //        return this;
  //    if (operands.isEmpty()) {
  //        return NONE;
  //    SemanticContext result = operands.get(0);
  //    for (int i = 1; i < operands.size(); i++) {
  //        result = SemanticContext.and(result, operands.get(i));
  //    return result;

        return Option<SemanticContext>.None
    }

    public func toString (): String {
  //    return Utils.join(Arrays.asList(opnds).iterator(), "&&");

        return ""
    }

}


public class SemanticContextOR <: Operator {
    var class_out: Option<SemanticContext>
    public init(out: Option<SemanticContext>) {
        class_out = out
    }
    public init() {
        class_out = Option<SemanticContext>.None
    }
    public let opnds: Array<Option<SemanticContext>> = Array<Option<SemanticContext>>()
    
    public func getOperands (): Collection<Option<SemanticContext>> {
  //    return Arrays.asList(opnds);

        return Collection<Option<SemanticContext>>()
    }

    public func equals (obj: Object): Bool {
  //    if (this == obj) return true;
  //    if (!(obj instanceof SemanticContextOR)) return false;
  //    SemanticContextOR other = (SemanticContextOR)obj;
  //    return Arrays.equals(this.opnds, other.opnds);

        return true
    }

    public func hashCodeFunc (): Int32 {
  //    return MurmurHash.hashCode(opnds, SemanticContextOR.class.hashCode());

        return 0
    }

    public func eval (parser: Recognizer<T, T>, parserCallStack: RuleContext): Bool {
  //    for (SemanticContext opnd : opnds) {
  //        if (opnd.eval(parser, parserCallStack)) return true;
  //    return false;

        return true
    }

    public func evalPrecedence (parser: Recognizer<T, T>, parserCallStack: RuleContext): Option<SemanticContext> {
  //    boolean differs = false;
  //    List<SemanticContext> operands = new ArrayList<SemanticContext>();
  //    for (SemanticContext context : opnds) {
  //        SemanticContext evaluated = context.evalPrecedence(parser, parserCallStack);
  //        differs |= (evaluated != context);
  //        if (evaluated == NONE) {
  //            return NONE;
  //        } else if (evaluated != null) {
  //            operands.add(evaluated);
  //    if (!differs) {
  //        return this;
  //    if (operands.isEmpty()) {
  //        return null;
  //    SemanticContext result = operands.get(0);
  //    for (int i = 1; i < operands.size(); i++) {
  //        result = SemanticContext.or(result, operands.get(i));
  //    return result;

        return Option<SemanticContext>.None
    }

    public func toString (): String {
  //    return Utils.join(Arrays.asList(opnds).iterator(), "||");

        return ""
    }

}



