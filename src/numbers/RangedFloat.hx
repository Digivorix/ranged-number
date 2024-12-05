package numbers;

/**
 * Stores a Float value within a defined boundary.
 * 
 * Maximum values up to 1.79e+308 are accepted.
 * 
 * Minimum values down to -1.79e+308 are accepted.
 */
class RangedFloat
{
	private var value:Float;
	
	private var maxVal:Float;
	private var minVal:Float;
	
	//Float limit constants
	private static inline var FLOAT_MAX:Float = 1.79e+308; //Changed from 1.79769313486232e+308
	private static inline var FLOAT_MIN:Float = -1.79e+308; //Technical min is 2.2250738585072e-308
	
	public function new(value:Float = 0.0, max:Float = 1.79e+308, min:Float = -1.79e+308) 
	{
		//Make sure new min and max don't exceed the Float limits
		if (max <= FLOAT_MAX)
		{
			maxVal = max;
		}
		else
		{
			//Do nothing and leave value at default
		}
		
		if (min >= FLOAT_MIN)
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
	public function setMax(value:Float):Void
	{
		if (value >= FLOAT_MAX)
		{
			maxVal = FLOAT_MAX;
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
	public function setMin(value:Float):Void
	{
		if (value <= FLOAT_MIN)
		{
			minVal = FLOAT_MIN;
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
	 * Returns the current value
	 */
	public function getValue():Float
	{
		return value;
	}
	
	/**
	 * Returns the maximum value used for bounds checking
	 */
	public function getMax():Float
	{
		return maxVal;
	}
	
	/**
	 * Returns the minimum value used for bounds checking
	 */
	public function getMin():Float
	{
		return minVal;
	}	
}