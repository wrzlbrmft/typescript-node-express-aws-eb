import config from "./config";

import * as express from "express";

const HTTP_OK = 200;

let app = express();

app.set("view engine", "jade");

app.get("/", (req, res) => {
	res.status(HTTP_OK);
	res.type("text/html");

	res.render("index", {
		title: "typescript-node-express",
		message: "Hello World!"
	});

	res.end();
});

app.listen(config.port, () => {
	console.log(`Listening on port ${config.port}...`)
});
