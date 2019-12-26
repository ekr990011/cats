import 'css/cat_personality';
import 'css/cat_personality_show';
import 'css/cat_personality_index';

const importAll = (r) => r.keys().map(r)
importAll(require.context('../images/catPersonality', false, /\.(png|jpe?g|svg)$/));
