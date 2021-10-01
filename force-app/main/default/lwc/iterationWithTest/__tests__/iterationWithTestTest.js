/**
 * Created by Brooks Johnson on 10/1/2021.
 */

import {createElement} from 'lwc';
import iterationWithTest from 'c/iterationWithTest'

const EXPECTED = ['Brooks', 'Naida', 'Arijus', 'Aureja'];

describe('c-iteration-with-test suite', ()=>{
    beforeEach(() => {
        const element = createElement('c-iteration-with-test', {
            is:iterationWithTest
        });
        document.body.appendChild(element)
    })

    test('Check list length', () => {
        // eslint-disable-next-line @lwc/lwc/no-document-query
        const element = document.querySelector('c-iteration-with-test');
        //select the children LI of the foreachlist class
        const userDetails = element.shadowRoot.querySelectorAll('.forEachList>li')
        expect(userDetails.length).toBe(4)
    });
    test('display list in order', ()=>{
        // eslint-disable-next-line @lwc/lwc/no-document-query
        const element = document.querySelector('c-iteration-with-test');
        const userDetails = Array.from(element.shadowRoot.querySelectorAll('.forEachList>li'));
        const userList = userDetails.map(li => li.textContent);
        console.log(userList)
        expect(userList).toEqual(EXPECTED);
    });
    test('dislpay first and last text in list', ()=> {
        const element = document.querySelector('c-iteration-with-test');
        const firstElement = element.shadowRoot.querySelector('.iteratorList>:first-child>div:first-child');
        expect(firstElement.textContent).toBe('First')
        const lastElement = element.shadowRoot.querySelector('.iteratorList>:last-child>div:first-child');
        expect(lastElement.textContent).toBe('Aureja');
    })

})