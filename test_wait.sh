function child()
{
	echo child process $BASHPID starting
	sleep 6
	echo child process $BASHPID finished
}

echo parent process $$ starting
child &
pid1=$!
sleep 1
child &
pid2=$!
sleep 1
child &
pid3=$!
wait $pid1 $pid2
# Using 'wait' without any parameters would have blocked the execution of the parent process until all background jobs ended.
# Using 'wait -n $pid1 $pid2 $pid3', the -n option makes the wait command block until one of the three child processes ends.
echo parent wait finished, exit status $?
