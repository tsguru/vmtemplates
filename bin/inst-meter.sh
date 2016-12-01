#/usr/bin/env bash
if [ -z "$TSP_API_TOKEN" ]
then
	echo "TSP_API_TOKEN is not set."
	exit 1;
fi

curl -fsS -d '{"token":"${TSP_API_TOKEN}"}' -H 'Content-Type: application/json' https://meter.truesight.bmc.com/setup_meter > setup_meter.sh
chmod +x setup_meter.sh
./setup_meter.sh
rm ./setup_meter.sh
