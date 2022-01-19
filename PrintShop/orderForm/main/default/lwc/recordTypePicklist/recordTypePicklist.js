import { LightningElement, api } from 'lwc';

export default class CustomLookup extends LightningElement {
    @api childObjectApiName = 'PrintMedia__c'; 
    @api targetFieldApiName = 'RecordTypeId'; 
    @api fieldLabel = 'Select a Print Media';
    @api disabled = false;
    @api value;
    @api required = false;

    handleChange(event) {
        // Creates the event
        const selectedEvent = new CustomEvent('valueselected', {
            detail: event.detail.value
        });
        //dispatching the custom event
        this.dispatchEvent(selectedEvent);
    }

    @api isValid() {
        if (this.required) {
            this.template.querySelector('lightning-input-field').reportValidity();
        }
    }
}