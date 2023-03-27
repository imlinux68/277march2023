#!/bin/bash
function makedirs() {
echo "1. makedirs"
cd ~
mkdir -p grocery/{Fruit/{Corn,Toyota,Strawberry},Vegetables/{letucce,carrot}}

echo "2. fix"
echo "2.1 rename Toyota to melon"
mv grocery/Fruit/Toyota grocery/Fruit/Melon

echo "2.2 move corn to veg"
mv grocery/Fruit/Corn grocery/Vegetables

echo "2.3 write melon fact"
echo "Fact about melon" > grocery/Fruit/Melon/melon.txt

echo "3. create popcorn dir" 
mkdir grocery/Vegetables/Corn/popcorn

echo "4. Copy popcorn to carrot"
cp -r grocery/Vegetables/Corn/popcorn grocery/Vegetables/carrot

echo "5. delete grocery dir"
rm -rvf ~/grocery
}

function finduser() {
read -p "Enter a user name in system: " username
grep -q ^$username /etc/passwd
if [[ $? -eq 0 ]] 
	then 
		echo "user $username is exists!"
	else
		echo "user doesnt exists!"
fi
}

finduser

















