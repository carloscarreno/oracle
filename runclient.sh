# ------------------------------------------------------------------------
# -- DISCLAIMER:
# --    This script is provided for educational purposes only. It is NOT
# --    supported by Oracle World Wide Technical Support.
# --    The script has been tested and appears to work as intended.
# --    You should always run new scripts on a test instance initially.
# -- 
# ------------------------------------------------------------------------
if [ $# -ne 1 ]; then
   echo "You must pass in how many times to loop, like:"
   echo "./runclient.sh 5"
   exit 2
fi
source /u01/app/fmw/wlserver/server/bin/setWLSEnv.sh
export CLASSPATH=databaseclient.jar:$CLASSPATH
java com.oracle.stcurr.clients.DatabaseClient $1
