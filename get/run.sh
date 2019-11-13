#!/bin/sh
#curl -H "X-ArchivesSpace-Session: $SESSION" -X GET 'http://52.45.122.194:8089/repositories/2'
curl -H "X-ArchivesSpace-Session: $SESSION" -X GET 'http://52.45.122.194:8089/repositories/2/digital_objects?id_set=736' | python -m json.tool > digital-object.json
# curl -H "X-ArchivesSpace-Session: $SESSION" -X GET 'http://52.45.122.194:8089/repositories/2/top_containers?id_set=3790' | python -m json.tool > out.json
