#!/bin/bash

# Lista de nombres de barras Polybar (cambia estos nombres según tus configuraciones)
barras=("bar1" "bar2" "bar3")

# Iterar sobre cada barra y enviar el comando usando polybar-msg
for barra in "${barras[@]}"; do
    polybar-msg -p "$(pgrep -f "polybar $barra")" cmd toggle &
done

