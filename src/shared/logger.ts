import pino from 'pino';

import { loggerConfig } from '../config';

export default pino({
  ...loggerConfig,
});
