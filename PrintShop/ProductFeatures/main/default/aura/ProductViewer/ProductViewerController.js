({
    init : function(component, event, helper) {
        helper.getProductList(component);
    },
    handleSelect : function(component, event, helper) {
        helper.switchTab(event, component);
    }
})
