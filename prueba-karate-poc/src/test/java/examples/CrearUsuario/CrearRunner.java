package examples.CrearUsuario;

import com.intuit.karate.junit5.Karate;

public class PetStoreUserRunner {

    @Karate.Test
    Karate testCreateUser() {
        return Karate.run("PetStoreUserTests").relativeTo(getClass());
    }
}
