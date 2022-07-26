const index = require("./index");

(async function(){


  const res = await index.handler({
    "url": "data:text/html;base64,PGgxPkhlbGxvIFdvcmxkPC9oMT4K"
  });

  console.log("Hello World");
  console.log(res);

})();
