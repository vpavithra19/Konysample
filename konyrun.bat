config.properties\propertiesrun.sh QA config.properties\Sample.properties Headlessbuild.properties

mkdir cicdplugin

node build.js --konyvizversion 9.2.9

cd ..

java -jar bundles\com.kony.studio.viz.core.win64\konywebstudio\lib\mf\mfcli.jar binary-upload -u v.pavithra@hcl.com -p Pavithra@19 -t 100037194 -clurl https://manage.kony.com/ -a Konysample -v 1.0 -bp "Konysample\binaries\android\Konysample-debug.apk" -plat android_phone --binary-version 1.0.0 --description "This is android binary" --display-name "Konysample" --appIcon "Konysample\config.properties\b.png"

java -jar bundles\com.kony.studio.viz.core.win64\konywebstudio\lib\mf\mfcli.jar native-publish -u v.pavithra@hcl.com -p Pavithra@19 -t 100037194 -clurl https://manage.kony.com/ -a Konysample -v 1.0 -e "VoltMX Technohub" -cbmeta "{"android_phone" : 1.0.0}"

