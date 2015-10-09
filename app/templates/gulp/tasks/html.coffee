gulp = require('gulp')
config = require('../config.json')
gutil = require('gulp-util')
errorHandler = require('../gulpErrorHandler')
connect = require('gulp-connect')
inject = require('gulp-inject')
bowerFiles = require('main-bower-files')
es = require('event-stream')

gulp.task 'html', ->
    gulp.src(config.html.index)
        .pipe(inject(gulp.src(bowerFiles({ paths: '.' }), {read: false}), {name: 'bower'}))
        .pipe(inject(es.merge(
            gulp.src('./public/css/*.css')
            gulp.src('./public/js/*.js')
        )))
        .pipe(gulp.dest('./public'))
