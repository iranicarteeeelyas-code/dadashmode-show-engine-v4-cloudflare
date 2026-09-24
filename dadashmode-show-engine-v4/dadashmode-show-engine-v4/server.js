/* Entry for `npm start` / Google AI Studio / any Node host. No npm packages needed. Uses PORT env (default 8080). */
process.argv[2]=process.argv[2]||process.env.PORT||'8080';
await import('./tools/serve.mjs');
