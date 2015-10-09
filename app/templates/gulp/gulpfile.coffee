gulp       = require 'gulp'
requireDir = require('require-dir')
tasks      = requireDir('./tasks')
notify     = require 'gulp-notify'

handleError = (err) ->
    gutil.log err
    gutil.beep()

gulp.task 'default', ['watch', 'css', 'js', 'html', 'server']
