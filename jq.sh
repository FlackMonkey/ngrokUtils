# Source : https://stackoverflow.com/questions/27162552/ngrok-running-in-background
# jq a command-line JSON processor
export WEBHOOK_URL="$(curl http://localhost:4040/api/tunnels | jq ".tunnels[0].public_url")"
