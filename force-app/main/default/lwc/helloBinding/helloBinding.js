/**
 * Created by Brooks Johnson on 9/28/2021.
 */

import {LightningElement} from 'lwc';

export default class HelloBinding extends LightningElement {
    greeting = 'World';

    handleChange(event) {
        this.greeting = event.target.value;
    }
}

