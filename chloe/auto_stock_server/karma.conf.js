// Karma configuration
// Generated on Sun Mar 12 2017 10:23:17 GMT+0000 (UTC)

module.exports = function(config) {
  config.set({
    // base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: './',

    // frameworks to use
    // available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['chai', 'mocha', 'browserify'],

    // start these browsers
    // available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: ['Chrome'],

    browserify: {
      debug: true,
    },

    // How long will Karma wait for a message from a browser before disconnecting from it (in ms).
    browserNoActivityTimeout: 30000,

    // list of files / patterns to load in the browser
    files: [
      './test/javascripts/*.js',
      './test/templates/*.js'
    ],

    plugins: [
      'karma-chai',
      'karma-mocha',
      'karma-browserify',
      'karma-mocha-reporter',
      'karma-chrome-launcher'
    ],

    preprocessors: {
      './test/javascripts/*.js': ['browserify'],
      './test/*.js': ['browserify']
    },

    // test results reporter to use
    // possible values: 'dots', 'progress'
    // available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['mocha'],

    // web server port
    port: 9876,

    // enable / disable colors in the output (reporters and logs)
    colors: true,

    // level of logging
    // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,

    // enable / disable watching file and executing tests whenever any file changes
    autoWatch: false,

    // Continuous Integration mode
    // if true, Karma captures browsers, runs the tests and exits
    singleRun: true,

    // Concurrency level
    // how many browser should be started simultaneous
    concurrency: Infinity
  })
}
