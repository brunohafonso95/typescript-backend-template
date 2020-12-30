import express, { Request, Response } from 'express';

import { logger } from './shared';

const app = express();

app.get('/', (_req: Request, res: Response) => {
  res.json({ message: 'Hello World' });
});

app.listen(process.env.PORT, () => {
  logger.info(`Server listening`);
});
