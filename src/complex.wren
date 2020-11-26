/* Module "complex.wren" */

import "/trait" for Cloneable

/* Complex represents a complex number of the form 'a + bi' where 'a' and 'b'
   are both Nums. Complex objects are immutable.
*/
class Complex is Cloneable {
    // Private helper function to check that 'o' is a suitable type and throw an error
    // otherwise. Real numbers, rationals and numeric strings are returned as complex numbers.
    static check_(o) {
        if (o is Complex) return o
        if (o is Num) return new_(o, 0)
        if ((o is List) && o.count == 2 && (o[0] is Num) && (o[1] is Num)) {
            return Complex.new_(o[0], o[1])
        }
        if (o.type.toString == "Rat") return new_(r.toFloat, 0)
        if (o is String) return fromString(o)
        Fiber.abort("Argument must be a number, pair of numbers, a rational number or a complex string.")
    }

    // Constants.
    static minusOne     { Complex.new_(-1,  0) }
    static zero         { Complex.new_( 0,  0) }
    static one          { Complex.new_( 1,  0) }
    static two          { Complex.new_( 2,  0) }
    static ten          { Complex.new_(10,  0) } 
    static imagMinusOne { Complex.new_( 0, -1) }
    static imagOne      { Complex.new_( 0,  1) }
    static imagTwo      { Complex.new_( 0,  2) }
    static imagTen      { Complex.new_( 0, 10) }
    static i            { Complex.new_( 0,  1) } // same as imagOne
 
    static pi           { Complex.new_(Num.pi, 0) }
    static e            { Complex.new_(2.71828182845904523536, 0) }
    static phi          { Complex.new_(1.6180339887498948482,  0) } // golden ratio
    static tau          { Complex.new_(1.6180339887498948482,  0) } // synonym for phi
    static ln2          { Complex.new_(0.69314718055994530942, 0) } // 2.log
    static ln10         { Complex.new_(2.30258509299404568402, 0) } // 10.log

    // Determines whether a Complex object is always shown as such
    // or, if purely real, as a real.
    static showAsReal     { __showAsReal }
    static showAsReal=(b) { __showAsReal = b }

    // Constructs a new Complex object by passing it real and imaginary components.
    construct new(real, imag) {
        if (real.type != Num || imag.type != Num) System.print("Argument(s) must be numbers.")
        _real = real
        _imag = imag
    }

    // Convenience method which constructs a new Complex object from a Num by passing it
    // just a real component.
    static new(real) { new(real, 0) }

    // Private constructor which avoids type checking.
    construct new_(real, imag) {
        _real = real
        _imag = imag
    }

    // Constructs a Complex object from an ordered pair of numbers [real, imag].
    static fromPair(p) {
       if (p.type != List || p.count != 2 || p[0].type != Num || p[1].type != Num) {
            Fiber.abort("Argument must be an ordered pair of numbers.")
       }
       return Complex.new_(p[0], p[1])
    }

