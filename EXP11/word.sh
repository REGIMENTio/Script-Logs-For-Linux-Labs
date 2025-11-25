#!/bin/bash
DICTIONARY="/usr/share/dict/words"
if [ ! -f "$DICTIONARY" ]; then
echo "Error: Dictionary file not found!"
exit 1
fi
echo "Enter a word to check:"
read word
word_lower=$(echo "$word" | tr '[:upper:]' '[:lower:]')
if grep -q "^${word_lower}$" "$DICTIONARY"; then
echo "3 '$word' is a valid English word."
else
echo "7 '$word' is not found in the dictionary."
echo ""
echo "Similar words:"
grep -i "^${word:0:3}" "$DICTIONARY" | head -5
fi
