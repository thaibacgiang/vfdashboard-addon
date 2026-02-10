#!/usr/bin/with-contenv bash
set -e

echo "▶ Building VFDashboard..."
npm install
npm run build

echo "▶ Starting VFDashboard..."
npx serve dist -l 8080
