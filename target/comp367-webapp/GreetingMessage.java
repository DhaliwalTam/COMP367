package main.webapp;
import java.time.LocalTime;
public class GreetingMessage {
	 public static String getGreetingMessage(String name) {
	        LocalTime currentTime = LocalTime.now();
	       
	        String greeting;
	        
	        if (currentTime.isBefore(LocalTime.NOON)) {
	            greeting = "Good morning";
	        } else {
	            greeting = "Good afternoon";
	        }

	        return String.format("%s, %s, Welcome to COMP367", greeting, name);
	    }
}
