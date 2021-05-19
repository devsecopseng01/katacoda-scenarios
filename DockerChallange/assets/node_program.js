const { exec } = require('child_process');
exec('sh hi.sh', (err, stdout, stderr) => {
  if (err) {
    //some err occurred
    console.error(err)
  } else {
   // the *entire* stdout and stderr (buffered)
   console.log(`out: ${stdout}`);
   console.log(`stderr: ${stderr}`);
  }
});