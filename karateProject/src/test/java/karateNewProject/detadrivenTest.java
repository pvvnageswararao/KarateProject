package karateNewProject;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class detadrivenTest {
	@Test
	public Karate runTest() {
		return Karate.run("postDataDriven.feature").relativeTo(getClass());
}
}