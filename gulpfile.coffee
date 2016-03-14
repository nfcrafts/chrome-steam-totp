gulp = require 'gulp'
coffee = require 'gulp-coffee'
sass = require 'gulp-sass'

gulp.task 'default', ->
	gulp.watch 'sass/*.sass', ['sass']
	gulp.watch 'coffee/**/*.coffee', ['coffee']

gulp.task 'coffee', ->
	gulp.src 'coffee/*.coffee'
	.pipe do coffee
	.pipe gulp.dest 'js'

gulp.task 'sass', ->
	gulp.src 'sass/*.sass'
	.pipe do sass
	.pipe gulp.dest 'css'

