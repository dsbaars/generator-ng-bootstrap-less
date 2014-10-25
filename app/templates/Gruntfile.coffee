'use strict'

module.exports = (grunt,options) ->
    configs = require('load-grunt-configs')(grunt)
    grunt.initConfig(configs)

    require('load-grunt-tasks')(grunt)

    grunt.registerTask('default', [
        'useminPrepare',
        'concat:generated',
        'cssmin:generated',
        'uglify:generated',
        'filerev',
        'usemin'
    ])
