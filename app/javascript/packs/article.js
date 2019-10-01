import 'css/article'


const importAll = (r) => r.keys().map(r)
importAll(require.context('../images/warfare', false, /\.(png|jpe?g|svg)$/));
importAll(require.context('../images/articles/CatReturnHome', false, /\.(png|jpe?g|svg)$/));
importAll(require.context('../images/icons', false, /\.(png|jpe?g|svg)$/));
