package hu.bme.mit.jpl.spacemission;

import java.util.HashMap;
import java.util.Map;

public class OneThreadedTimer implements TimerInterface {
	
	private Map<Object, Long> elapsedTime = new HashMap<Object, Long>();
	
	public void saveTime(Object object) {
		elapsedTime.put(object, System.nanoTime());
	}
	
	public long getElapsedTime(Object object, TimeUnit timeUnit) {
		long elapsedTime = System.nanoTime() - this.elapsedTime.get(object);
		switch (timeUnit) {
			case SECOND:
				return elapsedTime / 1000000000;
			case MILLISECOND:
				return elapsedTime / 1000000;
			case MICROSECOND:
				return elapsedTime / 1000;
			case NANOSECOND:
				return elapsedTime;
			default:
				throw new IllegalArgumentException("Not known time unit: " + timeUnit);
		}
	}
	
}
