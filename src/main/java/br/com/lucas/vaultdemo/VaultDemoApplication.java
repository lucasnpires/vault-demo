package br.com.lucas.vaultdemo;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import br.com.lucas.vaultdemo.configuration.SecretStuffConfig;
import lombok.extern.slf4j.Slf4j;

@SpringBootApplication
@EnableConfigurationProperties(SecretStuffConfig.class)
@Slf4j
public class VaultDemoApplication implements CommandLineRunner {
	
	public VaultDemoApplication(SecretStuffConfig secretStuffConfig) {
		this.secretStuffConfig = secretStuffConfig;
	}

	public static void main(String[] args) { SpringApplication.run(VaultDemoApplication.class, args);}
	
	private final SecretStuffConfig secretStuffConfig;

	@Override
	public void run(String... args) throws Exception {
		log.info("***** secret username: " + secretStuffConfig.getUser());
		log.info("***** secret password: " + secretStuffConfig.getPassword());
		log.info("***** secret car: " + secretStuffConfig.getCar());
	}

}
