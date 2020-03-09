#./naver_blog_movie2.sh
#cat ret.txt  | grep ^[0-9] | sort -k 1 -n

site1="https://www.costco.co.kr/HealthSupplement/Home-Health-CareFirst-Aid/First-Aid/Maybreeze-KF80-Black-Mask-30ct-Large/p/618610-L"
site2="https://www.costco.co.kr/HealthSupplement/Home-Health-CareFirst-Aid/First-Aid/Maybreeze-KF80-Black-Mask-30ct-Medium/p/618610-M"
site3="https://www.costco.co.kr/HealthSupplement/Home-Health-CareFirst-Aid/First-Aid/Welcron-Free-Tech-KF94-Mask-30ct/p/630918"


sound_out()
{
	mpv ic.mp3
}



check()
{
	RET=`curl -s -k $1 | grep page-productNotFound`

	if [[ "$RET" == "" ]]; then
		echo $1
		sound_out
	fi

	sleep 1
}


main()
{

	i=0

	while [ 1 ]
	do
		i=$((i+1))
		echo $(date '+%Y-%m-%d-%H:%M:%S') " ($i)"

		check $site1
		check $site2
		check $site3
	
	done




#for i in `seq $1 $2`
#do
#	RET=`curl -s -k $address"$i" | grep "h2 class" | sed 's/.*\"\/\(.*\)\">.*/\1/'` 
#
#	for num in $RET
#	do
#		TITLE=`curl -s -k $address"$i" | grep "h2 class" | grep $num | sed 's/.*\">\(.*\)<\/a.*/\1/' | sed 's/ //g' `
#
#		EVAL=`curl -s -k $post$num | grep "★" | sed 's/.*스토리\(.*\)<\/sp.*/\1/' | sed 's/<.*//' `  
#
#		if [[ "$EVAL" == *"★"* ]]; then
#			echo $EVAL" "$TITLE
#		fi
#	done
#done
}

main $@
