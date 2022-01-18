import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import ACCOUNT_FIELD from '@salesforce/schema/Order.AccountId';
import STATUS_FIELD from '@salesforce/schema/Order.Status';
import DATE_FIELD from '@salesforce/schema/Order.EffectiveDate'
import ADDY_FIELD from '@salesforce/schema/Order.BillingAddress'
import DESCRIPTION_FIELD from '@salesforce/schema/Order.Description'
//import PB_FIELD from '@salesforce/schema/Ord'
//import PHONE_FIELD from '@salesforce/schema/Lead.Phone';

export default class RecordFormCreateExample extends LightningElement {
    // objectApiName is "Account" when this component is placed on an account record page
    @api Order;

    fields = [ACCOUNT_FIELD, STATUS_FIELD, DATE_FIELD, DESCRIPTION_FIELD, ADDY_FIELD];
       // [COMPANY_FIELD, PHONE_FIELD];

    handleSuccess(event) {
        const evt = new ShowToastEvent({
            title: 'Account created',
            message: 'Record ID: ' + event.detail.id,
            variant: 'success',
        });
        this.dispatchEvent(evt);
    }
}