package default

// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
from std import collection.*
// import java.util.Iterator;

open public class IntervalSet <: IntSet {

    public static let COMPLETE_CHAR_SET: IntervalSet = IntervalSet()
    
    public static let EMPTY_SET: IntervalSet = IntervalSet()
    
    protected var intervals: List<Interval> = List<Interval>()
    
    protected var readonly: Bool = true
    
    public init (intervals: List<Interval>){

    }

    public init (set: IntervalSet){

    }

    public init (els: Array<Int32>){

    }

    public func of (a: Int32): IntervalSet {
  //    IntervalSet s = new IntervalSet();
  //    s.add(a);
  //    return s;

        return IntervalSet()
    }

    public func of (a: Int32, b: Int32): IntervalSet {
  //    IntervalSet s = new IntervalSet();
  //    s.add(a, b);
  //    return s;

        return IntervalSet()
    }

    public open func clear (): Unit {
  //    if (readonly) throw new IllegalStateException("can\'t alter readonly IntervalSet");
  //    intervals.clear();

        
    }

    public open func add (el: Int32): Unit {
  //    if (readonly) throw new IllegalStateException("can\'t alter readonly IntervalSet");
  //    add(el, el);

        
    }

    public open func add (a: Int32, b: Int32): Unit {
  //    add(Interval.of(a, b));

        
    }

    protected open func add (addition: Interval): Unit {
  //    if (readonly) throw new IllegalStateException("can\'t alter readonly IntervalSet");
  //    if (addition.b < addition.a) {
  //        return;
  //    for (ListIterator<Interval> iter = intervals.listIterator(); iter.hasNext(); ) {
  //        Interval r = iter.next();
  //        if (addition.equals(r)) {
  //            return;
  //        if (addition.adjacent(r) || !addition.disjoint(r)) {
  //            Interval bigger = addition.union(r);
  //            iter.set(bigger);
  //            while (iter.hasNext()) {
  //                Interval next = iter.next();
  //                if (!bigger.adjacent(next) && bigger.disjoint(next)) {
  //                    break;
  //                iter.remove();
  //                iter.previous();
  //                iter.set(bigger.union(next));
  //                iter.next();
  //            return;
  //        if (addition.startsBeforeDisjoint(r)) {
  //            iter.previous();
  //            iter.add(addition);
  //            return;
  //    intervals.add(addition);

        
    }

    public func or (sets: Array<IntervalSet>): Option<IntSet> {
  //    IntervalSet r = new IntervalSet();
  //    for (IntervalSet s : sets) r.addAll(s);
  //    return r;

        return IntervalSet()
    }

    public open func addAll (set: Option<IntSet>): Option<IntSet> {
  //    if (set == null) {
  //        return this;
  //    if (set instanceof IntervalSet) {
  //        IntervalSet other = (IntervalSet)set;
  //        int n = other.intervals.size();
  //        for (int i = 0; i < n; i++) {
  //            Interval I = other.intervals.get(i);
  //            this.add(I.a, I.b);
  //    } else {
  //        for (int value : set.toList()) {
  //            add(value);
  //    return this;

        return IntervalSet()
    }

    public open func complement (minElement: Int32, maxElement: Int32): Option<IntSet> {
  //    return this.complement(IntervalSet.of(minElement, maxElement));

        return IntervalSet()
    }

    public open func complement (vocabulary: Option<IntSet>): Option<IntSet> {
  //    if (vocabulary == null || vocabulary.isNil()) {
  //        return null;
  //    IntervalSet vocabularyIS;
  //    if (vocabulary instanceof IntervalSet) {
  //        vocabularyIS = (IntervalSet)vocabulary;
  //    } else {
  //        vocabularyIS = new IntervalSet();
  //        vocabularyIS.addAll(vocabulary);
  //    return vocabularyIS.subtract(this);

        return IntervalSet()
    }

    public open func subtract (a: Option<IntSet>): Option<IntSet> {
  //    if (a == null || a.isNil()) {
  //        return new IntervalSet(this);
  //    if (a instanceof IntervalSet) {
  //        return subtract(this, (IntervalSet)a);
  //    IntervalSet other = new IntervalSet();
  //    other.addAll(a);
  //    return subtract(this, other);

        return IntervalSet()
    }

