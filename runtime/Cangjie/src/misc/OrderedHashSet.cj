package default

from std import collection.*
// import java.util.Iterator;

open public class OrderedHashSet<T> <: LinkedHashSet<T> {

    protected var elements: ArrayList<T> = ArrayList<T>()
    
    public open func get (i: Int32): T {
  //    return elements.get(i);

        return T()
    }

    public open func setFunc (i: Int32, value: T): T {
  //    T oldElement = elements.get(i);
  //    elements.set(i, value);
  //    super.remove(oldElement);
  //    super.add(value);
  //    return oldElement;

        return T()
    }

    public open func remove (i: Int32): Bool {
  //    T o = elements.remove(i);
  //    return super.remove(o);

        return true
    }

    public open func add (value: T): Bool {
  //    boolean result = super.add(value);
  //    if (result) {
  //        elements.add(value);
  //    return result;

        return true
    }

    public open func remove (o: Object): Bool {
  //    throw new UnsupportedOperationException();

        return true
    }

    public open func clear (): Unit {
  //    elements.clear();
  //    super.clear();

        
    }

    public open func hashCodeFunc (): Int32 {
  //    return elements.hashCode();

        return 0
    }

    public open func equals (o: Object): Bool {
  //    if (!(o instanceof OrderedHashSet<?>)) {
  //        return false;
  //    boolean same = elements != null && elements.equals(((OrderedHashSet<?>)o).elements);
  //    return same;

        return true
    }

    public open func iterator (): Option<Iterator<T>> {
  //    return elements.iterator();

        return Option<Iterator<T>>.None
    }

    public open func elementsFunc (): List<T> {
  //    return elements;

        return List<T>()
    }

    public open func clone (): Object {
  //    @SuppressWarnings("unchecked")
  //    OrderedHashSet<T> dup = (OrderedHashSet<T>)super.clone();
  //    dup.elements = new ArrayList<T>(this.elements);
  //    return dup;

        return Object()
    }

    public open func toArray (): Array<Object> {
  //    return elements.toArray();

        return Array<Object>()
    }

    public open func toString (): String {
  //    return elements.toString();

        return ""
    }

    public init() {}
}


