var rokuDeploy = require('roku-deploy');

//deploy a .zip package of your project to a roku device
rokuDeploy.deploy({
    host: 'ip-of-roku',
    password: 'password for roku dev admin portal'
    //other options if necessary
}).then(function(){
    console.log("using this")
    //it worked
}, function(error) {
    //it failed
    console.error(error);
});