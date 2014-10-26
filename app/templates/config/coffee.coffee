module.exports =
    options:
        join: true
        bare: true
    default:
        expand: true
        flatten: false
        cwd: "app"
        src: ["**/*.coffee"]
        dest: "app/js"
        ext: ".js"
