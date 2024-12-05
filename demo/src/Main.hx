package;

import numbers.RangedInt;
import numbers.RangedFloat;
import numbers.RangedNumber;

/**
 * A simple demo for the ranged-numbers library
 * @author Toby Davis
 */
class Main 
{
	
	static function main() 
	{
		//Create a RangedInt, RangedFloat, and RangedNumber object
		var rInt:RangedInt;
		var rFloat:RangedFloat;
		var rNumber:RangedNumber;
		
		//Set the initial values and ranges for all 3 objects
		rInt = new RangedInt(50, 100, -100);
		rFloat = new RangedFloat(60.5, 90.5, -90.5);
		rNumber = new RangedNumber(60.5, 90, -90); //The value is a Float but the limits are Ints
		
		//Perform some math operations with the objects
		trace("--RangedInt with Addition--");
		trace("rInt current value: " + rInt.getValue());
		rInt.add(10);
		trace("rInt value after addition: " + rInt.getValue() + "\n");
		
		trace("--RangedFloat with Subtraction--");
		trace("rFloat current value: " + rFloat.getValue());
		rFloat.subtract(5.5);
		trace("rFloat value after subtraction: " + rFloat.getValue() + "\n");
		
		trace("--RangedNumber with Addition--");
		trace("rNumber current value (Int): " + rNumber.getInt());
		trace("rNumber current value (Float): " + rNumber.getFloat() + "\n");
		rNumber.add(15.2);
		trace("rNumber value after addition (Int): " + rNumber.getInt());
		trace("rNumber value after addition (Float): " + rNumber.getFloat() + "\n");
		
		//Attempt to add more than the defined range for this rInt object will allow
		trace("--RangedInt with Intential Bounds Break--");
		trace("rInt current value: " + rInt.getValue());
		rInt.add(999); //The function will see this exceedes the provided bounds and only set the RangedInt as high as it is allowed to go, which is 100 in this case
		trace("rInt value after trying to add 999: " + rInt.getValue() + "\n");
	}
	
}