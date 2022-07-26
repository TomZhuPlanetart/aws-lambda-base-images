// const puppeteer = require("puppeteer-");
const chromium = require('chrome-aws-lambda');
const childProcess = require("child_process");

async function createPDFForUrl(url) {

    console.log("Creating PDF for URL: " + url);

    const viewport = chromium.defaultViewport;

    viewport.width = 800;
    viewport.height = 600;

    const browser = await chromium.puppeteer.launch({
        // defaultViewport: viewport,
        executablePath: await chromium.executablePath,
        headless: true,
        ignoreHTTPSErrors: true,
        args: [
            '--no-zygote',
            '--disable-gpu',
            '--no-sandbox',
            '--disable-setuid-sandbox',
            '--disable-dev-shm-usage',
            '--single-process'
        ]
    });

    const page = await browser.newPage();
    console.log("page.goto " + url);
    await page.goto(url);


    console.log("page.addStyleTag");
    await page.addStyleTag({
        content: '@page { margin: 2.5em }',
    });

    await page.evaluate('document.body.style.zoom = 1');

    console.log("page.pdf");
    const buffer = await page.pdf({
        format: 'Letter',
        printBackground: true,
    })

    console.log("buffer", buffer);

    await page.close();
    await browser.close();

    return buffer;
}

function run(cmd, args)
{
    return new Promise((resolve, reject) => {
        const child = childProcess.spawn(cmd, args);


        child.stderr.setEncoding("utf8");
        child.stdout.setEncoding("utf8");

        child.stdout.on("data", (data) => {
            console.log(data);
        });

        child.stderr.on("data", (data) => {
            console.log(data);
        });

        child.on("error", (err) => {
            console.log(err);
        });

        child.on("close", (code) => {
            console.log("code: ", code);
            resolve();
        });
    });
}

async function handler(event, context)
{
    const pdf = (await createPDFForUrl(event.url)).toString("base64")

    return {
        encoding: "base64",
        pdf: pdf
    };
}

exports.handler = handler;
