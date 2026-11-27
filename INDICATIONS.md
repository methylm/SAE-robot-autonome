## fichier d'indications globales, pour divers librables, l'idées est de recentrer la liste
## des livrables est d'énoncer clairement ce que les documents doivent afficher, representer
## on doit pouvoir indiquer si un livrable est conforme ou non, en se fiant à ce qui est 
## énoncé ici


Pour les diagrammes mermaid, il faut créer un fichier markdown, puis faire ```mermaid et écrire le diagramme et terminer par ```.
Utiliser l'extension mermaid preview et un bouton "edit diagram" apparait juste au dessus du code du diagramme, on peut le
visualiser comme ça, sinon, ctrl-shit-v

pour plantuml
mettre 
"""{
    "plantuml.render": "Local",
    "plantuml.exportFormat": "svg",
    "plantuml.exportOutDir": "docs/exports"
}""" 
dans .vscode/settings.json (le créer si besoin)
puis ctrl-shift-p generate current diagram
pour exporter, plantuml, export current diagram

pour générer les svgs des diagrammes, qui sont tous visibles dans all.md :
chmod +x generate-svg.sh
./generate-svg.sh -p ./diagrams -s ./exports
(le script est dans /diagrams)

1&2
— Procès-verbal de réception (inventaire, anomalies, références des composants relevées).
— Schéma fonctionnel (chaînes d’information et d’énergie) et schéma structurel du système.
— Tableau de mesures puissance : (Vbat , I, P ) pour chaque état, signaux PWM, ondulation du bus 5 V, courbe de décharge et estimation d’autonomie commentée.
— Procès-verbal d’essais des fonctions d’origine (tableau conforme / non conforme).
3
Cartographie du code (tableau fonction → rôle → statut garder/supprimer) et plan d’épuration argumenté, validés en revue de fin de séance.
4
Firmware épuré (dépôt Git), journal des tests de non-régression, dossier de vérification initial conforme au modèle fourni.


/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
NON FAIT
/////////////////////////////////////////////////////////////////////////
Séances 1 et 2
- Procès-verbal de réception.
- Inventaire des composants.
- Relevé des références des composants.
- Relevé des anomalies.
- Tableau des mesures de tension batterie pour chaque état.
- Tableau des mesures de courant pour chaque état.
- Tableau des puissances consommées pour chaque état.
- Relevé des signaux PWM.
- Mesure de l’ondulation du bus 5 V.
- Courbe de décharge de la batterie.
- Estimation commentée de l’autonomie.
- Procès-verbal d’essais des fonctions d’origine.
- Tableau de conformité des fonctions.
Séance 3
- Cartographie du code source.
- Tableau des fonctions et de leurs rôles.
- Identification des fonctions à conserver ou supprimer.
- Plan d’épuration argumenté.
- Validation en revue de fin de séance.
Séance 4
- Firmware épuré.
- Dépôt Git du firmware.
- Journal des tests de non-régression.
- Dossier de vérification initial conforme au modèle fourni.
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
A REPRENDRE / A REPRECISER AVANT VALIDATION "FINALE"
/////////////////////////////////////////////////////////////////////////
- Schéma de la chaîne d’information.
- Schéma de la chaîne d’énergie.
- Schéma structurel du système.
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
FAIT / PRET POUR ETRE DANS LE RAPPORT
/////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
DIAGRAMMES

Le diagramme de la chaîne d’acquisition représente la transformation d’une grandeur physique en une donnée exploitable. Il comprend exclusivement les fonctions de captation, de conditionnement, de conversion et d’acquisition des signaux. Les grandeurs mesurées, les composants, la nature des signaux et les interfaces doivent être explicitement identifiés.

Son périmètre commence à la grandeur physique mesurée et s’arrête à la disponibilité de la donnée numérique. Les algorithmes de décision, les lois de commande, les actionneurs et les circuits de puissance sont exclus.

Le diagramme de la chaîne d’information représente la circulation et le traitement des données nécessaires au pilotage du système. Il comprend les fonctions d’interprétation des mesures, de traitement des consignes, de décision, d’asservissement et de génération des ordres de commande.

Son périmètre commence aux données acquises et aux consignes utilisateur, et s’arrête aux ordres transmis à la chaîne d’énergie ainsi qu’aux informations restituées à l’utilisateur. Les mécanismes internes d’acquisition, les conversions énergétiques et les détails d’implémentation logicielle sont exclus. La chaîne d’acquisition est représentée comme un bloc fonctionnel unique, sans être redétaillée.

Le diagramme de la chaîne d’énergie représente l’acheminement et la transformation de l’énergie nécessaire à la réalisation de l’action attendue. Il comprend exclusivement les fonctions d’alimentation, de distribution, de conversion, de transmission et d’action. Les formes d’énergie et les grandeurs physiques associées doivent être identifiées à chaque liaison.

Son périmètre commence à la source d’énergie et s’arrête à l’action physique produite. Les capteurs, les traitements numériques, les algorithmes et les lois de commande sont exclus. Les ordres de commande apparaissent uniquement comme des entrées externes des organes de distribution.
Convention commune
Les trois diagrammes doivent être complémentaires, sans redondance fonctionnelle. Chaque composant est représenté selon la fonction qu’il assure dans la chaîne concernée. Les interfaces entre chaînes sont explicitement identifiées, sans développer le contenu des chaînes adjacentes. La représentation doit rester homogène, concise, lisible et techniquement rigoureuse.

/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

### SEANCE 1
### SEANCE 2
### SEANCE 3
### SEANCE 4

/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////