#!/bin/bash

MOULI_MAPS=$( ls mouli_maps)
MOULI_MAPS_SOLVED=$( ls mouli_maps_solved)

make
make clean

# Verifie si le dossier results existe et le supprime

###

#cree le dossier results
###

for test in ${MOULI_MAPS}; do
    printf "${RED} Testing map: ${test}${RESET}\n"
    start="Hello" # date avant l'execution
    # execute la bsq et redirige la sortie standard dans un fichier
    end="Hello" # date apres l'execution
    runtime=$(echo "$end - $start" | bc)
    #verifie si la sortie de la bsq est identique a la solution
     ####
    if [ $? -eq 0 ]; then
        printf "${GREEN} Test passed in ${runtime} ${RESET}\n"
    else
        printf "${RED} Test failed${RESET}\n"
    fi
done