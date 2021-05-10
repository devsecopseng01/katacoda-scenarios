echo "Started"

echo "The IP address for this environment is [[HOST_IP]]"

cat << 'EOF' > /opt/test.sh
var x = multiply(2, 2);
if(x === 4) {
  process.exit(0);
} else {
  console.log("Error", x);
  process.exit(1);
}
EOF



echo 'done' > /opt/katacoda-background-finished