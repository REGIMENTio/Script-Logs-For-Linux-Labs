for f in *.txt; do
  echo "File: $f - Lines: $(wc -l < "$f")"
done
