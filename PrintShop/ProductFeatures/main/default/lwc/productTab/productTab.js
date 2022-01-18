import { LightningElement, api, track } from 'lwc';

export default class ProductTab extends LightningElement {
    
    @api products;

    @api selectedItem;

    handleSelect(event){
        let name = event.detail.name;
        this.selectedItem = name
        let selectEvent = new CustomEvent('select',{detail: {name} });
        this.dispatchEvent(selectEvent);
    }
}