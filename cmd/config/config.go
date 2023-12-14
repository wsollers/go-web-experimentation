package config

import "os"

type Config struct {
	Port string `json:"port"`
}

func New() *Config {
	return &Config{
		Port: getEnv("PORT", "8080"),
	}
}

func getEnv(key string, defaultValue string) string {
	if value, exists := os.LookupEnv(key); exists {
		return value
	}
	return defaultValue
}
