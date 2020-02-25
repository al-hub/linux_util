#./naver_blog_movie2.sh
#cat ret.txt  | grep ^[0-9] | sort -k 1 -n

#제목
# 2051  w3m "https://blog.naver.com/PostView.nhn?blogId=fine1177&logNo=221809741309&categoryNo=21&parentCategoryNo=&from=thumbnailList" | grep "프로파일" -B 2 | grep -v "프로파일"
# 2056  w3m "https://blog.naver.com/PostView.nhn?blogId=fine1177&logNo=221809741309" | grep 평점
# 
#게시판
# 2062  curl "https://blog.naver.com/PostList.nhn?from=postList&blogId=fine1177&categoryNo=21&currentPage=1" | grep logNo


#  curl "https://blog.naver.com/PostList.nhn?from=postList&blogId=fine1177&categoryNo=21&currentPage=1" | grep logNo | grep href | sed 's/.*logNo\=\(.*\)\&c.*/\1/'       
#./naver_blog_movie.sh | sed 's/^ .*//' | sed 's/.*end$//' | sort -rk 1 -n | tee rank.log  

#http://blog.naver.com/PostView.nhn?blogId=camoju&logNo=221786635252
#https://blog.naver.com/PostList.nhn?from=postList&blogId=camoju&categoryNo=19&parentCategoryNo=19&currentPage=3

address="https://blog.naver.com/PostList.nhn?from=postList&blogId=camoju&categoryNo=19&parentCategoryNo=19&currentPage="
post="https://blog.naver.com/PostView.nhn?blogId=camoju&logNo="

for i in `seq 1 100`
do
	RET=`curl -s -k $address"$i" | grep logNo | grep link | sed 's/.*logNo\=\(.*\)\&c.*/\1/'` 
#	echo $RET

	
	for num in $RET
	do
		#echo $num
		#echo $post"$num"

		#TITLE=`curl -s -k $post"$num" | grep SE-TEXT | head -1 | sed 's/<\/b>.*//' | sed 's/.*>//' | sed 's/ //g'`

		TITLE=`curl -s -k $post"$num" | grep \<\/title | sed 's/<title>//' | sed 's/<.*//' | sed 's/영화 //' | sed 's/결.*//' | sed 's/ //g'`
                #TITLE=`curl -s -k $post"$num" | grep title | grep content`
		#TITLE=`echo $TITLE | sed 's/.*\=\"\(.*\)\".*/\1/' | sed 's/후기//' | sed 's/ //g'`
         
		#echo $TITLE       
		#TITLE=`w3m $post"$num" | grep "프로파일" -B 2 | grep -v "프로파일" | grep -v ^$`
               # EVAL=`w3m $post"$num" | grep "평점은"`

		EVAL=`curl -s -k $post"$num" | grep png | sed 's/.*ns0\(.*\)\.png.*/\1/g' | grep ^[0-9]  | head -1 | cut -d " " -f1 `

		if [[ "$EVAL" == *"_"* ]]; then
			EVAL=`echo $EVAL | sed 's/_//'`	
			EVAL=`expr $EVAL \* 2` 
			EVAL=`expr $EVAL + 1` 
		else
			EVAL=`expr $EVAL \* 2` 
		fi
		#TITLE=`echo $TITLE | sed 's/.*] //' | sed 's/후기//' | sed 's/ //g'`
	#	EVAL=`echo $EVAL | sed 's/.* \(.*\)점.*/\1/'`
		echo $EVAL" "$TITLE

	done
#	echo $address"$i"
done
