({
    doInit : function(component, event, helper) {
        // Retrieve print media during component initialization
        helper.loadPrintMedias(component);
    },
    
    handleSelect : function(component, event, helper) {
        var printmedias = component.get("v.printmedias");
        var printmediaList = component.get("v.printmediaList");

        //Get the selected options
        var selected = event.getSource().get("v.value");
    
        var filter = [];
        var k = 0;
        for (var i=0; i<printmediaList.length; i++){
            var c = printmediaList[i];
            if (selected != "All"){
                if(c.BindingStyle__c == selected) {
                    filter[k] = c;
                    k++; 
                }
            }
            else {
                   filter = printmediaList;
            }       
        }
        //Set the filtered list of print media based on the selected option
        component.set("v.printmedias", filter);
        helper.updateTotal(component);
    }
})