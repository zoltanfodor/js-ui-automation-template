'use strict';
require('chromedriver');
const {Before, After, setDefaultTimeout} = require("cucumber");
const {Builder} = require('selenium-webdriver');

setDefaultTimeout(30 * 1000);

Before(async () => {
    global.driver = new Builder()
        .forBrowser('chrome')
        .build();
    await driver.manage().window().maximize();
});

After(() => driver.quit());
