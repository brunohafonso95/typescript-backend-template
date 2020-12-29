import express, { Request, Response } from 'express';

const app = express();

app.get('/', (_req: Request, res: Response) => {
    res.json({ message: 'Hello World' });
});

app.listen(process.env.PORT, () => {
    console.log({ INFO: `Server listening` });
});
