package atn

// import org.antlr.v4.runtime.misc.AbstractEqualityComparator;
from std import collection.*
// import org.antlr.v4.runtime.misc.MurmurHash;
// import java.util.Collection;
// import java.util.Iterator;

public enum PredictionMode {
    | SLL
    | LL
    | LL_EXACT_AMBIG_DETECTION
}


