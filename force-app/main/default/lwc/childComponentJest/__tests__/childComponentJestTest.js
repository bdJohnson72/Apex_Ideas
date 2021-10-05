/**
 * Created by Brooks Johnson on 10/5/2021.
 */

import {createElement} from 'lwc';
import childElement from 'c/childComponentJest'

const USER_DATA = {'name': 'brooks', 'id': '1'}

describe('Tests for nested child component', () => {

    test('renders name based on public property', () => {
        const element = createElement('c-child-component-jest', {
            is: childElement
        })
        element.userDetails = USER_DATA;
        document.body.appendChild(element);
        //select the div where the data is displayed
        const divElement = element.shadowRoot.querySelector('.userInfo');
        expect(divElement.textContent).toBe(USER_DATA.name)
    })
    test('It should render error message', () => {
        const element = createElement('c-child-component-jest', {
            is:childElement
        });
        document.body.appendChild(element);
        const para = element.shadowRoot.querySelector('p');
        expect(para.textContent).toBe('No user data available')
    })
})