    public func subtract (left: IntervalSet, right: IntervalSet): Option<IntSet> {
  //    if (left == null || left.isNil()) {
  //        return new IntervalSet();
  //    IntervalSet result = new IntervalSet(left);
  //    if (right == null || right.isNil()) {
  //        return result;
  //    int resultI = 0;
  //    int rightI = 0;
  //    while (resultI < result.intervals.size() && rightI < right.intervals.size()) {
  //        Interval resultInterval = result.intervals.get(resultI);
  //        Interval rightInterval = right.intervals.get(rightI);
  //        if (rightInterval.b < resultInterval.a) {
  //            rightI++;
  //            continue;
  //        if (rightInterval.a > resultInterval.b) {
  //            resultI++;
  //            continue;
  //        Interval beforeCurrent = null;
  //        Interval afterCurrent = null;
  //        if (rightInterval.a > resultInterval.a) {
  //            beforeCurrent = new Interval(resultInterval.a, rightInterval.a - 1);
  //        if (rightInterval.b < resultInterval.b) {
  //            afterCurrent = new Interval(rightInterval.b + 1, resultInterval.b);
  //        if (beforeCurrent != null) {
  //            if (afterCurrent != null) {
  //                result.intervals.set(resultI, beforeCurrent);
  //                result.intervals.add(resultI + 1, afterCurrent);
  //                resultI++;
  //                rightI++;
  //                continue;
  //            } else {
  //                result.intervals.set(resultI, beforeCurrent);
  //                resultI++;
  //                continue;
  //        } else {
  //            if (afterCurrent != null) {
  //                result.intervals.set(resultI, afterCurrent);
  //                rightI++;
  //                continue;
  //            } else {
  //                result.intervals.remove(resultI);
  //                continue;
  //    return result;

        return IntervalSet()
    }

    public open func or (a: Option<IntSet>): Option<IntSet> {
  //    IntervalSet o = new IntervalSet();
  //    o.addAll(this);
  //    o.addAll(a);
  //    return o;

        return IntervalSet()
    }

    public open func and (other: Option<IntSet>): Option<IntSet> {
  //    if (other == null) {
  //        return null;
  //    List<Interval> myIntervals = this.intervals;
  //    List<Interval> theirIntervals = ((IntervalSet)other).intervals;
  //    IntervalSet intersection = null;
  //    int mySize = myIntervals.size();
  //    int theirSize = theirIntervals.size();
  //    int i = 0;
  //    int j = 0;
  //    while (i < mySize && j < theirSize) {
  //        Interval mine = myIntervals.get(i);
  //        Interval theirs = theirIntervals.get(j);
  //        if (mine.startsBeforeDisjoint(theirs)) {
  //            i++;
  //        } else if (theirs.startsBeforeDisjoint(mine)) {
  //            j++;
  //        } else if (mine.properlyContains(theirs)) {
  //            if (intersection == null) {
  //                intersection = new IntervalSet();
  //            intersection.add(mine.intersection(theirs));
  //            j++;
  //        } else if (theirs.properlyContains(mine)) {
  //            if (intersection == null) {
  //                intersection = new IntervalSet();
  //            intersection.add(mine.intersection(theirs));
  //            i++;
  //        } else if (!mine.disjoint(theirs)) {
  //            if (intersection == null) {
  //                intersection = new IntervalSet();
  //            intersection.add(mine.intersection(theirs));
  //            if (mine.startsAfterNonDisjoint(theirs)) {
  //                j++;
  //            } else if (theirs.startsAfterNonDisjoint(mine)) {
  //                i++;
  //    if (intersection == null) {
  //        return new IntervalSet();
  //    return intersection;

        return IntervalSet()
    }

    public open func contains (el: Int32): Bool {
  //    int n = intervals.size();
  //    int l = 0;
  //    int r = n - 1;
  //    while (l <= r) {
  //        int m = (l + r) / 2;
  //        Interval I = intervals.get(m);
  //        int a = I.a;
  //        int b = I.b;
  //        if (b < el) {
  //            l = m + 1;
  //        } else if (a > el) {
  //            r = m - 1;
  //        } else {
  //            return true;
  //    return false;

        return true
    }

    public open func isNil (): Bool {
  //    return intervals == null || intervals.isEmpty();

        return true
    }

    public open func getMaxElement (): Int32 {
  //    if (isNil()) {
  //        throw new RuntimeException("set is empty");
  //    Interval last = intervals.get(intervals.size() - 1);
  //    return last.b;

        return 0
    }

    public open func getMinElement (): Int32 {
  //    if (isNil()) {
  //        throw new RuntimeException("set is empty");
  //    return intervals.get(0).a;

        return 0
    }

    public open func getIntervals (): List<Interval> {
  //    return intervals;

        return List<Interval>()
    }

    public open func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    for (Interval I : intervals) {
  //        hash = MurmurHash.update(hash, I.a);
  //        hash = MurmurHash.update(hash, I.b);
  //    hash = MurmurHash.finish(hash, intervals.size() * 2);
  //    return hash;

        return 0
    }

    public open func equals (obj: Object): Bool {
  //    if (obj == null || !(obj instanceof IntervalSet)) {
  //        return false;
  //    IntervalSet other = (IntervalSet)obj;
  //    return this.intervals.equals(other.intervals);

        return true
    }

    public open func toString (): String {
  //    return toString(false);

        return ""
    }

    public open func toString (elemAreChar: Bool): String {
  //    StringBuilder buf = new StringBuilder();
  //    if (this.intervals == null || this.intervals.isEmpty()) {
  //        return "{}";
  //    if (this.size() > 1) {
  //        buf.append("{");
  //    Iterator<Interval> iter = this.intervals.iterator();
  //    while (iter.hasNext()) {
  //        Interval I = iter.next();
  //        int a = I.a;
  //        int b = I.b;
  //        if (a == b) {
  //            if (a == Token.EOF) buf.append("<EOF>"); else if (elemAreChar) buf.append("\'").appendCodePoint(a).append("\'"); else buf.append(a);
  //        } else {
  //            if (elemAreChar) buf.append("\'").appendCodePoint(a).append("\'..\'").appendCodePoint(b).append("\'"); else buf.append(a).append("..").append(b);
  //        if (iter.hasNext()) {
  //            buf.append(", ");
  //    if (this.size() > 1) {
  //        buf.append("}");
  //    return buf.toString();

        return ""
    }

