/**
 * Created by Brooks Johnson on 1/15/2022.
 */

import {createElement} from 'lwc';
import UnitTest from 'c/unitTest';

describe('unit test test suite', ()=> {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while(document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });
    it('Should render with the default value', () => {
        const element = createElement('c-unit-test', { is: UnitTest});
        document.body.appendChild(element);
        const div = element.shadowRoot.querySelector('div');
        expect(div.textContent).toBe('Unit 5 Alive!');
    })
})