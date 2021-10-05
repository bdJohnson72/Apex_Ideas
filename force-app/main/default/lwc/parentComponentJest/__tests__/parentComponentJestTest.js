/**
 * Created by Brooks Johnson on 10/4/2021.
 */

import {createElement} from 'lwc';
import parentComponentWithJest from 'c/parentComponentJest'

describe('c-parent-component-with-jest', ()=>{
    beforeEach(()=>{
	    const element = createElement('c-parent-component-jest', {
            is: parentComponentWithJest
        })
        document.body.appendChild(element);
    })
    test('render child component', ()=>{
	    const element = document.querySelector('c-parent-component-jest');
        const child = element.shadowRoot.querySelectorAll('c-child-component-jest')
        expect(child.length).toBe(1);
    })
    test('set user data property', ()=>{
        const element = document.querySelector('c-parent-component-jest');
        const child = element.shadowRoot.querySelector('c-child-component-jest');
        expect(child.userDetails.name).toBe('Brooks');
    })
})
