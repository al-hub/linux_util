#./client.sh 20 | sort -k 2

ADDRESS=https://www.clien.net/service/board/park

BOARD="?&od=T31&po="
help_fucn(){
	echo this is help
}

#echo "$i : " $ADDRESS$BOARD"$i"
process()
{
	RET_A=
	max=$1
	for i in `seq 2 $max`
	do
		RET=`curl -s -k $ADDRESS$BOARD"$i" | grep "list-title-text" | sed 's/.*title\="\(.*\)".*/\1/'`
		RET_A=$RET_A$RET
	done

	echo $RET_A | sed 's/\.//g;s/\ /\n/g' | sort | uniq -c | awk '{print $2 "\t" $1}'

}

main(){
	case $1 in
		-h | --help)
		help_func
		exit 0
		;;

	"")
		main $1
		;;

	*)
		process $1
		esac
}

main $1

exit 0
