package atn

// import org.antlr.v4.runtime.misc.ObjectEqualityComparator;

open public class OrderedATNConfigSet <: ATNConfigSet {

    public init (){

    }

}

class OrderedATNConfigSetLexerConfigHashSet <: AbstractConfigHashSet {
    var class_out: OrderedATNConfigSet
    public init(out: OrderedATNConfigSet) {
        class_out = out
    }
    public init() {
        class_out = OrderedATNConfigSet()
    }
}



