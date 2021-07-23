package az.techstore.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

@Configuration
public class CorsConfig {

    @Value("${cors.config}")
    private List<String> corsOrigins;


    @Bean
    public WebMvcConfigurer configurer() {
        return new WebMvcConfigurer() {

            @Override
            public void addCorsMappings(CorsRegistry registry) {
                String[] cors = new String[corsOrigins.size()];
                for (int i = 0; i < cors.length; i++) {
                    cors[i] = corsOrigins.get(i);
                }

                registry.addMapping("/rest/**")
                        .allowedOrigins(cors)
                        .allowedMethods(HttpMethod.GET.name(),
                                HttpMethod.POST.name(),
                                HttpMethod.PUT.name(),
                                HttpMethod.DELETE.name());
            }
        };
    }
}
