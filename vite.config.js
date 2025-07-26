import {fileURLToPath, URL} from "node:url";
import {defineConfig} from "vite";
import vue from "@vitejs/plugin-vue";
import vueDevTools from "vite-plugin-vue-devtools";

export default defineConfig({
  plugins: [vue(), vueDevTools()],
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", import.meta.url)),
    },
  },

  // ✅ 部署到 GitHub Pages 的正确写法
  base:
    process.env.NODE_ENV === "production"
      ? "/action_vue/" // 仓库名
      : "/",

  // ✅ 打包输出目录（vite 默认就是 dist，可省）
  build: {
    outDir: "dist",
  },
});