    // Constructs a Complex object from a string of the form '±a±bi', '±a' or '±bi'
    // where 'a' and 'b' are string representations of Nums.
    static fromString(s) {
        if (s.type != String) Fiber.abort("Argument must be a complex string.")
        s = s.trim()
        if (s == "") Fiber.abort("Invalid complex string.")
        s = s.replace("--", "+")
        if (s[0] == "+") s = s[1..-1]
        if (s == "") Fiber.abort("Invalid complex string.")
        s = s.replace("e+", "e")
        var neg = s[0] == "-"
        if (neg) {
            s = s[1..-1]
            if (s == "") Fiber.abort("Invalid complex string.")
        }
        var negExp = s.indexOf("e-") >= 0
        if (negExp) s = s.replace("e-", "\v")
        if (s.indexOf("+") >= 0) {
            var split = s.split("+")
            if (split.count != 2) Fiber.abort("Invalid complex string.")
            if (negExp) for (i in 0..1) split[i] = split[i].replace("\v", "e-")
            var real = Num.fromString(split[0])
            if (!real) Fiber.abort("Invalid real part.")
            if (neg) real = -real
            if (!split[1].endsWith("i")) Fiber.abort("Invalid complex string.")
            var imag = Num.fromString(split[1][0..-2])
            if (!imag) Fiber.abort("Invalid imaginary part.")
            return Complex.new_(real, imag)
        } else if (s.indexOf("-") >= 0) {
            var split = s.split("-")
            if (split.count != 2) Fiber.abort("Invalid complex string.")
            if (negExp) for (i in 0..1) split[i] = split[i].replace("\v", "e-")
            var real = Num.fromString(split[0])
            if (!real) Fiber.abort("Invalid real part.")
            if (neg) real = -real
            if (!split[1].endsWith("i")) Fiber.abort("Invalid complex string.")
            var imag = Num.fromString(split[1][0..-2])
            if (!imag) Fiber.abort("Invalid imaginary part.")
            return Complex.new_(real, -imag)
        } else if (s.endsWith("i")) {
            if (negExp) s = s.replace("\v", "e-")
            var imag = Num.fromString(s[0..-2])
            if (!imag) Fiber.abort("Invalid imaginary part.")
            if (neg) imag = -imag
            return Complex.new_(0, imag)
        } else {
            if (negExp) s = s.replace("\v", "e-")
            var real = Num.fromString(s)
            if (!real) Fiber.abort("Invalid real part.")
            if (neg) real = -real
            return Complex.new_(real, 0)
        }
    }

    // Constructs a Complex object from a Rat object.
    static fromRat(r) {
        if (r.type.toString != "Rat") Fiber.abort("Argument must be a rational number.")
        return Complex.new_(r.toFloat, 0)
    }

    // Constructs a Complex object from polar coordinates (r, theta).
    static fromPolar(r, theta)  {
        if (r.type != Num || theta.type != Num) {
            Fiber.abort("Arguments must be numbers.")      
        }
        return Complex.new_(r * theta.cos, r * theta.sin)
    }

    // Basic properties.
    real { _real }  // real component
    imag { _imag }  // imaginary component

    isInfinity { _real.isInfinity || _imag.isInfinty } // true if either part is infinite
    isNan      { _real.isNan || imag.isNan }           // true if either part is nan

    // Returns whether real component is an integer and imaginary component is zero.
    isRealInteger { _real.isInteger && _imag == 0 }

    // Returns whether imaginary component is an integer and real component is zero.
    isImagInteger { _imag.isInteger && _real == 0 }

    // Returns the ordered pair [_real, _imag].
    toPair { [_real, _imag] }

    // Returns the polar coordinates of this instance [modulus, phase].
    toPolar { [abs, phase] }

    // Returns a new instance which negates the current one.
    - { Complex.new_(-_real, -_imag) }

    // Returns the inverse or reciprocal of this instance.
    inverse {
        var denom = _real * _real + _imag * _imag
        return Complex.new_(_real/denom, -_imag/denom)
    }

    // Arithmetic operators (work with real numbers, rational numbers, complex strings
    // as well as other complex numbers). Always return a new instance.
    +(o) {
        o = Complex.check_(o)
        return Complex.new_(_real + o.real, _imag + o.imag)
    }

    -(o) { this + (-o) }

    *(o) {
        o = Complex.check_(o)
        return Complex.new_(
            _real * o.real - _imag * o.imag,
            _real * o.imag + _imag * o.real
        )
    }

    /(o) { 
        o = Complex.check_(o)
        var i = o.inverse
        return Complex.new_(
            _real * i.real - _imag * i.imag,
            _real * i.imag + _imag * i.real
        )
    }

    // Returns the absolute value or modulus of this instance.
    abs { (_real*_real + _imag*_imag).sqrt }

    // Returns the phase or argument of the current instance in the range [-π, π].
    phase { _imag.atan(_real) }

    // Returns the complex conjugate of this instance
    conj { Complex.new_(_real, -_imag) }

    // Returns the square of this instance.
    square { Complex.new_(_real * _real - _imag * _imag, _real * _imag * 2) }

    // Returns the square root of this instance.
    sqrt {
        var m = abs
        var r = ((m + _real)/2).sqrt
        var i = ((m - _real)/2).sqrt
        if (_imag < 0) i = -i
        return Complex.new_(r, i)
    }

