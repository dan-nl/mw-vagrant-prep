#!/bin/bash

###
# @param {string} $1
# the type of message
#
# @param {string} $2
# the message
###
msg() {
	echo -e "[$1]  $2"
}

msgComplete() {
	msg "INFO" "                                                               COMPLETE"
}

###
# @param {string} $1
# the type of message
#
# @param {string} $2
# the message
###
msgHeader() {
	msgRule "$1"
	msg "$1" "$2"
	msgRule "$1"
}

###
# @param {string} $1
# the type of message
###
msgRule() {
	echo -e "[$1]  ------------------------------------------------------------------------"
}

###
# @param {string} $1
# the type of message
#
# @param {string} $2
# the subject of the result
#
# @param {string} $3
# the indented result
###
msgResultTabbed() {
	subject=$2

	if [ ${#subject} -lt 8 ]; then
		msg "$1" "$2\t\t\t ( $3 )"
	elif [ ${#subject} -lt 15 ]; then
		msg "$1" "$2\t\t ( $3 )"
	elif [ ${#subject} -lt 25 ]; then
		msg "$1" "$2\t ( $3 )"
	else
		msg "$1" "$2 ( $3 )"
	fi
}



###
# @param {string} $1
# global name for the array that contains the directory or file name;
# not $array_name, only array_name
#
# @param {string} $2
# target directory
#
# @param {string} $3
# file check type; e.g., -d -f
###
removeDirectoryOrFile() {
	array_name=$1[@]
	local_array=("${!array_name}")

	for i in ${local_array[*]}; do
		target="$2"/"$i"

		if [ $3 $target ]; then
 			rm -rf $target
 			status="removed"
		else
 			status="does not exist"
		fi

		msgResultTabbed "INFO" "$i" "$status"
	done;
}
