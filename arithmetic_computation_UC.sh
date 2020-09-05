declare -A dict
declare -a arr

read -p "ENTER A : " a
read -p "ENTER B : " b
read -p "ENTER C : " c

c1=$(($a+$b*$c))
c2=$(($a*$b+$c))
c3=$(($c+$a/$b))
c4=$(($a%$b+$c))

echo -e "\n( a + b x c ) : $(($a+$b*$c))"
echo -e "\n( a x b + c ) : $(($a*$b+$c))"
echo -e "\n( c + a / b ) : $(($c+$a/$b))"
echo -e "\n( a % b + c ) : $(($a%$b+$c))"

dict["c1"]+=$c1
dict["c2"]+=$c2
dict["c3"]+=$c3
dict["c4"]+=$c4

a=0
arr[((a++))]=${dict[@]}
echo -e "\nDICTIONARY : ${dict[@]}"
echo -e "\nARRAY VALs : ${arr[@]}"

s_arr=($(echo ${arr[@]}| tr " " "\n" | sort -n))
echo -e "\nSORTED ASC : ${s_arr[@]}" #MIN TO MAX
