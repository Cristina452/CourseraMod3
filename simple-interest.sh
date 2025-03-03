#!/bin/bash

# Simple Interest Calculator

# Funzione per calcolare l'interesse semplice
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    local interest

    # Calcolare l'interesse semplice
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "L'interesse semplice è: $interest"
}

# Funzione per calcolare l'importo totale (capitale + interesse)
calculate_total_amount() {
    local principal=$1
    local interest=$2
    local total_amount

    # Calcolare l'importo totale
    total_amount=$(echo "$principal + $interest" | bc)
    echo "L'importo totale è: $total_amount"
}

# Leggere i dati dall'utente
echo "Calcolatore di Interesse Semplice"

# Richiedere il capitale
read -p "Inserisci il capitale (importo iniziale): " principal

# Richiedere il tasso di interesse
read -p "Inserisci il tasso di interesse annuale (in %): " rate

# Richiedere il tempo in anni
read -p "Inserisci il tempo in anni: " time

# Calcolare l'interesse semplice
interest=$(calculate_simple_interest $principal $rate $time)

# Calcolare l'importo totale
total_amount=$(calculate_total_amount $principal $interest)

# Mostrare il risultato
echo ""
echo "Risultati:"
echo "Capitale: $principal"
echo "Tasso di interesse: $rate%"
echo "Tempo: $time anni"
echo "Interesse semplice: $interest"
echo "Importo totale: $total_amount"
