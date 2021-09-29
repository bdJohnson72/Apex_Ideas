/**
 * Created by Brooks Johnson on 9/29/2021.
 */

import {createElement} from 'lwc';
import conditionalRenderingRecipe from 'c/conditionalRenderingRecipe'

describe('c-conditional-rendering-recipe suite', () => {
    beforeEach(() => {
        const element = createElement('c-conditional-rendering-recipe', {
            is: conditionalRenderingRecipe
        })
        //append to dom
        document.body.appendChild(element);
    })
    test('It should not show the secret', () => {
        // eslint-disable-next-line @lwc/lwc/no-document-query
        const element = document.querySelector('c-conditional-rendering-recipe');
        const secret = element.shadowRoot.querySelector('.userInfo');
        expect(secret.textContent).toBe('***********');
    });
    test('It should show the secret', () => {
        const element = document.querySelector('c-conditional-rendering-recipe');
        //get the checkbox
        const input = element.shadowRoot.querySelector('lightning-input');
        input.checked = true;
        //dispatch the event
        input.dispatchEvent(new CustomEvent('change'));
        //async rendering
        return Promise.resolve().then(() => {
            const secretElement = element.shadowRoot.querySelector('.userInfo');
            expect(secretElement.textContent).toBe('The secret message');
        })
    })
})
