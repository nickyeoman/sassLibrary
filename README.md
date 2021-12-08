# Nick Yeoman's sass Library

## Links

* [View on GitHub](https://github.com/nickyeoman/sassLibrary)
* [View on Composer's Packagist](https://packagist.org/packages/nickyeoman/sasslibrary)

## Philosophy

I like to keep my code clean, so the main goal of this project is the following:

* Keep a library of useful styles that can easily be called
* Don't load anything you don't use
* Don't load more than one style sheet
* Don't use more than one class and one id per element.

## Usage

The intended use is as follows:
```bash

# create directory schema
mkdir -p PROJECTNAME/sass PROJECTNAME/public/css
cd PROJECTNAME

# Get the library
composer require nickyeoman/sassLibrary

# Create an index page or include the css file in your template
cp vendor/nickyeoman/sasslibrary/html/sample.layout.html public/index.html

# Create a master sass file in the sass directory of your project.
touch sass/PROJECTNAME.sass
# import the libraries
echo '@import ../vendor/nickyeoman/sasslibrary/master.sass' > sass/PROJECTNAME.sass

# compile sass
sass sass/PROJECTNAME.sass public/css/main.css
```

Nothing should happen as you have to explicitly call on the library for it to render.
For example, in sass/PROJECTNAME.sass you will want to do:

```sass
html
  +htmldefaults
  +library
  +print
```

# Install SASS on Ubuntu

First you need npm:
```bash
sudo apt install npm
```

Then you need sass:
```bash
sudo npm install -g sass
```

See [SASS' website for more](https://sass-lang.com/install)
