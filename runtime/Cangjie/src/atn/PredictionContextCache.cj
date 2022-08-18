package atn

from std import collection.*

open public class PredictionContextCache {

    protected let cache: Map<PredictionContext, PredictionContext> = Map<PredictionContext, PredictionContext>()
    
    public open func add (ctx: PredictionContext): PredictionContext {
        return PredictionContext()
    }

    public open func get (ctx: PredictionContext): PredictionContext {
        return PredictionContext()
    }

    public open func sizeFunc (): Int32 {
        return 0
    }

    public init() {}
}


