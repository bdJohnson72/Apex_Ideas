/**
 * Created by Brooks Johnson on 9/28/2021.
 */

import {createElement} from "lwc";
import myFirstTest from 'c/myFirstTest'

describe('c-my-first-test test suite', () => {
    test('display first greeting', () => {
        const element = createElement('c-my-first-test', {
            is: myFirstTest
        })
        document.body.appendChild(element);
        const firstDiv = element.shadowRoot.querySelector('div.first');
        expect(firstDiv.textContent).toBe('hello, world')
    })
    test('display second greeting', () => {
        const element = createElement('c-my-first-test', {
            is: myFirstTest
        })
        document.body.appendChild(element);
        const firstDiv = element.shadowRoot.querySelector('div.second');
        expect(firstDiv.textContent).toBe('2nd greeting, world')
    })
})

