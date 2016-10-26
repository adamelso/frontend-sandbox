var gulp        = require('gulp');
var browserify  = require('browserify');
var concat      = require('gulp-concat');
var source      = require('vinyl-source-stream');

gulp.task('scripts', function () {

    var bundle = browserify({
        entries:    ['./src/index.coffee'],
        extensions: ['.coffee']
    });

    return bundle
        .transform('coffeeify')
        .bundle()

        .pipe(source('bundle.js'))
        .pipe(gulp.dest('./build/'));
});

gulp.task('default', ['scripts'], function () {

});
