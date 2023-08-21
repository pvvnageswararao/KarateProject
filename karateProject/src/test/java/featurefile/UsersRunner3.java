package featurefile;

import com.intuit.karate.junit5.Karate;

class UsersRunner3 {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("post.feature").relativeTo(getClass());
    }    

}
