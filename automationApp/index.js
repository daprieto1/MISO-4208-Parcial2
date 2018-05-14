var nrc = require('node-run-cmd');
var fs = require('fs');

var createFolder = path => {
    return new Promise((resolve, reject) => {
        console.log(` createFolder start: path = ${path}`);
        fs.mkdir(path, (err) => {
            if (err) resolve(err);
            resolve();
        });
    });
}

var copyFile = (source, target) => {
    return new Promise((resolve, reject) => {
        console.log(` copyFile start: source = ${source}, target = ${target}`);
        fs.copyFile(source, target, (err) => {
            if (err) reject(err);
            resolve();
        });
    });
}

var executeCommand = command => {
    return new Promise((resolve, reject) => {
        console.log(`executeCommand start: command = ${command}`);
        nrc.run(command, { onData: console.log })
            .then(function (exitCodes) {
                console.log(`SUCCESS: exitCodes = ${exitCodes}`);
                resolve();
            }, function (err) {
                console.log(`ERROR: error = ${err}`);
                reject(err);
            });
    });
};

var mutants = [61, 62]
var command = '';
mutants.forEach(mutant => {
    var mutantsPath = '/Users/diegoprietotorres/Downloads/apks'
    var readmePath = '/Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/resultados/9-mutante.1/README.md'
    var mutantFolder = `/Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/resultados/${mutant}-mutante`


    command += `\n mkdir ${mutantFolder} && \\`
    command += `\n cp ${readmePath} ${mutantFolder}/README.md && \\`
    command += `\n rm /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/calabash/me.kuehle.carreport_69.apk && \\`
    command += `\n cp ${mutantsPath}/apk${mutant}/me.kuehle.carreport_69.apk /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/calabash/me.kuehle.carreport_69.apk && \\`
    command += `\n cd /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/calabash && calabash-android resign me.kuehle.carreport_69.apk && \\`
    command += `\n cd /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/calabash && calabash-android run me.kuehle.carreport_69.apk > ${mutantFolder}/calabash.out && \\`
    command += `\n cd /Users/diegoprietotorres/Library/Android/sdk/platform-tools && ./adb shell am start -n me.kuehle.carreport/me.kuehle.carreport.gui.MainActivity && \\`
    command += `\n cd /Users/diegoprietotorres/Library/Android/sdk/platform-tools && ./adb shell monkey -p me.kuehle.carreport -s 34567654 --pct-touch 75 --pct-motion 0 --pct-trackball 25 --pct-nav 0 --pct-appswitch 0 --pct-anyevent 0 --pct-majornav 0 --pct-syskeys 0 -v --ignore-crashes 100 > ${mutantFolder}/random.out`
    command += '\n\n'
});

console.log(command)