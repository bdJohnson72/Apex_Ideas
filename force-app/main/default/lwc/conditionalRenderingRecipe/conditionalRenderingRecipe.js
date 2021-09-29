/**
 * Created by Brooks Johnson on 9/29/2021.
 */

import {LightningElement} from 'lwc';

export default class ConditionalRenderingRecipe extends LightningElement {

    visible = false;

    changeHandler(event) {
        this.visible = event.target.checked;
    }

}