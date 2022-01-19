({
    getProductList : function(component) {
        let getMethod = component.get("c.getProducts");

        getMethod.setCallback(this, (response) => {
            if(response.getState() == 'SUCCESS'){
                let result = response.getReturnValue();
                let descriptionMap = new Map();
                result.forEach(element => {
                    descriptionMap.set(element.Name,element.Description)
                });
                component.set("v.productMap", descriptionMap);
                component.set("v.productList", result);
            }
        });

        $A.enqueueAction(getMethod);
    },
    switchTab : function(event, component) {
        let name = event.getParam('name');
        let descriptionMap = component.get('v.productMap');
        
        //console.log(descriptionMap.get(name));
        component.set('v.description',descriptionMap.get(name));
    }
})