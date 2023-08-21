package karateNewProject;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestVeriabletRunner {
	@Test
	public Karate runTest() {
		return Karate.run("veriyabul.feature","javaScriptExecutor.feature").relativeTo(getClass());
	}

}
