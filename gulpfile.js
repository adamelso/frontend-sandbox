var gulp        = require('gulp');
var coffeeify   = require('coffeeify');
var browserify  = require('browserify');
var source      = require('vinyl-source-stream');
var handlebars  = require('browserify-handlebars');

gulp.task('scripts', function () {

    var bundle = browserify({
        entries:    ['./src/index.coffee'],
        extensions: ['.coffee', '.hbs']
    });

    return bundle
        .transform(coffeeify)
        .transform(handlebars)
        .bundle()

        .pipe(source('bundle.js'))
        .pipe(gulp.dest('./build/'));
});

gulp.task('default', ['scripts'], function () {

});
