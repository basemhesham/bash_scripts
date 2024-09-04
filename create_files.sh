#!/bin/bash


#function 1 
create_bash () {
read -p "Enter number of files : " count
  i=1
  while [ $count -gt 0 ]
  do
  read -p "Enter the new file_$i name : " file_name
  touch ${file_name}.sh
  echo "#!/bin/bash" > ${file_name}.sh
  chmod +x ${file_name}.sh
  echo "bash file ${file_name}.sh is created and execution permission added" 
  count=$(($count-1))
  i=$(($i+1))
  done
}


#function 2
create_file () {
  read -p "Enter number of files : " count
  i=1
  while [ $count -gt 0 ]
  do
  read -p "Enter file name : " file_name
  touch $file_name
  chmod +x $file_name
  echo "file $file_name_$i is created"
  count=$(($count-1))
  i=$(($i+1))
  done
}

#function 3
create_dir () {
read -p "Enter the path : " dir_path
  read -p "Enter directory name : " dir_name
  mkdir ${dir_path}/${dir_name}
  echo "folder $dir_name is created"
}


while true 
do

echo "choose one of the following options"
echo "1 : create a bash script file"
echo "2 : create a normal file"
echo "3 : create a new directory"
echo "4 : Exit"

read -p "Enter the option (1,2,3,4) : " opt

case $opt in
 1) create_bash ;;
 2) create_file  ;;
 3) create_dir ;;
 4) exit ;;
esac

done