    public open func toString (tokenNames: Array<String>): String {
  //    return toString(VocabularyImpl.fromTokenNames(tokenNames));

        return ""
    }

    public open func toString (vocabulary: Option<Vocabulary>): String {
  //    StringBuilder buf = new StringBuilder();
  //    if (this.intervals == null || this.intervals.isEmpty()) {
  //        return "{}";
  //    if (this.size() > 1) {
  //        buf.append("{");
  //    Iterator<Interval> iter = this.intervals.iterator();
  //    while (iter.hasNext()) {
  //        Interval I = iter.next();
  //        int a = I.a;
  //        int b = I.b;
  //        if (a == b) {
  //            buf.append(elementName(vocabulary, a));
  //        } else {
  //            for (int i = a; i <= b; i++) {
  //                if (i > a) buf.append(", ");
  //                buf.append(elementName(vocabulary, i));
  //        if (iter.hasNext()) {
  //            buf.append(", ");
  //    if (this.size() > 1) {
  //        buf.append("}");
  //    return buf.toString();

        return ""
    }

    protected open func elementName (tokenNames: Array<String>, a: Int32): String {
  //    return elementName(VocabularyImpl.fromTokenNames(tokenNames), a);

        return ""
    }

    protected open func elementName (vocabulary: Option<Vocabulary>, a: Int32): String {
  //    if (a == Token.EOF) {
  //        return "<EOF>";
  //    } else if (a == Token.EPSILON) {
  //        return "<EPSILON>";
  //    } else {
  //        return vocabulary.getDisplayName(a);

        return ""
    }

    public open func sizeFunc (): Int32 {
  //    int n = 0;
  //    int numIntervals = intervals.size();
  //    if (numIntervals == 1) {
  //        Interval firstInterval = this.intervals.get(0);
  //        return firstInterval.b - firstInterval.a + 1;
  //    for (int i = 0; i < numIntervals; i++) {
  //        Interval I = intervals.get(i);
  //        n += (I.b - I.a + 1);
  //    return n;

        return 0
    }

    public open func toIntegerList (): IntegerList {
  //    IntegerList values = new IntegerList(size());
  //    int n = intervals.size();
  //    for (int i = 0; i < n; i++) {
  //        Interval I = intervals.get(i);
  //        int a = I.a;
  //        int b = I.b;
  //        for (int v = a; v <= b; v++) {
  //            values.add(v);
  //    return values;

        return IntegerList()
    }

    public open func toList (): List<Integer> {
  //    List<Integer> values = new ArrayList<Integer>();
  //    int n = intervals.size();
  //    for (int i = 0; i < n; i++) {
  //        Interval I = intervals.get(i);
  //        int a = I.a;
  //        int b = I.b;
  //        for (int v = a; v <= b; v++) {
  //            values.add(v);
  //    return values;

        return List<Integer>()
    }

    public open func toSet (): Set<Integer> {
  //    Set<Integer> s = new HashSet<Integer>();
  //    for (Interval I : intervals) {
  //        int a = I.a;
  //        int b = I.b;
  //        for (int v = a; v <= b; v++) {
  //            s.add(v);
  //    return s;

        return Set<Integer>()
    }

    public open func get (i: Int32): Int32 {
  //    int n = intervals.size();
  //    int index = 0;
  //    for (int j = 0; j < n; j++) {
  //        Interval I = intervals.get(j);
  //        int a = I.a;
  //        int b = I.b;
  //        for (int v = a; v <= b; v++) {
  //            if (index == i) {
  //                return v;
  //            index++;
  //    return -1;

        return 0
    }

    public open func toArray (): Array<Int32> {
  //    return toIntegerList().toArray();

        return Array<Int32>()
    }

    public open func remove (el: Int32): Unit {
  //    if (readonly) throw new IllegalStateException("can\'t alter readonly IntervalSet");
  //    int n = intervals.size();
  //    for (int i = 0; i < n; i++) {
  //        Interval I = intervals.get(i);
  //        int a = I.a;
  //        int b = I.b;
  //        if (el < a) {
  //            break;
  //        if (el == a && el == b) {
  //            intervals.remove(i);
  //            break;
  //        if (el == a) {
  //            I.a++;
  //            break;
  //        if (el == b) {
  //            I.b--;
  //            break;
  //        if (el > a && el < b) {
  //            int oldb = I.b;
  //            I.b = el - 1;
  //            add(el + 1, oldb);

        
    }

    public open func isReadonly (): Bool {
  //    return readonly;

        return true
    }

    public open func setReadonly (readonly: Bool): Unit {
  //    if (this.readonly && !readonly) throw new IllegalStateException("can\'t alter readonly IntervalSet");
  //    this.readonly = readonly;

        
    }

    public init() {}
}


