# ensuring the dist folder exists, and creating it if it doesn't exist
# might throw in an error if the dist folder already exists
mkdir ../dist

# compiling the scss file
sass ../scss/style.scss:../dist/bottle.css
sass ../scss/style.scss:../dist/bottle.min.css --style compressed

# compiling the js file to the dist folder
Copy-Item '../js/script.js' '../dist/bottle.js'
uglifyjs ../js/script.js > ../dist/bottle.min.js

# Removing the scss mapping files
Remove-Item '../dist/bottle.min.css.map'
Remove-Item '../dist/bottle.css.map'