const { exec } = require('child_process');
exec('sh hi.sh', (err, stdout, stderr) => {
  if (stdout.trimRight() !== 'wordpress is not running') {
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