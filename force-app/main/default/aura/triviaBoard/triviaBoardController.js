({
	init : function(component, event, helper) {
        var action = component.get("c.getQuestions");
        
        var actionParams = {};
        
        actionParams["triviaId"] = component.get("v.recordId");
        
        action.setParams(actionParams);
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                var categories = response.getReturnValue();
                var count = categories.length;
                //console.log("categories", categories);
                component.set("v.categories", categories);
                component.set("v.categoryCount", count);
            }  else if (state === "ERROR") {
                $A.log(response.getError());
                console.log("triviaBoard:init: ", response.getError());
                $A.reportError("triviaBoard:init: ", response.getError());
            } //end if errors
        });
        $A.enqueueAction(action);
	}
})