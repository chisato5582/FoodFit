/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: "media",
  content: [
    './app/views/**/*.html.erb',
    './app/views/**/_*.html.erb',
    './app/views/**/*_*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/assets/stylesheets/**/*.sass',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        "button-color":"#B77878",
        "hover-color":"#B46161",
        "button-font":"#F9EFEF",
        "footer-color":"#897670",
        "text-color":"6c6363",
        "header-color":"#87AE8D",
        "flash-color":"#EDEBDD",
        "font-color":"#9E616A",
        "admin-bg":"#C0B4B0",
        "question-title":"#F2F2F2",
        "question-titlebg":"#6C6363",
        "top-exbg":"#DC9797",
        "top-font":"#9D2932",
        "failure-color":"#007042",
        "success-color":"#d66565"
      },
      fontFamily: {
        "HiraMinProN-W6": ["HiraMinProN-W6"]
      }
    },
  },
  plugins: [require("daisyui")],
}

