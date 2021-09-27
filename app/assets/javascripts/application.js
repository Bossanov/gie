// CSS
//*= require mapbox-gl
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
mapboxgl.workerClass = require('worker-loader!mapbox-gl/dist/mapbox-gl-csp-worker').default;
document.addEventListener('turbolinks:load', () => {
  initMapbox();
})
