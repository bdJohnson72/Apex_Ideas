import sum from '../sum'

describe('sum test suite', () => {
    it('Should calculate the correct sum', ()=> {
        const result = sum(1, 2);
        expect(result).toBe(3);
        expect(result).toBeGreaterThan(0);
        expect(result).toBeLessThan(10);
    })
})