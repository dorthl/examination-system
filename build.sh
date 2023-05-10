cd exam_online_ui
npm i 
npm run build:prod
rm -fr ../exam-online-api/ruoyi-admin/src/main/resources/static
cp -r dist ../exam-online-api/ruoyi-admin/src/main/resources/static
cd ../exam-online-api
mvn install
docker build -t registry.cn-hangzhou.aliyuncs.com/dorthl/examination:latest .
docker push registry.cn-hangzhou.aliyuncs.com/dorthl/examination:latest
