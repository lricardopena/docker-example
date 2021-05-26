cd /code

python example.py &

echo "The script to print an example started"

while sleep 10; do
	ps aux |grep processor_matcher |grep -q -v grep

	PROCESS_1_STATUS=$?

	if [ $PROCESS_1_STATUS -ne 0  ]; then
		echo "Script to show has finished"
		exit 0
	fi
	 echo "still working"
done