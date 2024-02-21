import express from 'express';
import { handler } from './build/handler.js';

const app = express();

app.use(handler);

app.listen(80, () => {
	console.log('ready on port 80');
});
