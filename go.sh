while true
do
    cd plugins/KarateSnoopy
    make
    if [ $? -eq 0 ]
    then
        cd ../..
        make
        if [ $? -eq 0 ]
        then
            make run
        else
	    sleep 5
        fi
    else
	sleep 5
    fi
done