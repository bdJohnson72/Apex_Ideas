/**
 * Created by Brooks Johnson on 9/28/2021.
 */

import {LightningElement} from 'lwc';
const currentUser = 'Brooks';
export default class GetterRecipe extends LightningElement {



    get currentUser(){
        return currentUser;
     }
    get doMath(){
        return 5 * 5;
    }

}