({
    
        onChange: function (cmp, evt, helper) {
          let value=evt.getSource().get("v.value");
          cmp.set("v.recordId", value);
          console.log(value);
          cmp.find("mediaForm").recordTypeId=value;

          
        }
,
    
    myAction : function(component, event, helper) {

    }
})
