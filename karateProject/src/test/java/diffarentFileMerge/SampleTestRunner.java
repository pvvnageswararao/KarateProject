package diffarentFileMerge;

import com.intuit.karate.junit5.Karate;

public class SampleTestRunner {
	
	@Karate.Test
	Karate testSample() {
		 return Karate.run("usgerDetailes1.feature","usrerDetailes2.feature").relativeTo(getClass());
	}

}