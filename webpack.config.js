const config = {
  entry: './src/javascript/application.js',
  output: {
    path: './public',
    filename: 'javascripts/bundle.js'
  },
  module: {
    rules: [
      {test: /\.js$/, use: 'babel-loader'}
    ]
  }
}

module.exports = config;
