#!/bin/bash
pushd `dirname $0`/../.. > /dev/null
BASE=`pwd`
popd > /dev/null
cd $BASE

if [ "x${CONF_PATH}x" == "xx" ];then
	CONF_PATH="$BASE/bin/conf"
fi

web=$1

webConf=$(grep -i "^${web}\s*=" $BASE/bin/conf/web.properties | cut -d= -f 2| sed 's/^\s*//;s/\s*$//')

bash $BASE/bin/lib/initconf.sh

if [ "x${webConf}x" != "xx" ]; then
	webNamePath=$(grep -i "^web-name-path\s*=" $CONF_PATH/system.properties | cut -d= -f 2| sed 's/^\s*//;s/\s*$//')
	webDir=$(grep -i "^web-dir\s*=" $CONF_PATH/system.properties | cut -d= -f 2| sed 's/^\s*//;s/\s*$//')
	webProfile=$(grep -i "^web-profile\s*=" $CONF_PATH/system.properties | cut -d= -f 2| sed 's/^\s*//;s/\s*$//')
	
	gitVersion=$(git rev-parse HEAD)
	
	otherProfile=""
	if [ "x${webProfile}x" != "xx" ]; then
		otherProfile=",${webProfile}"
	fi
	
    mvn -U -am clean install -U -pl ${webNamePath}:${web} -Ppublish${otherProfile} -Dgit.version=${gitVersion}
fi
