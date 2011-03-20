find static/js -name *.soy -exec java -jar closure-tools/SoyToJsSrcCompiler.jar --outputPathFormat {}.js --shouldGenerateJsdoc --shouldProvideRequireSoyNamespaces {} \;
find static/js -name *.coffee -exec coffee -c {} \;
python closure-tools/closure/bin/build/closurebuilder.py --root closure-tools --root static --namespace "website" --output_mode=script --compiler_jar=closure-tools/compiler.jar > static/js/website-compiled.js
