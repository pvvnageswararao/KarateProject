package featurefile;

import com.intuit.karate.junit5.Karate;

class UsersRunner2 {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("getRequest.feature").relativeTo(getClass());
    }    

}
