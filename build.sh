function wait_for_neo {
  status=0
  while [ $status -ne 200 ]
  do
    status="$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' http://localhost:7575/)"
    echo "Wating for Neo4j to respond, current http status is $status"
    sleep 1
  done
}


docker-compose up -d
wait_for_neo
RAILS_ENV=test bundle exec rake neo4j:migrate
yarn test
bundle exec rake spec
