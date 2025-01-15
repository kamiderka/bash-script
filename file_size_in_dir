" Skrypt obliczający sumę rozmiaru plików regularnych w katalogu "

#!/bin/bash

# Sprawdź liczbę argumentów
if [ $# -gt 1 ]; then
    echo "Użycie: $0 [katalog]"
    exit 1
fi

# Ustaw katalog na bieżący, jeśli nie podano argumentu
katalog="${1:-.}"

# Sprawdź, czy podana ścieżka jest katalogiem
if [ ! -d "$katalog" ]; then
    echo "Błąd: '$katalog' nie jest katalogiem."
    exit 1
fi

# Oblicz sumę rozmiarów plików regularnych w bajtach
suma=$(find "$katalog" -type f -printf '%s\n' | awk '{s+=$1} END {print s}')

# Wyświetl wynik
echo "Suma rozmiarów plików regularnych w katalogu '$katalog' wynosi: $suma bajtów."
