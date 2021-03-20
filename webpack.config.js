var path = require("path");
var webpack = require("webpack");

var config = {
  context: path.resolve(__dirname, 'app', 'assets', 'javascript'),
  entry: {
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
