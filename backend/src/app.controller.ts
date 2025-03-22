// backend/src/app.controller.ts
import { Controller, Get, Res } from '@nestjs/common';
import { Response } from 'express';
import * as path from 'path';
import * as fs from 'fs';

@Controller()
export class AppController {
  @Get()
  ping(@Res() res: Response): void {
    // Try different possible paths for index.html
    const possiblePaths = [
      path.join(__dirname, '../../public', 'index.html'),
      path.join(__dirname, '../public', 'index.html'),
      path.join(__dirname, '../../backend/public', 'index.html'),
      path.join(__dirname, '../../../public', 'index.html')
    ];
    
    // Find the first path that exists
    const existingPath = possiblePaths.find(p => fs.existsSync(p));
    
    if (existingPath) {
      res.sendFile(existingPath);
    } else {
      // If no file exists, send a simple response
      res.send(`
        <html>
          <head><title>Portfolio API</title></head>
          <body>
            <h1>Portfolio API</h1>
            <p>The API is running successfully!</p>
          </body>
        </html>
      `);
    }
  }
}