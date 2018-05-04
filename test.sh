mkdir jhh 
cd jhh/
touch jhhtest.txt
env
echo 'hello world' > jhhtest.txt
cat jhhtest.txt
cd ..
cp -r jhh/ $CI_UPLOAD_DIR
###