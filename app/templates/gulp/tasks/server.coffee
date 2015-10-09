gulp          = require('gulp')
config        = require('../config.json')
connect       = require('gulp-connect')
rewriteModule = require('http-rewrite-middleware')

gulp.task 'server', ->
    connect.server({
        root: config.server.root
        livereload: config.server.livereload
        port: config.server.port
        middleware: (connect, options) ->
            middlewares = []

            middlewares.push connect().use( '/bower_components', connect.static('./bower_components') )

            middlewares.push rewriteModule.getMiddleware([
                from: "(^((?!javascripts|stylesheets|img|fonts|css|js$).)*$)"
                to: "/index.html#$1"
            ])

            options.root = [options.root]  unless Array.isArray(options.root)

            directory = options.directory or options.root[options.root.length - 1]
            options.root.forEach (base) ->
                middlewares.push connect.static(base)
                return

            connect().use(
                '/bower_components',
                connect.static('./bower_components')
            )

            return middlewares
    })
    return
