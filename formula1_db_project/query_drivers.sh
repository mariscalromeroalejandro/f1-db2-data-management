QUERY="
SELECT d.name, d.nationality, t.name 
FROM Drivers d 
JOIN Teams t ON d.team_id = t.team_id;
"

echo "Querying drivers..."
RESULT=$(db2 "$QUERY")

echo "$RESULT"