gulp = require('gulp')
coffee = require('gulp-coffee')
config = require('../config.json')
gutil = require('gulp-util')
errorHandler = require('../gulpErrorHandler')
connect = require('gulp-connect')

gulp.task 'js', ->
    gulp.src('./app/coffee/**/*.coffee')
        .pipe(coffee({
            bare: true
        })).on('error', errorHandler)
        .pipe(gulp.dest('./public/js'))
        .pipe(connect.reload())
