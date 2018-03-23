var path = require('path');

module.export ={
  entry: "./entry.jsx",
  output:{
    filename: 'bundle.js'
  },

  module: {
   loaders: [
     {
       test: [/\.jsx?$/, /\.js?$/],
       exclude: /(node_modules)/,
       loader: 'babel-loader',
       query: {
         presets: ['env', 'react']
       }
     }
   ]
 },

  devtool: 'source-map',
  resolve: {
     extensions: [".js", ".jsx", "*"]
   }
};
