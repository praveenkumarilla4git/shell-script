
#!/bin/bash
is_odd(){ 
  x=$1
  if [ $((x%2)) == 0 ]; then
     echo "Its an Even Number"
     exit 1
  else
     echo "Number is Odd"
  fi
}
is_odd 10