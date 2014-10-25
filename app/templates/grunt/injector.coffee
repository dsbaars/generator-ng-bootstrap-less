module.exports = (grunt) ->
    options:
        ignorePath: []
    default:
        files:
            'public/index.html': [
                'bower.json'
            ]
