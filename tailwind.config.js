/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/assets/stylesheets/**/*.sass',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        "button-color":"#B77878"
      }
    },
  },
  plugins: [require("daisyui")],
}

