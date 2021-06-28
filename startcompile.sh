#!/bin/bash

# Copyright (C) 2021 a xyzprjkt property

echo Starting Compile Script . . .

function check(){
	$(pwd)/compiler/check.sh
}

function compile(){
	 $(pwd)/compiler/compile.sh
}

check
compile
