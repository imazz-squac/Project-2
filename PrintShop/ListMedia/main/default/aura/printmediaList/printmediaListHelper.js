({
    loadPrintMedias : function(cmp) {
         // Load all print media data
         var action = cmp.get("c.getPrintMedias");
         action.setCallback(this, function(response) {
             var state = response.getState();
             if (state === "SUCCESS") {
                 cmp.set("v.printmedias", response.getReturnValue());
                 cmp.set("v.printmediaList", response.getReturnValue());
                 this.updateTotal(cmp);
             }
 
             // Display toast message to indicate load status
             var toastEvent = $A.get("e.force:showToast");
             if (state === 'SUCCESS'){
                 toastEvent.setParams({
                     "title": "Success!",
                     "message": " Your Print Media have been loaded successfully."
                 });
             }
             else {
                 toastEvent.setParams({
                         "title": "Error!",
                         "message": " Something has gone wrong."
                 });
             }
             toastEvent.fire();
         });
          $A.enqueueAction(action);
     },
      
     updateTotal: function(cmp) {
       var printmedias = cmp.get("v.printmedias");
       cmp.set("v.totalPrintMedias", printmedias.length);
     }
 })