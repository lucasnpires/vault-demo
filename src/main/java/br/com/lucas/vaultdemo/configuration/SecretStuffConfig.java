package br.com.lucas.vaultdemo.configuration;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Data;

@ConfigurationProperties("topsecret")
@Data
public class SecretStuffConfig {
	private String user;
	private String password;
	private String car;
}
