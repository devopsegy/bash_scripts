if [[ $(ps -ef | grep -c file.sh )  -ne 1 ]]; then

        echo "worker Process Found!"
else
        echo "worker Process Not Found!"
        nohup /bin/bash /home/file.sh &
fi

