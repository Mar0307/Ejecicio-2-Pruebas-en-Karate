package example.petstore;

import com.intuit.karate.junit5.Karate;

public class EliminarUsuRunner {

    @Karate.Test
    Karate testEliminarUsuario() {
        return Karate.run("search_EliminarUsu").relativeTo(getClass());
    }
}
