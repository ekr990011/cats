import 'css/article'


const importAll = (r) => r.keys().map(r)
importAll(require.context('../images/warfare', false, /\.(png|jpe?g|svg)$/));
