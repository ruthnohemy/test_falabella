const {Given, When, Then} = require('cucumber');
const Selector = require('testcafe').Selector;


Given('Navegar en la url "http://www.google.com"', async function(){
    await testController.navigateTo('https://google.com');

});

When('buscar "Tottus Nataniel" en google', async function(text) {
    await testController.typeText(Selector('#tsf').find('[name="q"]'), 'tottus nataniel');
    await testController.click(Selector('.sbl1').find('span').withText('tottus nataniel'));
    await testController.click(Selector('a').withText('Sitio web'));
});

Then ('mostrar pagina Tottus Nataniel', async function (text) {
    await testController.pressKey(text);
});


When ('buscar "seccion recetas"', async function (text) {
    await testController.click(Selector('#recetas_7').nth(13).find('.producto'));

});

Then ('ver pagina recetas', async function (text){
    await testController.pressKey(text);

});

When ('seleccionar opcion dificultad "alta" y "rollitos de canela"', async function (text){
    await testController.click(Selector('span').withText('HOME'));
    await testController.click(Selector('button').withText('ALTA').find('img'));
    await testController.click(Selector('div').withText('Alta').nth(25).find('img').nth(2));
});

Then ('ver receta',async function (text) {
      await testController.pressKey(text);

});
When ('buscar si la receta contiene canela y azucar rubia', async function (text) {
    await testController.expect(Selector('#hero').find('p').withText('125g azúcar rubia').innerText).contains("azúcar rubia");
    await testController.expect(Selector('#hero').find('p').withText('15g canela en polvo').innerText).contains("canela");
        
});

Then ('encontrado', async function (text) {
    await testController.pressKey(text);
});