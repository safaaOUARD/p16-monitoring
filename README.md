# Supervision d'une application Spring Boot avec Prometheus et Grafana

TP réalisé dans le cadre du cycle ingénieur ISIC (ENSA El Jadida) : mettre en place la supervision (monitoring) et l'alerting d'une application Spring Boot conteneurisée.

## Objectif
Collecter les métriques d'une application, les visualiser dans des tableaux de bord et être alertée si l'application tombe.

## Ce que j'ai fait
- Exposition des métriques de l'application via Spring Boot Actuator (`/actuator/prometheus`).
- Conteneurisation de l'application (`Dockerfile`).
- Stack de supervision avec Docker Compose : application (port 8080), Prometheus (port 9090) et Grafana (port 3000).
- Configuration de Prometheus (`prometheus.yml`) : collecte des métriques toutes les 5 secondes.
- Règle d'alerte (`alert.rules.yml`) : alerte critique `ApplicationDown` si l'application est indisponible plus de 10 secondes.

## Technologies
Java · Spring Boot · Spring Boot Actuator · Micrometer · Prometheus · Grafana · Docker · Docker Compose

## Lancer le projet
```bash
./mvnw clean package -DskipTests
docker build -t spring-monitoring:1.0 .
docker compose up -d
```
- Application : http://localhost:8080
- Prometheus : http://localhost:9090
- Grafana : http://localhost:3000

## Ce que j'ai appris
Les bases de l'observabilité : exposer des métriques, les collecter, construire des tableaux de bord et définir des règles d'alerte.
