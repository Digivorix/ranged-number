# Ranged Number
A set of classes that allow you to create objects that store and perform operations on Int & Float values within a defined boundary. Works with Haxe 3.x and 4.x.

## Bounds Checking
The main feature of this library is bounds checking. Any operations performed are first checked against a range provided at the creation of an RangedInt, RangedFloat, or RangedNumber object.

## Limits
All of the classes have 2 limits. The 1st limit is the number range that you set upon creating an object. The 2nd limit is the hard coded minimum and maximum that an objects can store. 

This limit will depend on which ranged number type you are using. If your defined limit exceeds the hard coded maximum or minimum, then the corresponding value will simply be set to that hard coded maximum or minimum.

**Maximums**

- The maximum value for RangedInt and RangedNumber objects is 2147483648, which is the upper limit of a 32-bit Integer.

- The maximum value for a RangedFloat object is 1.79e+308.

**Minimums**

- The minimum value for RangedInt and RangedNumber objects is -2147483648, which is the lower limit of a 32-bit Integer.

- The minimum value for a RangedFloat object is -1.79e+308.

## Math Operations
You can add to and subtract from the stored value using the math functions included with each class. Putting these operations into dedicated functions allows the operation to be bounds checked before it is applied to the actual stored value.

There are also functions for multiply, divide, and modulo.

If an operation will exceed the provided range, then it will simply max out the stored value at either the provided minimum or maximum boundary (depending on the operation).

## Explaining the RangedNumber Class
The RangedNumber class stores its value as a Float, but it has the upper and lower limits of a RangedInt. This accounts for the lower technical limits of an Integer and allows you to fetch the value as either a Float or an Int no matter its value. This feature is not present in the RangedInt or RangedFloat classes.

If you have no need for this functionality, then it is recommended to use the RangedInt and RangedFloat classes.

## Docs
The compiled documentation is included under the /docs directory. 

## Compatibility
This library is compatible with the Flash, C++, Neko, and JavaScript targets for Haxe 3.x and 4.x. Other targets may be compatible, but have not been tested.

## Demo
Some example code can be found in the /demo directory.

## Project Files
The included project files are for HaxeDevelop/FlashDevelop 5.3.

## License
The code in this repository is available under the MIT License.
