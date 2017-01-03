ids=$(ps -ef | grep pic-translate | awk -F' ' '{print $2}' | awk  'BEGIN{SUM=""} {SUM=SUM" "$1} END{print SUM}')
ids="kill -9 "$ids
echo $ids
$(${ids})
for i in {1..20}
do
   sleep 1
   nohup sh run_batch.sh > /dev/null & 
done 
