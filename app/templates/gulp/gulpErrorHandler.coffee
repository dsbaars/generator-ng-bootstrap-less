notify = require('gulp-notify')

module.exports = (err) ->
    notify.onError({
        title:    "Gulp"
        subtitle: "Failure!"
        message:  "Error: <%= error.message %>"
        sound:    "Beep"
        })(err)
    @emit('end')
    return
