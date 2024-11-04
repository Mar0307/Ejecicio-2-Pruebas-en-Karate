package example.petstore;

import com.intuit.karate.junit5.Karate;

public class ActualizarRunner {

    @Karate.Test
    Karate testUpdateUser() {
        return Karate.run("search_ActualizarNC").relativeTo(getClass());
    }
}

