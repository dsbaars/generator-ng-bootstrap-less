util = require("util")
path = require("path")
glob = require("glob")
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
            type: "input"
            name: 'pkgName',
            message: "Your project name"
            default : @appname
        ]
        @prompt prompts, ((props) =>

            @pkgName = props.pkgName

            done()
            return
        ).bind(this)

        ###
        # @todo Add prompt for grunt/gulp
        ###

        return

    writing:
        app: ->
            @dest.mkdir "app"
            @dest.mkdir "app/less"
            @dest.mkdir "app/coffee"
            @src.copy "app/coffee/app.coffee", "app/coffee/app.coffee"
            @src.copy "app/less/app.less", "app/less/app.less"
            @src.copy "app/less/variables.less", "app/less/variables.less"

            @template "_package.json", "package.json"
            @template "_bower.json", "bower.json"
            @src.copy "gitignore", ".gitignore"
            return

        grunt: ->
            @src.copy "Gruntfile.coffee", "Gruntfile.coffee"

            @directory "config", "config"
            return

        gulp: ->
            @src.copy "gulpfile.js", "gulpfile.js"
            @directory "gulp", "gulp"
            return

        public: ->
            @dest.mkdir "public"
            @src.copy "public/index.html", "public/index.html"


        projectfiles: ->
            @src.copy "editorconfig", ".editorconfig"
            @src.copy "jshintrc", ".jshintrc"
            @src.copy "coffeelint.json", "coffeelint.json"
            return

    end: ->
        @installDependencies({
            callback: =>
                @spawnCommand('grunt', [])
                return
            })
        return
)
module.exports = NgBootstrapLessGenerator
