$ip = "10.105.3.178"
curl.exe "http://${ip}:8083/connectors"
curl.exe "http://${ip}:8083/connectors/sqlserver-connector/config" | .\jq.exe

curl.exe -X DELETE  "http://${ip}:8083/connectors/${connector}"
curl.exe -X POST -H "Content-Type: application/json" -d "@..\connectors\sqlserver-sink-connector.json" "http://${ip}:8083/connectors"