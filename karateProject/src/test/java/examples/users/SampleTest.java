package examples.users;

import com.intuit.karate.junit5.Karate;

public class SampleTest {
	
	@Karate.Test
	Karate testSample() {
		 return Karate.run("Example2.feature").relativeTo(getClass());
	}

}