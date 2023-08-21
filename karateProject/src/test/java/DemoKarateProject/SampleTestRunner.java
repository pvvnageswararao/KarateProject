package DemoKarateProject;

import com.intuit.karate.junit5.Karate;

public class SampleTestRunner {
	
	@Karate.Test
	Karate testSample() {
		 return Karate.run("userDetailsAuthentication.feature","userDetailsPostRequest.feature","usrerDetailes1.feature","userDetails.feature").relativeTo(getClass());
	}

}