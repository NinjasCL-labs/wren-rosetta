// url: https://rosettacode.org/wiki/Sum_and_product_of_an_array#Wren
// source: https://rosettacode.org/mw/index.php?title=Sum_and_product_of_an_array&action=edit&section=172
// file: sum_and_product_of_an_array
// name: Sum and product of an array
// author: PureFox
// license: MIT

import "/modules/math" for Nums
var a = [7, 10, 2, 4, 6, 1, 8, 3, 9, 5]
System.print("Array   : %(a)")
System.print("Sum     : %(Nums.sum(a))")
System.print("Product : %(Nums.prod(a))")
