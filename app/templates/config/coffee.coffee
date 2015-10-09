module.exports =
    options:
        bare: true
    default:
        expand: true
        flatten: false
        cwd: "app/coffee"
        src: ["**/*.coffee"]
        dest: "public/js"
        ext: ".js"
