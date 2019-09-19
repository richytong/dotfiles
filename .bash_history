    "properties": {
        "rating": {
            "type": "integer_range"
        }
    }
}
HEREDOC

vim .scripts/ddy-es-index 
vim .scripts/ddy-es-index 
curl -X PUT https://search-dandy-prod-qr73bh4ntynakv6mo6prrlbxty.us-east-1.es.amazonaws.com/party/_mapping   -H 'Content-Type: application/json'   -d @- <<HEREDOC
{
    "properties": {
        "rating": {
            "type": "integer_range"
        }
    }
}
HEREDOC

vim .scripts/ddy-es-index 
curl -X PUT https://search-dandy-prod-qr73bh4ntynakv6mo6prrlbxty.us-east-1.es.amazonaws.com/party/_mapping/_doc   -H 'Content-Type: application/json'   -d @- <<HEREDOC
{
    "properties": {
        "rating": {
            "type": "integer_range"
        }
    }
}
HEREDOC

curl -X PUT https://search-dandy-prod-qr73bh4ntynakv6mo6prrlbxty.us-east-1.es.amazonaws.com/party/_mapping/party   -H 'Content-Type: application/json'   -d @- <<HEREDOC
{
    "properties": {
        "rating": {
            "type": "integer_range"
        }
    }
}
HEREDOC

curl -X PUT https://search-dandy-dev-eotq3m6synyykemgivds35uszy.us-east-1.es.amazonaws.com/party/_mapping/party -H 'Content-Type: application/json'   -d @- <<HEREDOC
{
    "properties": {
        "rating": {
            "type": "integer_range"
        }
    }
}
HEREDOC

