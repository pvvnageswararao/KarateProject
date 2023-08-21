package DemoKarateProject.Features;

import com.intuit.karate.junit5.Karate;


public class SampleTestRunner {
	
	
	@Karate.Test
	Karate testSample() {
		 return Karate.run("usrerDetailes2.feature").relativeTo(getClass());
	}
	}

