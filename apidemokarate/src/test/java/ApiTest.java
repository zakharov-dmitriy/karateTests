import com.intuit.karate.junit5.Karate;

public class ApiTest {
    @Karate.Test
    Karate testApi() {
        return Karate.run("alltests/ScenarioCRUD.feature");
    }
}
