import config from "./config";

import * as express from "express";
let app = express();

app.get("/", (req, res) => {
	res.send("Hello World!");
});

app.listen(config.port, () => {
	console.log(`Example app listening on port ${config.port}!`)
});