    // Returns the base 'e' exponential of this instance.
    exp {
        var e = Complex.e.real.pow(_real) /* change to _real.exp from version 0.4.0 */
        return Complex.new_(e * _imag.cos, e * _imag.sin)
    }

    // Returns the natural logarithm of the current instance.
    log {
        var p = phase
        if (p > Num.pi) p = p - Num.pi*2
        return Complex.new_(abs.log, p)
    }

    // Returns the logarithm to the base 2 of the current instance.
    log2  { log / Complex.two.log }

    // Returns the logarithm to the base 10 of the current instance.
    log10 { log / Complex.ten.log }

    // Returns this instance to the power of the complex number 'e'.
    pow(e) {
        e = Complex.check_(e)
        return (log * e).exp
    }

    // Returns the cosine of the current instance.
    cos {
        var i = Complex.i
        return ((i * this).exp + (i * (-this)).exp) / Complex.two
    }

    // Returns the sine of the current instance.
    sin {
        var i = Complex.i
        return ((i * this).exp - (i * (-this)).exp) / Complex.imagTwo
    }

    // Returns the tangent of the current instance.
    tan { sin / cos }

    // Returns the arc cosine of the current instance.
    acos {
        var c = (Complex.one - square).sqrt
        c = this + c * Complex.imagMinusOne
        return c.log * Complex.i
    }

    // Returns the arc sine of the current instance.
    asin {
        var c = (Complex.one - square).sqrt
        c = c + this * Complex.imagMinusOne
        return c.log * Complex.i
    }

    // Returns the arc tangent of the current instance.
    atan {
        var a = Complex.new_(_real, _imag - 1)
        var b = Complex.new_(-_real, -_imag - 1)
        return (Complex.imagMinusOne * (a/b).log) / Complex.two
    }

    // Returns the hyperbolic cosine of the current instance.
    cosh { (this.exp + (-this).exp)/Complex.two }

    // Returns the hyperbolic sine of the current instance.
    sinh { (this.exp - (-this).exp)/Complex.two }

    // Returns the hyperbolic tangent of the current instance.
    tanh { sinh/cosh }

    // Returns the inverse hyperbolic cosine of the current instance.
    acosh { (this + (square - Complex.one).sqrt).log }

    // Returns the inverse hyperbolic sine of the current instance.
    asinh { (this + (square + Complex.one).sqrt).log }

    // Returns the inverse hyperbolic tangent of the current instance.
    atanh {
        var c = (this + Complex.one).log
        c = c - (-(this - Complex.one)).log
        return c / Complex.two
    }

    // The inherited 'clone' method just returns 'this' as Complex objects are immutable.
    // If you need an actual copy use this method instead.
    copy() { Complex.new_(_real, _imag ) }

    // Equality operators.
    ==(o) { 
        o = Complex.check_(o)
        return _real == o.real && _imag == o.imag 
    }
    !=(o) { !(this == o) }

    // Returns the string representation of this Complex object depending on 'showAsReal'.
    toString {
        if (_real == -0) _real = 0
        if (_imag == -0) _imag = 0
        var s = (_imag >= 0) ? "%(_real) + %(_imag)" : "%(_real) - %(-_imag)"
        s = (_imag.abs != 1) ? s + "i" : s[0..-2] + "i"
        if (s.endsWith("- 0i")) s = s[0..-5] + "+ 0i"
        return (Complex.showAsReal && _imag == 0) ? s = s[0..-6] : s
    }
}

/*  Complexes contains routines applicable to lists of complex numbers. */
class Complexes {
    static sum(a)  { a.reduce(Complex.zero) { |acc, x| acc + x } }
    static mean(a) { sum(a)/a.count }
    static prod(a) { a.reduce(Complex.one)  { |acc, x| acc * x } }
}

// Type aliases for classes in case of any name clashes with other modules.
var Complex_Complex  = Complex
var Complex_Complexes = Complexes
var Complex_Cloneable = Cloneable // in case imported indirectly
