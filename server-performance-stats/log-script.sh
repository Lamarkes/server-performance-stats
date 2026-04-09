#!/bin/bash

# script para salvar informações geradas pelos scripts 
# do arquivo server-stats.sh no arquivo > log.txt

./server-stats.sh | tee log.txt

