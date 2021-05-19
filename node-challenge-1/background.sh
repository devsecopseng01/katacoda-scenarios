echo "Started"

cat << 'EOF' > /root/multiply.js
function multiply(a, b){
  a * b
}
EOF

cat << 'EOF' > /opt/test.js
const { exec } = require('child_process');
exec('sh hi.sh', (err, stdout, stderr) => {
  if (err) {
    //some err occurred
    console.error(err)
  } else {
   // the *entire* stdout and stderr (buffered)
   console.log(`out: ${stdout}`);
    process.exit(0);
   console.log(`stderr: ${stderr}`);
  }
});
EOF



echo 'done' > /opt/katacoda-background-finished