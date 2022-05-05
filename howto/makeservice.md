# Quick make a service config file

```
 [Unit]
 Description=runs and maintains /usr/local/bin/wifi_survey.sh 

 [Service]
 Type=simple
 ExecStart=/usr/local/bin/wifi_survey.sh
 Restart=on-failure
 RestartSec=60
 KillMode=process

 [Install]
 WantedBy=multi-user.target
```
