nohup docker build ./ --add-host pypi.my.org:192.168.0.62 -t harbor.my.org:1080/python-app/sandman > build-Dockerfile-sandman-app.log 2>&1 &
tail -f build-Dockerfile-sandman-app.log
docker push harbor.my.org:1080/python-app/sandman
docker run -itd --name sandman-usertestsys -e DB_TYPE=mssql -e DB_DRIVER=pymssql -e USERNAME=AcadsocDataAnalysis -e PASSWORD="jS&D6v7jT9jpI7L@" -e DB_HOST=192.168.3.139 -e DB_PORT=1433 -e DATABASE=AcadsocDataAnalysisAlgorithm_rel_202103171015 -e ARGS="-v TestResultLast/test_user_id/int" -p 9500:5000 harbor.my.org:1080/python-app/sandman