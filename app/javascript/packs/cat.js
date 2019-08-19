import 'css/cat';


const importAll = (r) => r.keys().map(r)
importAll(require.context('../images/cats', false, /\.(png|jpe?g|svg)$/));
importAll(require.context('../images/icons', false, /\.(png|jpe?g|svg)$/));
