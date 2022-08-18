package atn

from std import collection.*

open public class ArrayPredictionContext <: PredictionContext {

    public let parents: Array<PredictionContext> = Array<PredictionContext>()
    
    public let returnStates: Array<Int32> = Array<Int32>()
    
    public init (a: SingletonPredictionContext){

    }

    public init (parents: Array<PredictionContext>, returnStates: Array<Int32>){

    }

    public open override func isEmpty (): Bool {
        return true
    }

    public open override func sizeFunc (): Int32 {
        return 0
    }

    public open override func getParent (index: Int32): PredictionContext {
        return PredictionContext()
    }

    public open override func getReturnState (index: Int32): Int32 {
        return 0
    }

    public open override func equals (o: Object): Bool {
        return true
    }

    public open override func toString (): String {
        return ""
    }

    public init() {}
}


