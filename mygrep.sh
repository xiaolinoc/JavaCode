keyword=$1;
for name in `find $(pwd) -name "*.java" -or -name "*.properties" -or -name "*.xml"`; do
	if [ -f $name ]; then 
		grep $keyword $name; 
		if [ $? == 0 ]; then
			echo $name; 
		fi 
	fi
done



#find . -regex '.*/./(cpp/|h/)'

#find . -name "*.cpp" -or -name "*.h"