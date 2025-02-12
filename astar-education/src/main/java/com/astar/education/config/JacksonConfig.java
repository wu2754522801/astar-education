package com.astar.education.config;

import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author wuzhenyong
 * ClassName:JacksonConfig.java
 * date:2024-08-06 10:58
 * Description:
 */
@Configuration
public class JacksonConfig {
    private static final DateTimeFormatter DATETIME_FORMAT = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    @Bean
    public Jackson2ObjectMapperBuilderCustomizer jsonCustomizer() {

        return builder -> {

            builder.failOnEmptyBeans(false);

            builder.failOnUnknownProperties(false);

            LocalDateTimeDeserializer deserializer = new LocalDateTimeDeserializer(DATETIME_FORMAT);

            LocalDateTimeSerializer serializer = new LocalDateTimeSerializer(DATETIME_FORMAT);

            builder.serializerByType(LocalDateTime.class, serializer);

            builder.deserializerByType(LocalDateTime.class, deserializer);

        };

    }
}
