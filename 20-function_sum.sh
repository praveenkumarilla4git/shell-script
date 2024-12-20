#!/bin/bash
add() {
    Result=$((2+3))
    return
}
add
 
echo "$Result"