# Modèle LaTeX utilisé pour la SAE

# -> DEPUIS LA RACINE DE <modele-latex>

#### main.tex

C'est la première brique, elle importe ce que le document a besoin comme
bibliothèques

#### contenu.tex

Ceci contient les liens des parties et sections du documents, aucun contenu en
dur, juste références au contenu

#### infos.tex

informations de la page de garde. Le sommaire est généré automatiquement en
fonction des blocs \section et \subsection

#### /parties/*

C'est dans ce dossier que on va mettre tout le contenu du document DONT CHAQUE
REFERENCE IRA DANS <contenu.tex>

#### /Assets/*

Le dossier pour tout ce qui est photos, captures, etc..

#### COMMENT UTILISER LATEX POUR LE RAPPORT

1. VERIFIER infos.txt (sur la page de garde)
2. REDIGER TOUT DANS /Parties/*.tex
3. METTRE LES REFERENCES DANS <contenu.tex>
4. VERIFIER LA PAGE DE GARDE

DOSSIER DE BASE POUR LA GENERATION LATEX DU RAPPORT DE LA SAE NE RIEN TOUCHER AU
DOSSIER /Base ni aux autres fichiers inclus

Généralement c'est latexmk et pdflatex pour générer des documents. Dans ce cas
il se trouve dans /output/pdf/* Sinon c'est le main.tex qui deviens main.pdf à
la racine du dossier. Le sommaire s'actualise après compilation.

POUR COMPILER LE LATEX -> UTILISER LATEX WORKSHOP SUR VSCODE
PUIS PETIT TRIANGLE ET ICONE LOUPE AVEC PAGE POUR AFFICHER

RACCOURCIS UTILES
ALT + SPACE -> toujours au premier plan (linux)



