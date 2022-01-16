/**
 * Created by Brooks Johnson on 1/15/2022.
 */

import {LightningElement, api} from 'lwc';
import sum from './sum'
export default class UnitTest extends LightningElement {

    @api unitNumber = sum(2, 3);
}