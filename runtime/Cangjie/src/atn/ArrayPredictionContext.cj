package default

from std import collection.*

open public class ArrayPredictionContext <: PredictionContext {

    public let parents: Array<Option<PredictionContext>> = Array<Option<PredictionContext>>()
    
    public let returnStates: Array<Int32> = Array<Int32>()
    
    public init (a: SingletonPredictionContext){

    }

    public init (parents: Array<Option<PredictionContext>>, returnStates: Array<Int32>){

    }

    public open override func isEmpty (): Bool {
  //    return returnStates[0] == EMPTY_RETURN_STATE;

        return true
    }

    public open func size (): Int32 {
  //    return returnStates.length;

        return 0
    }

    public open func getParent (index: Int32): Option<PredictionContext> {
  //    return parents[index];

        return Option<PredictionContext>.None
    }

    public open func getReturnState (index: Int32): Int32 {
  //    return returnStates[index];

        return 0
    }

    public open func equals (o: Object): Bool {
  //    if (this == o) {
  //        return true;
  //    } else if (!(o instanceof ArrayPredictionContext)) {
  //        return false;
  //    if (this.hashCode() != o.hashCode()) {
  //        return false;
  //    ArrayPredictionContext a = (ArrayPredictionContext)o;
  //    return Arrays.equals(returnStates, a.returnStates) && Arrays.equals(parents, a.parents);

        return true
    }

    public open override func toString (): String {
  //    if (isEmpty()) return "[]";
  //    StringBuilder buf = new StringBuilder();
  //    buf.append("[");
  //    for (int i = 0; i < returnStates.length; i++) {
  //        if (i > 0) buf.append(", ");
  //        if (returnStates[i] == EMPTY_RETURN_STATE) {
  //            buf.append("$");
  //            continue;
  //        buf.append(returnStates[i]);
  //        if (parents[i] != null) {
  //            buf.append(' ');
  //            buf.append(parents[i].toString());
  //        } else {
  //            buf.append("null");
  //    buf.append("]");
  //    return buf.toString();

        return ""
    }

    public init() {}
}


