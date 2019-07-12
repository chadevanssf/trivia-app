# trivia-app

## Dev, Build and Test

1. Assign permset

    ```sh
    sfdx force:user:permset:assign -n TriviaAdmin
    ```


## Resources

```sh
sfdx force:data:tree:export -q ./data/triva-categories.soql -d ./data/ -p
sfdx force:data:tree:export -q ./data/categories-questions.soql -d ./data/ -p
sfdx force:data:tree:import -p ./data/combined/Combined_Trivia__c-plan.json
```


## Description of Files and Directories


## Issues


