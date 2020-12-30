import { ILoggerConfig } from '../interfaces';

export default {
  level: process.env.LOGGER_LEVEL,
  enabled: !!process.env.LOGGER_ENABLED,
  prettyPrint: !!process.env.LOGGER_PRINT_PRETTY,
} as ILoggerConfig;
