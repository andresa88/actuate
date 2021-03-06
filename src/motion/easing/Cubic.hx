package motion.easing;


/**
 * @author Joshua Granick
 * @author Philippe / http://philippe.elsass.me
 * @author Robert Penner / http://www.robertpenner.com/easing_terms_of_use.html
 */
class Cubic {
	
	
	public static var easeIn (default, null):IEasing = new CubicEaseIn ();
	public static var easeInOut (default, null):IEasing = new CubicEaseInOut ();
	public static var easeOut (default, null):IEasing = new CubicEaseOut ();
	
	
}


private class CubicEaseIn implements IEasing {
	
	
	public function new () {
		
		
		
	}
	
	
	public function calculate (k:Float):Float {
		
		return k * k * k;
		
	}
	
	
	public function ease (t:Float, b:Float, c:Float, d:Float):Float {
		
		return c * (t /= d) * t * t + b;
		
	}
	
	
}


private class CubicEaseInOut implements IEasing {
	
	
	public function new () {
		
		
		
	}
	
	
	public function calculate (k:Float):Float {
		
		return ((k /= 1 / 2) < 1) ? 0.5 * k * k * k : 0.5 * ((k -= 2) * k * k + 2);
		
	}
	
	
	public function ease (t:Float, b:Float, c:Float, d:Float):Float {
		
		return ((t /= d / 2) < 1) ? c / 2 * t * t * t + b : c / 2 * ((t -= 2) * t * t + 2) + b;
		
	}
	
	
}


private class CubicEaseOut implements IEasing {
	
	
	public function new () {
		
		
		
	}
	
	
	public function calculate (k:Float):Float {
		
		return --k * k * k + 1;
		
	}
	
	
	public function ease (t:Float, b:Float, c:Float, d:Float):Float {
		
		return c * ((t = t / d - 1) * t * t + 1) + b;
		
	}
	
	
}