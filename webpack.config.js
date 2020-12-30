var path = require("path");
var webpack = require("webpack");

var config = {
  context: path.resolve(__dirname, 'app', 'assets', 'javascript'),
  entry: {
    newPiece: [
      "./src/jquery-1.9.0.min.js",
      "./src/redactor/redactor.min.js"
    ],
    indexPieces: [
      './src/components/registration.jsx'
    ],
    indexvents: [
      './src/real_time_clock.js',
      './src/components/registration.jsx'
    ],
    editEvents: [
      './src/components/registration.jsx'
    ]
  },
  output: {
    path: path.resolve(__dirname, 'app', 'assets', 'javascript', 'bundle'),
    filename: '[name]-bundle.js'
  },
  module: {
    rules: [
        {
          test: /\.(jsx)$/,
          exclude: /node_modules/,
          use: {
            loader: 'babel-loader',
            options: {
              presets: ['@babel/preset-env']
            }
          }
        }
    ]
  }
};

module.exports = config;
