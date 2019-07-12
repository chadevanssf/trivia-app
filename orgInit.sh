sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60

sfdx force:source:push
sfdx force:user:permset:assign -n TriviaAdmin

sfdx force:org:open
