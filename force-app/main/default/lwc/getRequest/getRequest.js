import { LightningElement, wire } from 'lwc';
import requestAPI from '@salesforce/apex/RequestAPI.requestAPI';

export default class GetRequest extends LightningElement {
    repos;
    connectedCallback(){
        requestAPI()
        .then(res => {
            let data = JSON.parse(res);
            console.log(data)
        })
    }


    
}