import { Selector } from 'testcafe';

fixture `New Fixture`
    .page `www.google.com`;

test('New Test', async t => {
    await t
        .typeText(Selector('#tsf').find('[name="q"]'), 'tottus nataniel')
        .click(Selector('.sbl1').find('span').withText('tottus nataniel'))
        .click(Selector('a').withText('Sitio web'))
        .click(Selector('#recetas_7').nth(12).find('.producto'))
        .click(Selector('span').withText('HOME'))
        .click(Selector('button').withText('ALTA'))
        .click(Selector('div').withText('Alta').nth(25).find('img').nth(2))
        .expect(Selector('#hero').find('p').withText('125g azúcar rubia').textContent).contains(azúcar rubia);
});