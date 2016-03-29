# typescript-node-express-aws-eb

A minimal Node.js/Express app written in TypeScript running on
[AWS Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk/).

**NOTE:** If you don't want to deploy the app to AWS Elastic Beanstalk, see
[typescript-node-express](https://github.com/wrzlbrmft/typescript-node-express).

## Quickstart

Install with

```
npm install
```

and run with

```
npm start
```

Then open your browser and load `http://localhost:8080/`.

To get rid of generated files, run

```
npm run clean
```

## Deploy to AWS Elastic Beanstalk

To create a zip file of the app to be deployed to
[AWS Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk/), run

```
./zip4aws-eb-node.sh
```

The zip file will be named `typescript-node-express-aws-eb-<version>.zip`, with
_<version>_ set to the `version` setting as of `package.json`.

Upload and deploy the zip file to an AWS Beanstalk Node.js environment.

## License

This software is distributed under the terms of the
[GNU General Public License v3](https://www.gnu.org/licenses/gpl-3.0.en.html).
