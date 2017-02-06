ps auxw | grep  'jar image-process-0.0.1-SNAPSHOT.jar'| grep -v grep > /dev/null
if [[ $? -ne 0 ]] ; then
        echo "Restarting Image:     $(date)" >> /var/log/image.txt
        nohup sh /home/wangyahui/img_proc/run_img_proc.sh & 
fi
