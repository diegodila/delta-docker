docker volume create --name volume_delta_lake --opt type=none --opt device=$HOME/Projects/delta-docker/workdir --opt o=bind
docker run --name delta_quickstart --mount source=volume_delta_lake,target=/opt/spark/work-dir \
-d --rm -p 8889-8890:8888-8889 delta_quickstart