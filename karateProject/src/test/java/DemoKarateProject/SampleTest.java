package DemoKarateProject;

import com.intuit.karate.junit5.Karate;

public class SampleTest {
	
	@Karate.Test
	Karate testSample() {
		 return Karate.run("usrerDetailes1.feature").relativeTo(getClass());
	}

}