util = require("util")
path = require("path")
yeoman = require("yeoman-generator")
yosay = require("yosay")
NgBootstrapLessGenerator = yeoman.generators.Base.extend(
    initializing: ->
        @pkg = require("../package.json")
        return

    prompting: ->
        done = @async()

        # Have Yeoman greet the user.
        @log yosay("Welcome to the good NgBootstrapLess generator!")
        prompts = [
            type: "confirm"
            name: "someOption"
            message: "Would you like to enable this option?"
            default: true
        ]
        @prompt prompts, ((props) ->
            @someOption = props.someOption
            done()
            return
        ).bind(this)
        return

    writing:
        app: ->
            @dest.mkdir "app"
            @dest.mkdir "app/templates"
            @src.copy "_package.json", "package.json"
            @src.copy "_bower.json", "bower.json"
            @src.copy "gitignore", ".gitignore"
            return

        grunt: ->
            @dest.mkdir "config"
            @src.copy "grunt/clean.coffee", "grunt/clean.coffee"

        projectfiles: ->
            @src.copy "editorconfig", ".editorconfig"
            @src.copy "jshintrc", ".jshintrc"
            @src.copy "coffeelint.json", "coffeelint.json"
            return

    end: ->
        @installDependencies()
        return
)
module.exports = NgBootstrapLessGenerator
