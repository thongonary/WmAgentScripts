HTML_DIR=/eos/project/c/cms-unified-logs/www/
LOCAL_DIR=/data/unified/www/
CACHE_DIR=/data/unified-cache/

for each in `ls $HTML_DIR/logs/*/*.log` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 10 ] ; then
	echo remove $each
	rm -f $each
    fi
done
for each in `ls $HTML_DIR/logs/*/*.time` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 10 ] ; then
	echo remove $each
	rm -f $each
    fi
done
for each in `ls $HTML_DIR/logs/*/*.json` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 10 ] ; then
	echo remove $each
	rm -f $each
    fi
done

for each in `ls $LOCAL_DIR/logs/*/*.log` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 10 ] ; then
	echo remove $each
	rm -f $each
    fi
done
for each in `ls $LOCAL_DIR/logs/*/*.time` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 10 ] ; then
	echo remove $each
	rm -f $each
    fi
done
for each in `ls $LOCAL_DIR/logs/*/*.json` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 10 ] ; then
	echo remove $each
	rm -f $each
    fi
done

for each in `ls $CACHE_DIR/*` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 10 ] ; then
	echo remove $each
	rm -f $each
    fi
done