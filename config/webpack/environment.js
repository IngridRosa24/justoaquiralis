const { environment } = require('@rails/webpacker')

//PARA HACER QUE jQuery y Popper ESTEN DISPONIBLES PARA TODAS LAS LIBRERÍAS
const webpack = require('webpack')

environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))

module.exports = environment
