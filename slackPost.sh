slackUrl="https://hooks.slack.com/services/XXX/YYY/ZZZ";
slackChannel="general";
slackTitle="ngrokUrl:";
ngrokTunnelCheckUrl="http://localhost:4040/api/tunnels"
curl $ngrokTunnelCheckUrl | grep -oP "(https://\w*[.]ngrok[.]io)" | awk '{ system("postToSlack -t '$slackTitle' -b "$1" -c webh -u '$slackUrl'") }'
