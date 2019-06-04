package omar.mebarki.springsecurity.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ClientCallController {
    @Autowired
    private OAuth2RestTemplate oAuth2RestTemplate;

    private int counter = 0;

    public ClientCallController(OAuth2RestTemplate oAuth2RestTemplate) {
        this.oAuth2RestTemplate = oAuth2RestTemplate;
    }

    @RequestMapping(path = "/call")
    public String call() {
        String forObject = oAuth2RestTemplate.getForObject("http://localhost:8081/api/hello?name=Omar" + (++counter), String.class);
        return forObject;
    }
}
