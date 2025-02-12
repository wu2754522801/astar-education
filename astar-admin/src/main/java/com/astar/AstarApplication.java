package com.astar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author astar
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class AstarApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(AstarApplication.class, args);

        System.out.println("(♥◠‿◠)ﾉﾞ  一颗星启动成功   ლ(´ڡ`ლ)ﾞ  \n" +
                "  __   ____  ____  __   ____ \n" +
                " / _\\ / ___)(_  _)/ _\\ (  _ \\\n" +
                "/    \\\\___ \\  )( /    \\ )   /\n" +
                "\\_/\\_/(____/ (__)\\_/\\_/(__\\_)\n" +
                " ''-'   `'-'    `-..-'              ");
    }
}


