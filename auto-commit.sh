START_DATE="2025-06-09"
DAYS=20
FILE="README.md"

for ((i=0; i<$DAYS; i++)); do
  COMMIT_DATE=$(date -d "$START_DATE +$i days" "+%Y-%m-%dT12:00:00")
  echo "Commit on $(date -d "$START_DATE +$i days" "+%Y-%m-%d")" >> $FILE
  git add $FILE
  GIT_AUTHOR_DATE="$COMMIT_DATE" GIT_COMMITTER_DATE="$COMMIT_DATE" git commit -m "Auto commit on $(date -d "$START_DATE +$i days" "+%Y-%m-%d")"
done

echo "✅ Done generating fake commits."
