/* Module "set.wren" */
 
/* Set represents an unordered collection of unique objects. It is implemented as a Map
   whose keys are the elements of the set but whose values are always 1. Consequently, only
   element types which can be Map keys are supported and iteration order is undefined.
*/
class Set is Sequence {
    // Constructs a new empty Set object.
    construct new() {
        _m = {}
    }
 
    // Constructs a new Set object and adds the elements of a sequence to it.
    construct new(seq) {
        if (!(seq is Sequence)) Fiber.abort("Argument must be a Sequence.")
        _m = {}
        for (e in seq) _m[e] = 1
    }
 
    // Returns the number of elements in the current instance.
    count { _m.count }
 
    // Returns whether or not the current instance is empty.
    isEmpty { _m.count == 0 }
 
    // Adds an element 'e' to the current instance. If the set already contains 'e'
    // the set remains unchanged.
    add(e) {
        _m[e] = 1
    }
 
    // Adds all the elements of a sequence to the current instance. Duplicates are
    // effectively ignored.
    addAll(seq) {
        if (!(seq is Sequence)) Fiber.abort("Argument must be a Sequence.")
        for (e in seq) _m[e] = 1
    }
 
    // Merges all the elements of another Set object into the current instance.
    // Duplicates are effectively ignored. A specialized version of 'addAll',
    merge(other) {
        if (other.type != Set) Fiber.abort("Argument must be a Set.")
        for (e in other) _m[e] = 1
    }
 
    // Removes an element 'e' from the current instance if it exists.
    // Returns the element removed or null otherwise.
    remove(e) { _m.remove(e) ? e : null }
 
    // Removes all elements of a sequence from the current instance if they exist.
    removeAll(seq) {
        if (!(seq is Sequence)) Fiber.abort("Argument must be a Sequence.")
        for (e in seq) _m.remove(e)
    }
 
    // Removes 'removal' and adds 'addition'.
    replace(removal, addition) {
        remove(removal)
        add(addition)
    }
 
    // Removes 'removals' and adds 'additions'.
    replaceAll(removals, additions) {
        removeAll(removals)
        addAll(additions)
    }
 
    // Clears the current instance.
    clear() { _m.clear() }
 
    // Returns whether or not the current instance contains an element 'e'.
    contains(e) { _m.containsKey(e) }
 
    // Returns whether or not the current instance contains any element of a sequence.
    containsAny(seq) {
        if (!(seq is Sequence)) Fiber.abort("Argument must be a Sequence.")
        for (e in seq) {
            if (_m.containsKey(e)) return true
        }
        return false
    }
 
    // Returns whether or not the current instance contains all elements of a sequence.
    containsAll(seq) {
        if (!(seq is Sequence)) Fiber.abort("Argument must be a Sequence.")
        if (_m.count < seq.count) return false
        for (e in seq) {
            if (!_m.containsKey(e)) return false
        }
        return true
    }
 
    // Returns whether or not the current instance contains no elements of a sequence.
    containsNone(seq) { !containsAny(seq) }
 
    // Copies the elements of the current instance to a List and returns the List.
    toList { _m.keys.toList }
 
    // Copies the elements of the current instance to a Map, with a value of 1, and
    // returns the Map.
    toMap {
        var m = {}
        for (k in _m.keys) m[k] = 1
        return m
    }
 
    // Copies the elements of the current instance to a new Set object.
    copy() {
        var s = Set.new()
        for (k in _m.keys) s.add(k)
        return s
    }
 
    // Copies all unique elements of this instance and another Set to a new Set object.
    union(other) {
        if (other.type != Set) Fiber.abort("Argument must be a Set.")
        var s = Set.new()
        for (k in _m.keys) s.add(k)
        for (k in other) s.add(k)
        return s
    }
 
    // Copies all elements which this instance and another Set have in common
    // to a new Set object.
    intersect(other) {
        if (other.type != Set) Fiber.abort("Argument must be a Set.")
        var s = Set.new()
        for (k in _m.keys) {
           if (other.contains(k)) s.add(k)
        }
        return s
    }
 
    // Copies all elements of this instance which are not elements of another Set
    // to a new Set object.
    except(other) {
        if (other.type != Set) Fiber.abort("Argument must be a Set.")
        var s = Set.new()
        for (k in _m.keys) {
            if (!other.contains(k)) s.add(k)
        }
        return s
    }
 
    // Returns whether or not this instance is a subset of another Set.
    subsetOf(other) {
        if (other.type != Set) Fiber.abort("Argument must be a Set.")        
        if (_m.count > other.count) return false
        for (k in this) {
            if (!other.contains(k)) return false
        }
        return true
    }
 
    // Returns whether or not this instance is a proper subset of another Set.
    properSubsetOf(other) {
        if (other.type != Set) Fiber.abort("Argument must be a Set.")        
        if (_m.count >= other.count) return false
        for (k in this) {
            if (!other.contains(k)) return false
        }
        return true
    }
 
    // Returns whether or not this instance is a superset of another Set.
    // A specialized version of 'containsAll'.
    supersetOf(other) {
        if (other.type != Set) Fiber.abort("Argument must be a Set.")
        if (_m.count <= other.count) return false
        for (k in other) {
            if (!this.contains(k)) return false
        }
        return true
    }
 
    // Returns whether or not the elements of this instance are the same
    // as the elements of another Set and vice versa.
    ==(other) {
       if (other.type != Set) Fiber.abort("Argument must be a Set.")
       if (_m.count != other.count) return false
       for (k in this) {
            if (!other.contains(k)) return false
       }
       return true 
    }
 
    // Returns whether or not the elements of this instance are not all the same
    // as the elements of another Set and vice versa.
    !=(other) { !(this == other) }
 
    // Returns the string representation of the current instance enclosed in angle brackets
    // to distinguish from Maps and Lists.
    toString {
        var l = _m.keys.toList
        if (l.count == 0) return "<>"
        return "<" + _m.keys.toList.toString[1..-2] + ">"
    }
 
    // Iterator protocol methods, using keys of the internal map only.
    iterate(iter) { _m.keys.iterate(iter) }
 
    iteratorValue(iter) { _m.keys.iteratorValue(iter) }
}
 
// Type alias for class in case of a name clash with other modules.
var Set_Set = Set