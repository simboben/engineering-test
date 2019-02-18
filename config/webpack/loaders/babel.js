module.exports = {
  test: /\.js(\.erb)?$/,
  exclude: /node_modules\/(?!query-string|decode-uri-component|strict-uri-encode)/,
  loader: 'babel-loader'
}
