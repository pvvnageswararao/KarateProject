package karateNewProject;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestpostRunner {
	@Test
	public Karate runTest() {
		return Karate.run("post.feature").relativeTo(getClass());
	}

}
