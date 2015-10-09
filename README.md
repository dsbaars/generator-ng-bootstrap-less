# generator-ng-bootstrap-less [![Build Status](https://secure.travis-ci.org/dsbaars/generator-ng-bootstrap-less.png?branch=master)](https://travis-ci.org/dsbaars/generator-ng-bootstrap-less)

Creates a combination of Bootstrap + LESS + CoffeeScript how I like it, you might like it too :)

> [Yeoman](http://yeoman.io) generator


## Getting Started

### What is Yeoman?

Trick question. It's not a thing. It's this guy:

![](http://i.imgur.com/JHaAlBJ.png)

Basically, he wears a top hat, lives in your computer, and waits for you to tell him what kind of application you wish to create.

Not every new computer comes with a Yeoman pre-installed. He lives in the [npm](https://npmjs.org) package repository. You only have to ask for him once, then he packs up and moves into your hard drive. *Make sure you clean up, he likes new and shiny things.*

```bash
npm install -g yo
```

### Yeoman Generators

Yeoman travels light. He didn't pack any generators when he moved in. You can think of a generator like a plug-in. You get to choose what type of application you wish to create, such as a Backbone application or even a Chrome extension.

To install generator-ng-bootstrap-less from npm, run:

```bash
npm install -g generator-ng-bootstrap-less
```

Finally, initiate the generator:

```bash
yo ng-bootstrap-less
```

### gulp
If you want to use gulp instead of grunt, change the injector tags as below:

Just before `</head>`
```html
<!-- build:css /css/app.dist.css -->
<!-- bower:css -->
<!-- endinject -->
<!-- inject:css -->
<!-- endinject -->
<!-- endbuild -->
```

Just before `</body>`
```html
<!-- bower:js -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
```

## License

MIT
