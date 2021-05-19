echo "Started"


cp /usr/local/bin/hi.sh /root/hi.sh

cp /usr/local/bin/node_program.js /root/node_program.js

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


