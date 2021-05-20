echo "Started"


cp /usr/local/bin/hi.sh /root/hi.sh

cp /usr/local/bin/node_program.js /root/node_program.js

cat << 'EOF' > /opt/test.js
const { exec } = require('child_process');
exec('sh /root/hi.sh', (err, stdout, stderr) => {
  if (stdout.trimRight() !== 'wordpress is running') {
    //some err occurred
    console.error(err);
	process.exit(1);
  } else {
   // the *entire* stdout and stderr (buffered)
   console.log(`out: ${stdout}`);
    process.exit(0);
   console.log(`stderr: ${stderr}`);
  }
});
EOF



echo 'done' > /opt/katacoda-background-finished


