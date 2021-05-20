echo "Started"


cp /usr/local/bin/hi.sh /root/hi.sh

cp /usr/local/bin/node_program.js /root/node_program.js

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


