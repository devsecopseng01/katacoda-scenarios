echo "Started"

cat << 'EOF' > /root/script.sh
#!/bin/bash


VAR0="nginx:alpine"
VAR1=`docker ps | grep $VAR0 | wc -l
echo $VAR1
if [ $VAR1 -ge 1 ]
then
        echo "Ngninx is running"

else

echo "nginx is not running"

fi
EOF

cat << 'EOF' > /opt/test.js
var x = multiply(2, 2);
if(x === 4) {
  process.exit(0);
} else {
  console.log("Error", x);
  process.exit(1);
}
EOF



echo 'done' > /opt/katacoda-background-finished