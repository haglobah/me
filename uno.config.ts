import {
  defineConfig,
  presetWind
 } from "unocss"

export default defineConfig({
  cli: {
    entry: [
      {
        patterns: [ "*.html", "*.js"],
        outFile: "uno.css"
      }
    ], // CliEntryItem | CliEntryItem[]
  },
  presets: [
    presetWind(),
  ],
})