#!/usr/bin/env bash
# Avisa cada cierto número de prompts para gestionar el contexto
COUNTER_FILE=".claude/.prompt_counter"
COUNT=$(cat "$COUNTER_FILE" 2>/dev/null || echo 0)
COUNT=$((COUNT + 1))
echo "$COUNT" > "$COUNTER_FILE"

if [ $((COUNT % 20)) -eq 0 ]; then
  echo "▶ [aviso] $COUNT mensajes en esta sesión. Revisa /context — si supera el 60%, usa /compact."
fi
if [ $((COUNT % 50)) -eq 0 ]; then
  echo "▶ [aviso] $COUNT mensajes. Si cambias de tarea, usa /clear y vuelve a ejecutar /inicio."
fi
exit 0
