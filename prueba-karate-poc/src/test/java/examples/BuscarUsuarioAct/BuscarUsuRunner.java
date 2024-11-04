package example.petstore;

import com.intuit.karate.junit5.Karate;

public class BuscarUsuRunner {

    @Karate.Test
    Karate testBuscarUsuario() {
        return Karate.run("search_BuscarUsu").relativeTo(getClass());
    }
}
