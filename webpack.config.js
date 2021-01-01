var path = require("path");
var webpack = require("webpack");

var config = {
  context: path.resolve(__dirname, 'app', 'assets', 'javascript'),
  entry: {
    jquerySource: [
      "./src/jquery-1.9.0.min.js",
    ],
    redactor: [
      "./src/redactor/redactor.min.js"
    ],
    componentsRegistration: [
      './src/components/registration.jsx'
    ],
    realTimeClock: [
      './src/components/registration.jsx',
      './src/real_time_clock.js'
    ],
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
