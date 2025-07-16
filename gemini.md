# Guide de Contexte pour l'Assistant Gemini

Ce document fournit le contexte nécessaire pour générer du code cohérent et de haute qualité pour ce projet dbt.

## 1. Objectif du Projet

Ce projet basé sur DBT est un projet de formation et d'apprentissage.
- Il est basé sur le guide "Quickstart for dbt and BigQuery"
- Il utilise des données externes venant du projet `dbt-tutorial`. Ces données sont localisées aux US
- On utilise BigQuery pour stocker les données et réaliser les transformations, en suivant une architecture en médaillon

## 2. Stack Technique

- **dbt-fusion:** 2.0.0
- **Adapter:** dbt-bigquery
- **Warehouse:** Google BigQuery

## 3. Conventions de Nommage et de Style

- **Modèles Bronze (`brz_`):** Renommage des colonnes en `snake_case`, casting des types, nettoyage de base.
- **Modèles Silver (`slv_`):** Logique de transformation, jointures, filtrage. Le modèle `data_step_1.sql` en est un exemple.
- **Modèles Gold (`gld_`):** Modèles finaux agrégés.
- **Colonnes:** Clés primaires nommées `[entite]_id` (ex: `user_id`).
- **SQL:** Mots-clés en majuscules (`SELECT`, `FROM`, `WHERE`). Utiliser les CTEs pour chaque étape logique.

## 4. Structure du Projet

- `models/brz_*`: Modèles de base 1-pour-1 avec les sources.
- `models/slv_*`: Transformations intermédiaires.
- `macros/`: Macros réutilisables.
- `tests/`: Tests singuliers et génériques.
