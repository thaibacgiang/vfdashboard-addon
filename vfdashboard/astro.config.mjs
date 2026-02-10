import { defineConfig } from 'astro/config';

export default defineConfig({
  output: 'static',
  site: '/',        // chạy local
  base: '/vfdashboard/', // nếu dùng /local/vfdashboard
});
