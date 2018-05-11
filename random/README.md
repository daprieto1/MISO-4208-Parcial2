# Diseño de Random Testing

---

Se decidio usar random testing como una oportunidad para generar eventos aleatorios de todo tipo sobre la aplicación con el objetivo de intentar encontrar defectos tanto en la aplicación original como en los mutantes.

Se probaron varias opciones para crear el comando que generara la mayor cantidad de eventos sobre la interfaz gráfica de la aplicación y evitar perder eventos en el sistema. Después de ello el comando usado para el proceso de pruebas fue el siguiente.

```bash
./adb shell monkey \
-p me.kuehle.carreport \
-s 34567654 \
--pct-touch 75 --pct-motion 0 --pct-trackball 25 --pct-nav 0 --pct-appswitch 0 --pct-anyevent 0 --pct-majornav 0 --pct-syskeys 0 -v 100000 
```

Se establecio `100000` como el número de eventos a generar sobre cada uno de los APK's provistos debido a que la duración de una ejecución toma alrededor de `4 minutos` si no ocurre un error antes.