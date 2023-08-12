/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/views/**/_*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/assets/stylesheets/**/*.sass',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        "button-color":"#B77878",
        "footer-color":"#897670",
        "text-color":"6c6363",
        "header-color":"#87AE8D"
      }
    },
  },
  plugins: [require("daisyui")],
}

