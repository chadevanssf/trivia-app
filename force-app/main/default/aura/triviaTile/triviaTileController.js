({
	itemSelected : function(component, event, helper) {
        var setting = event.getParam("value");
		component.set("v.complete", setting);
	}
})