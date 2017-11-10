const { environment } = require('@rails/webpacker')

environment.loaders.set('coffee', {
    test: /\.coffee(\.erb)?$/,
    use: ['babel-loader', 'coffee-loader']
})

module.exports = environment
