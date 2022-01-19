import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import BINDING_FIELD from '@salesforce/schema/PrintMedia__c.BindingStyle__c';
import COLOR_FIELD from '@salesforce/schema/PrintMedia__c.Color__c';
import COVERJACKET_FIELD from '@salesforce/schema/PrintMedia__c.Cover_Jacket__c';
import PAGEMATERIAL_FIELD from '@salesforce/schema/PrintMedia__c.PageMaterial__c';
import PAGESIZE_FIELD from '@salesforce/schema/PrintMedia__c.PageSize__c';
import RECORDTYPE_FIELD from '@salesforce/schema/PrintMedia__c.RecordTypeId';

export default class RecordFormCreateExample extends LightningElement {
  
    @api PrintMedia__c;
    @api recordTypeId;

    fields = [PAGEMATERIAL_FIELD, PAGESIZE_FIELD, BINDING_FIELD, COLOR_FIELD, COVERJACKET_FIELD];

    handleSuccess(event) {
        const evt = new ShowToastEvent({
            title: 'Print Media created',
            message: 'Record ID: ' + event.detail.id,
            variant: 'success',
        });
        this.dispatchEvent(evt);
    }
}