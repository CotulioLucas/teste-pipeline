# robot -x xunit.xml -d ./logs tests/features

robot -x xunit.xml -d ./logs  tests/features
# pabot --processes 2 -x xunit.xml -d ./logs  tests/features

rm -rf ./logs/selenium
mkdir ./logs/selenium
mkdir ./logs/selenium/screeenshot

cp $(find ./logs -type f -name "*.png") ./logs/selenium/screenshot/
