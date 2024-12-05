package numbers;

/**
 * Stores a Float value within a defined boundary that can be retrieved as either an Int or a Float.
 * 
 * Maximum values up to 2147483647 are accepted.
 * 
 * Minimum values down to -2147483648 are accepted.
 */
class RangedNumber
{
	//Will accept an Int but is a Float to allow for decimals
	private var value:Float;
	
	//These are set to the 32-bit Integer min and max by default
	private var maxVal:Int;
	private var minVal:Int;
	
	//32-bit Integer limit constants
	private static inline var INT_MAX:Int = 2147483647;
	private static inline var INT_MIN:Int = -2147483648;
	
	public function new(value:Float = 0, max:Int = 2147483647, min:Int = -2147483648) 
	{
		//Make sure new min and max don't exceed the 32-bit Integer limits
		if (max <= INT_MAX)
		{
			maxVal = max;
		}
		else
		{
			//Do nothing and leave value at default
		}
		
		if (min >= INT_MIN)
		{
			minVal = min;
		}
		else
		{
			//Do nothing and leave value at default
		}
		
		//Assign current value after min and max to ensure it is within the new bounds
		if (value > maxVal)
		{
			this.value = maxVal;
		}
		else if (value < minVal)
		{
			this.value = minVal;
		}
		else
		{
			this.value = value;
		}
	}
	
	////////////////////////////////////////////////////////////
	// SET VALUES
	////////////////////////////////////////////////////////////
	
	/**
	 * Sets the current value with a bounds check against the provided minimum and maximum values
	 * 
	 * @param   value         The new current value
	 */
	public function setValue(value:Float):Void
	{
		if (value >= maxVal)
		{
			this.value = maxVal;
		}
		else if (value <= minVal)
		{
			this.value = minVal;
		}
		else
		{
			this.value = value;
		}
	}
	
	/**
	 * Sets the maximum value with a bounds check against the largest possible value
	 * 
	 * @param   value         The new maximum value
	 */
	public function setMax(value:Int):Void
	{
		if (value >= INT_MAX)
		{
			maxVal = INT_MAX;
		}
		else
		{
			maxVal = value;
		}
	}
	
	/**
	 * Sets the minimum value with a bounds check against the smallest possible value
	 * 
	 * @param   value         The new minimum value
	 */
	public function setMin(value:Int):Void
	{
		if (value <= INT_MIN)
		{
			minVal = INT_MIN;
		}
		else
		{
			minVal = value;
		}
	}
	
	////////////////////////////////////////////////////////////
	// MATH FUNCTIONS (add, subtract, divide, multiply, modulo)
	////////////////////////////////////////////////////////////
	
	/**
	 * Adds the given value to the current value with a bounds check 
	 * 
	 * @param   value         The value to add
	 */
	public function add(value:Float):Void  
	{
		setValue(this.value += value);
	}
	
	/**
	 * Subtracts the given value to the current value with a bounds check
	 * 
	 * @param   value         The value to subtract
	 */
	public function subtract(value:Float):Void 
	{
		setValue(this.value -= value);
	}
	
	/**
	 * Multiplies the current value by the given value with a bounds check
	 * 
	 * @param   value         The value to multiply by
	 */
	public function multiply(value:Float):Void 
	{
		setValue(this.value * value);
	}
	
	/**
	 * Divides the current value by the given value with a bounds check
	 * 
	 * @param   value         The value to divide by
	 */
	public function divide(value:Float):Void
	{
		setValue(this.value / value);
	}
	
	/**
	 * Performs a modulo operation on the current value using the given value with a bounds check
	 * 
	 * @param   value         The value to be used by the modulo operation
	 */
	public function mod(value:Float):Void
	{
		setValue(this.value % value);
	}
	
	////////////////////////////////////////////////////////////
	// RETRIEVE VALUES
	////////////////////////////////////////////////////////////
	
	/**
	 * Returns the current value as an Int
	 */
	public function getInt():Int 
	{
		return Std.int(value);
	}
	
	/**
	 * Returns the current value as a Float
	 */
	public function getFloat():Float
	{
		return value;
	}
	
	/**
	 * Returns the maximum value used for bounds checking
	 */
	public function getMax():Int
	{
		return maxVal;
	}
	
	/**
	 * Returns the minimum value used for bounds checking
	 */
	public function getMin():Int
	{
		return minVal;
	}	
}