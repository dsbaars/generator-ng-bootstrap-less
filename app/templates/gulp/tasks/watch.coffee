gulp     = require('gulp')
watchify = require 'watchify'
config   = require('../config.json')
connect = require('gulp-connect')

gulp.task 'reload', ->
    connect.reload()
    return

gulp.task 'watch', ->
    gulp.watch config.less.src, ['css']
    gulp.watch config.coffee.src, ['js']
