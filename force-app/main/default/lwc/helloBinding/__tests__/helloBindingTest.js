/**
 * Created by Brooks Johnson on 9/28/2021.
 */

import {createElement} from 'lwc';
import EventTesting from 'c/helloBinding'

describe('Simple Event Testing', ()=> {
    //use before each to add element to dom before each test.
    beforeEach(() => {
        const element = createElement('c-hello-binding', {
            is:EventTesting
        })
        document.body.appendChild(element);
    })
    test('default greeting should be hello world', ()=>{
        //because const is block scoped the variable element declared in beforeEach() is not visible here.
        // eslint-disable-next-line @lwc/lwc/no-document-query
        const element = document.querySelector('c-hello-binding');
        const text = element.shadowRoot.querySelector('p');
        expect(text.textContent).toBe('Hello, World');
    });
    test('default greeting should not be empty', ()=>{
        // eslint-disable-next-line @lwc/lwc/no-document-query
       const element = document.querySelector('c-hello-binding');
        document.body.appendChild(element);
        const text = element.shadowRoot.querySelector('p')
        expect(text.textContent).not.toBe('');
    })
    //test for reactive component
    test('Default value changed by event', ()=> {
        // eslint-disable-next-line @lwc/lwc/no-document-query
        const element = document.querySelector('c-hello-binding');
        //get the ref to the input element
        const inputElement = element.shadowRoot.querySelector('lightning-input');
        inputElement.value = 'Salesforce';
        //use the same name that JS uses for events. In this case change
        inputElement.dispatchEvent(new CustomEvent('change'));
        //Dom updates asynchronously. We need to use a promise to test.
        const text = element.shadowRoot.querySelector('p');
        return Promise.resolve()
	    .then(() =>{
            expect(text.textContent).toBe('Hello, Salesforce');
      })
    })
})