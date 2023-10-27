#My custom functions

#save logs of your application to .log file
start_log() {

  LOG_FILE=$(basename "$PWD").log
  echo "$LOG_FILE"
  if [ ! -f $LOG_FILE ]; then
        echo "File not found!"
        touch $LOG_FILE
        npm run start >> $PWD/$LOG_FILE
        return 1
  fi
  echo "File $LOG_FILE found. Deleting it..." 
  rm -rf $LOG_FILE
  echo "Starting npm and logging"
  npm run start >> $PWD/$LOG_FILE
} 

#connect to remote ssh taking user input
function connectDb() {
  local password="$1"
  echo "Connecting to DB....";
  
  expect -c "
    set timeout 5
    spawn ssh  [user@]host]
    expect \"remote_prompt\"
    send \"command\r\"
    expect \"Password\"
    send \"$password\r\"
    interact
  "
}

#list the available fn and executes them based on number passed
list() {
  case "$1" in

  1)  echo "start_log"
      start_log
      ;;
  2)  echo  "connectDb"
      connectDb
      ;;
      ;;
  *) echo "Commands: 1)start_log | 2) connectDb"
     ;;
  esac
}