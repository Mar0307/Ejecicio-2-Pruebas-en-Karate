package examples.Buscarusuariocrea;

import com.intuit.karate.junit5.Karate;

public class PetsRunner {

    @Karate.Test
    Karate searchPet() {
        return Karate.run("search").relativeTo(getClass());
    }
}
