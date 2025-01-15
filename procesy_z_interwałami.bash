#!/bin/bash

# Funkcja obsługująca zakończenie skryptu
zakoncz() {
    echo "Do zobaczenia!"
    exit 0
}

# Przechwyć sygnał przerwania (Ctrl+C)
trap zakoncz SIGINT

# Sprawdź liczbę argumentów
if [ $# -gt 1 ]; then
    echo "Nieprawidlowa liczba argumentow:"
    exit 1
fi

# Ustaw domyślny interwał (3 sekundy)
interwal=3

# Jeśli podano argument, sprawdź jego poprawność
if [ $# -eq 1 ]; then
    if ! [[ $1 =~ ^[0-9]+$ ]]; then
        echo "Błąd: Argument nie jest liczbą całkowitą."
        exit 1
    fi
    if [ $1 -lt 1 ] || [ $1 -gt 10 ]; then
        echo "Błąd: Argument poza zakresem (1-10)."
        exit 1
    fi
    interwal=$1
fi

# Główna pętla skryptu
while true; do
    liczba_procesow=$(ps -e --no-headers | wc -l)
    echo "Aktualna liczba procesow to: $liczba_procesow"
    sleep $interwal
done
