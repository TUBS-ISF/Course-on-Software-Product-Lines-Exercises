#!/usr/bin/env bash
# Compile all exercises for a given semester into separate PDF files.
# Usage: ./compile_semester.sh <semester>
# To switch the language or show/hide solutions, edit the respective semester .tex file.

set -e

lecture_names=("introduction" "runtime" "cloneandown" "modeling" "conditional" "modular" "languages" "process" "interactions" "analyses" "testing" "evonance")
exercises=(1 2 3 4 5 6 7 8 9 10 11 12)
output_path="$(dirname "$0")/pdf/"
SEMESTER=$1

if [[ -z "$SEMESTER" ]] || [[ ! -f "$SEMESTER.tex" ]]; then
    echo "Usage: $0 <semester>"
    echo "Example: $0 2025w-Magdeburg"
    exit 1
fi

make_exercise() {
    number=$1
    number_string=$(printf "%02d" $number)
    lecture_names_index=$(( $number - 1 ))
    lecture="${lecture_names[$lecture_names_index]}"
	output_file="${output_path}${number_string}-${lecture}.pdf"
    mkdir -p "${output_path}"
    cp "${SEMESTER}.tex" "${SEMESTER}.tmp.tex"
    sed -i '' 's/\\newcommand{\\theexercise}{[0-9]*}/\\newcommand{\\theexercise}{'"$number"'}/' "${SEMESTER}.tmp.tex"
    latexmk -quiet -silent -pdf -pdflatex='pdflatex -interaction=batchmode -halt-on-error' "$SEMESTER.tmp"
    mv "${SEMESTER}.tmp.pdf" "${output_file}"
	latexmk -quiet -silent -C "$SEMESTER.tmp"
    rm "${SEMESTER}.tmp.tex"
    echo "Generated exercise ${number}: ${output_file}"
}

for ex in "${exercises[@]}"; do
    make_exercise $ex
done