ddy-git-s
vim .scripts/ddy-es-index 
vim test/findMyParty.js 
ddy-git-s
dandytest --with-db test/editMyProfile.js 
node
dandytest --with-db test/editMyProfile.js 
dandytest --with-db editMyProfile.js 
cd ..
vim *user*
cd ..
dandytest --with-db integration.js 
cd ..
ddy-git-s
dandytest --with-db test/partySimulation.js 
ddy-git-s
vim index.js 
nvim /home/richard/code/dandy/dandy-party/index.js
dandytest --with-db test/partyStats.js 
ddy-git-s
ddy-git-s
nvim /home/richard/code/dandy/dandy-my-party/index.js
nvim /home/richard/code/dandy/dandy-admin/src/components/Stats.jsx
ddy-gi-ts
ddy-git-s
pyenv-init 
cd -
npm version patch && git p
cd -
vim src/components/Party.jsx 
./dandydeploy dandy-admin
cd ./.
cd ..
ddy-git-s
vim *party*
dandytest --with-db integration.js 
ddy-git-s
vim src/components/Party.jsx 
nvim /home/richard/code/dandy/dandy-admin/src/components/Party.jsx
nvim /home/richard/code/dandy/dandyseed/data/default/groups.json
nvim /home/richard/code/dandy/dandytest/src/fixtures/groups.js
gi ts
vim src/components/Party.jsx 
gi ts
nvim /home/richard/code/dandy/dandy-party/party-report.ejs
dandytest --with-db findMyParty.js 
node runserver.js 
sudo -E node runserver.js 
ddy-gi-ts
dandytest --with-db test/findMyParty.js 
cd ..
vim index.js 
dandytest --with-db test/findMyParty.js 
dandytest --with-db findMyParty.js 
cd .
cd ..
ddy-git-s
ddy-git-s
gi tp
ddy-git-s
vim index.js 
dandytest --with-db createParty.js 
cd ..
dandytest --with-db test/partyStats.js 
ddy-gi-ts
ddy-git-s
ddy-gi-ts
ddy-git-s
ddy-gi-ts
ddy-git-s
dandytest --with-db test
dandytest --with-db test/matchmake.js 
node
dandytest --with-db test/matchmake.js 
dandytest --with-db test/predictMatches.js 
dandytest --with-db test/predictMatches.js test/matchmake.js 
dandytest --with-db test/matchmake.js 
dandytest --with-db test/predictMatches.js test/matchmake.js 
node
dandytest --with-db test/matchmake.js 
dandytest --with-db test/predictMatches.js 
dandytest --with-db test/predictMatches.js test/matchmake.js 
dandytest --with-db test/matchmake.js 
node
dandytest --with-db test/matchmake.js 
/curRun
dandytest --with-db test/matchmake.js 
da
dandytest --with-db test/matchmake.js 
dandytest --with-db test/predictMatches.js 
dandytest --with-db test/matchmake.js 
node
vim test/match
vim index.js 
dandytest --with-db test
dandytest --with-db test/setSeenEver.js 
dandytest --with-db partyStart.js 
dandytest --with-db test/partyStart.js 
vim index.js 
ddy-git-s
dandytest --with-db test
nvim /home/richard/code/dandy/dandy-app/test/integration.js
dandytest --with-db test/integration.js 
dandytest --with-db integration.js 
ddy-git-s
dandytest --with-db partySimulation.js 
vim test/integration.js 
ddy-git-s
nvim /home/richard/code/dandy/dandy-data-provider-party/index.js
dandytest --with-db test
ddy-git-s
nvim /home/richard/code/dandy/dandy-my-profile/index.js
dandytest --with-db test/editMyProfile.js 
dandytest --with-b integration.js 
dandytest --with-db integration.js 
cd ..
dandytest --with-db integration.js 
cd -
dandytest --with-db integration.js 
vim *user*
cd ..
dandytest --with-db partySimulation.js 
export DANDY_ENV=prod_scripts
node scripts/getAllUsers.js 
node countUser
node countUsers.js 
dandytest --with-db partySimulation.js 
node countUsers.js 
dandytest --with-db partySimulation.js 
node countUsers.js 
dandytest --with-db partySimulation.js 
node countUsers.js 
dandytest --with-db partySimulation.js 
node countUsers.js 
vim scripts/countUsers.js
dandylogs "2h ago" > tmp.txt 
pyenv-init 
dandylogs "2h ago" > tmp.txt 
./dandylogs "2h ago" > tmp.txt
vim tmp.txt 
cat tmp.txt | grep joinparty
cat tmp.txt | grep joinParty
cat tmp.txt | grep joinParty | grep -v roulettes
cat tmp.txt | grep joinParty | egrep -v 'roulettes|"ppr:null'
cat tmp.txt | grep joinParty | egrep -v 'roulettes|"ppr:null"'
cat tmp.txt | grep joinParty | grep -v roulettes
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null'
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | gron -s
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | gron -s | egrep 'uid'
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | gron -s | egrep 'uid' | gron --ungron
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | gron -s | egrep 'uid'
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | gron -s | egrep 'uid' | cut -d' ' -f2
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | gron -s | egrep 'uid' | cut -d' ' -f3
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | gron -s | egrep 'uid' | cut -d' ' -f3 | cut -d';' -f1
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | gron -s | egrep 'uid' | cut -d' ' -f3 | cut -d';' -f1 | xcb
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | grep male | gron -s | egrep 'uid' | cut -d' ' -f3 | cut -d';' -f1 | xcb
cat tmp.txt | grep joinParty | grep -v roulettes | grep -v '"ppr":null' | grep female | gron -s | egrep 'uid' | cut -d' ' -f3 | cut -d';' -f1 | xcb
ddy-git-s
ddy-npm-publish -c
dc
man dc
dandytest --with-db test
ddy-git-pull
dandytest --with-db test
nvim /home/richard/code/dandy/dandy-serverless-app-analytics/config.js
/home/richard/code/dandy/dandy-serverless-app-analytics/index.js
/home/richard/code/dandy/dandy-serverless-app-analytics/package-lock.json
/home/richard/code/dandy/dandy-serverless-app-analytics/apply
/home/richard/code/dandy/dandy-serverless-app-analytics/package.json
/home/richard/code/dandy/dandy-serverless-app-analytics/pkg.zip
/home/richard/code/dandy/dandy-serverless-app-analytics/build
/home/richard/code/dandy/dandy-serverless-app-analytics/README.md
nvim /home/richard/code/dandy/dandy-serverless-app-analytics/index.js
npm i
./build && ./apply
pyenv-init
./apply
awslogs get /aws/lambda/appAnalytics ALL --watch
./build
./apply
awslogs get /aws/lambda/appAnalytics ALL --watch
./build && ./apply
awslogs get /aws/lambda/appAnalytics ALL --watch
./build && ./apply
awslogs get /aws/lambda/appAnalytics ALL --watch
ddy-gi-ts
ddy-git-s
ddy-git-s
ddy-npm-publish
pyenv-init 
cd -
npm version patch && git p
cd -
./dandydeploy dandy-app
./dandydeploy-push dandy-app
cat tmp.txt | grep feedback
cat tmp.txt | grep feedback | gron -s
cat tmp.txt | grep feedback | gron -s | egrep 'comment|rating|tags'
cat tmp.txt | grep feedback | gron -s | egrep 'comment|rating|tags' | gron --ungron > feedback.json
vim feedback.json 
cat tmp.txt | grep feedback | gron -s | egrep 'comment|rating|tags|uid' | gron --ungron > feedback.json
ddy-npm-publish -c
vim feedback.json 
dandytest --with-db matchmake.js 
dandytest --with-db predictMatches.js 
dandytest --with-db matchmake.js predictMatches.js 
dandytest --with-db predictMatches.js 
dandytest --with-db matchmake.js predictMatches.js 
cd test
dandytest --with-db matchmake.js predictMatches.js 
cd ..
dandytest --with-db test/partyMatcher.js 
dandytest --with-db test/matchmake.js 
dandytest --with-db createParty.js 
dandytest --with-db integration.js 
vim index.js 
ddy-git-s
dandytest --with-db test
ddy-git-s
node runserver.js 
sudo -E node runserver.js 
dandyseed reset
node runserver.js 
vim src/components/Party.jsx 
ddy-git-s
nvim /home/richard/code/dandy/dandy-fmt/index.js
vim test/integration.js 
ddy-git-s
ddy-npm-publish -c
ddy-git-s
ddy-npm-publish 
ddy-git-s
cd ../dandy-app
dandytest --with-db test/integration.js 
ddy-git-s
dandytest --with-db test/partySimulation.js 
ddy-git-s
npm version patch && git p
cd ../dandydeploy/
pyenv-init
pyenv-init 
cd ../dandy-admin
npm version patch && git p
cd ../dandydeploy/
./dandydeploy dandy-admin
cd -
./dandydeploy dandy-app
./dandydeploy-push dandy-app
./dandydeploy dandy-admin
./dandylogs "10m ago" > tmp.txt 
cd -
npm version patch && git p
cd -
vim tmp.txt 
./dandydeploy dandy-admin
./dandylogs "10m ago" > tmp.txt 
pyenv-init 
./dandylogs "10m ago" > tmp.txt 
vim tmp.txt 
ddy-git-s
dandytest --with-db test/partyMatcher.js 
vim index.js 
ddy-git-s
vim index.
dandytest --with-db likePassFlows.js 
gi tp
ddy-git-s
vim index.js 
dandytest --with-db test/partySimulation.js 
dandytest --with-db test/integration.js 
ddy-git-s
ddy-gi-ts
ddy-git-s
ddy-npm-publish -c
gi tlg
ddy-npm-publish -c
ddy-npm-publish
npm version patch && git p
./dandydeploy dandy-app
./dandydeploy-push dandy-app
ddy-git-s
ddy-npm-publish -c
vim index.
ddy-git-s
ddy-git-s
node
dandytest --with-db test/createParty.js 
export DANDY_ENV=prod_scripts
node scripts/getAllUsers.js 
vim scripts/getAllGroups.js 
node scripts/getAllGroups.js 
vim data/allGroups.json 
node addUserGroup.js 
echo $DANDY_ENV 
node addUserGroup.js 
export DANDY_ENV=prod_scripts
node addUserGroup.js 
node getAllUsers.js 
vim scripts/addUserGroup.js
vim data/allGroups.json 
cp addUserGroup.js removeUserGroup.js
export $DANDY_ENV
echo $DANDY_ENV
node removeUserGroup.js 
export DANDY_ENV=prod_scripts
echo $DANDY_ENV 
node removeUserGroup.js 
vim scripts/addUserGroup.js 
echo $DANDY_ENV
node scripts/getAllUsers.js 
ddy-git-s
ddy-git-s
vim index.js 
cd ..
cp -r dandy-fmt/ dandy-constant
cd dandy-constant
npm publish
ddy-git-s
dandytest --with-db test/createParty.js 
dandydep ln
dandytest --with-db test/createParty.js 
npm i
npm version patch && npm publish && git p
npm i
ddy-git-s
dandytest --with-db test/createParty.js 
vim *party*
ddy-git-s
dandytest --with-db test
ddy-git-s
ddy-npm-publish -c
ddy-git-s
ddy-gi-ts
ddy-git-s
vim index.js 
ddy-git-s
nvim /home/richard/code/dandy/dandy-my-match/index.js
dandytest --with-db suspendMatch.js 
dandytest --with-db reclaimMatch.js 
ddy-git-s
cd ..
ddy-git-s
cd 
node filterUsers.js 
export DANDY_ENV=prod_scripts
node getAllUsers.js 
node countUsers.js 
node filterUsers.js 
npm version patch && npm publish && git p
gi ts
npm version patch && npm publish && git p
sudo -E node runserver.js 
node runserver.js 
sudo sudo -E node runserver.js 
sudo rm -rf node_modules/ package.json
ddy-npm-publish -c
npm i
vim scripts/filterUsers.js
ddy-gi-ts
ddy-git-s
cd ..
cd ../..
node runserver.js 
sudo -E node runserver.js 
sudo rm -rf node_modules/ package.json 
npm i
cd ../..
npm i
gi ts
node filterUsers.js 
vim scripts/filterUsers.js 
cat package.json 
node index.js 
npm version patch && npm publish && git p
sudo rm -rf node_modules/
ddy-git-s
npm i
ddy-git-s
node
node notOnboarded.js 
vim scripts/notOnboarded.js
dandyseed reset
vim *party*
dandytest --with-db integration.js 
export DANDY_ENV=prod_scripts
node getAllUsers.js 
node addUserGroup.js 
export DANDY_ENV=prod_scripts
node addUserGroup.js 
node prod_scripts.js 
node addUserGroup.js 
export DANDY_ENV=prod_scripts
node addUserGroup.js 
node prod_scripts.js 
cd ..
export DANDY_ENV=prod_scripts
node addUserGroup.js 
vim test/integration.js 
ddy-git-s
vim scripts/addUserGroup.js 
vim .gitignore 
vim package.json 
ddy-git-s
vim test/integration.js 
ddy-git-s
dandytest --with-db test/integration.js 
dandytest --with-db test/partySimulation.js 
npm version patch && npm publish && git p
ddy-git-s
ddy-git-s
cd ../dandydeploy/
pyenv-init
./dandydeploy dandy-admin
vim services/dandy-admin/Dockerfile 
./dandylogs "10m ago" > tmp.txt 
vim pa
vim party-report.ejs 
ddy-git-s
vim tmp.txt 
node
dandytest --with-db test/partyStats.js 
ddy-git-s
vim index.js 
node runserver.js 
dandyseed reset
export DANDY_ENV=prod_scripts
node scripts/getAllUsers.js 
sudo -E node runserver.js 
dandydep ln
cd ../..
vim data/allUsers.json 
npm version patch && npm publish && git p
npm i && rm package-lock.json
ddy-git-s
sudo -E node runserver.js 
node runserver.js 
ddy-git-s
npm version patch && git p
cd ../dandydeploy/
dandytest --with-db test
ddy-git-s
./dandydeploy dandy-admin
npm version patch && git p
cd ../dandydeploy/
./dandydeploy dandy-app
pyenv-init 
./dandydeploy-push dandy-app
ddy-npm-publish -c
export DANDY_ENV=prod_scripts
