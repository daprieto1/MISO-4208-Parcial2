# Herramienta de automatización

---

La herramienta de automatización ejecuta por cada mutante lo siguiente:

```
mkdir /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/resultados/325-mutante
 cp /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/resultados/9-mutante.1/README.md /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/resultados/325-mutante/README.md
 rm /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/calabash/me.kuehle.carreport_69.apk
 cp /Users/diegoprietotorres/Downloads/apks/apk325/me.kuehle.carreport_69.apk /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/calabash/me.kuehle.carreport_69.apk
 cd /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/calabash && calabash-android resign me.kuehle.carreport_69.apk
 cd /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/calabash && calabash-android run me.kuehle.carreport_69.apk > /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/resultados/325-mutante/calabash.out
 cd /Users/diegoprietotorres/Library/Android/sdk/platform-tools && ./adb shell am start -n me.kuehle.carreport/me.kuehle.carreport.gui.MainActivity
 cd /Users/diegoprietotorres/Library/Android/sdk/platform-tools && ./adb shell monkey -p me.kuehle.carreport -s 34567654 --pct-touch 75 --pct-motion 0 --pct-trackball 25 --pct-nav 0 --pct-appswitch 0 --pct-anyevent 0 --pct-majornav 0 --pct-syskeys 0 -v --ignore-crashes 100000 > /Users/diegoprietotorres/Documents/programs/MISO-4208-Parcial2/resultados/325-mutante/random.out
```