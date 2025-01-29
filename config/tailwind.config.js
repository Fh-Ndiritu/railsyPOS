const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    "./config/initializers/*.rb",
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './app/assets/stylesheets/**/*.css', // Tailwind CSS files
    './app/components/**/*.erb', // ViewComponent templates
    './app/components/**/*.rb',  // ViewComponent classes
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'text-tertiary': '#FAC1D9',
        'bg-tertiary': '#FAC1D9',
      }
    },
  },
  plugins: [
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),
  ]
}
