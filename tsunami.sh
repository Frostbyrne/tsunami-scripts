for ip in 10.11.12.{1..255}
do
    screen -dm java -cp "tsunami-main-0.0.2-SNAPSHOT-cli.jar:/home/$USER/tsunami/plugins/*" -Dtsunami-config.location=/home/$USER/tsunami/tsunami.yaml com.google.tsunami.main.cli.TsunamiCli --ip-v4-target=${ip} --scan-results-local-output-format=JSON --scan-results-local-output-filename=/tmp/tsunami-output-${ip}.json
        echo "Scanning ${ip}" 
done