console.log("hi")

const importAll = (r) => r.keys().map(r)
importAll(require.context('../images/catPersonality', false, /\.(png|jpe?g|svg)$/));
