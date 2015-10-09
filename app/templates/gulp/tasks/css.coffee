gulp = require('gulp')
less = require('gulp-less')
path = require('path')
config = require('../config.json')
notify = require('gulp-notify')
errorHandler = require('../gulpErrorHandler')
connect = require('gulp-connect')

gulp.task 'css', ->
    gulp.src('./app/less/**/*.less')
        .pipe(less({
            paths: config.less.src
        }))
        .on 'error', errorHandler
        .pipe(gulp.dest('./public/css'))
        .pipe(connect.reload())
