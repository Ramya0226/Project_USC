import './App.css';
import React, { createRef } from 'react';
import * as ReactDOM from 'react-dom';
import {Map} from '@esri/react-arcgis';
import {Scene} from '@esri/react-arcgis';
import {WebMap,WebScene} from '@esri/react-arcgis';
import Campus from './Campus'; 

// function App(){
//   return ReactDOM.render(
//     <WebMap id="5a62545f10a544ff8085883cd9e055fa" /> ,
//     document.getElementById('container')
//   );
// }


  // like we started out with
  // INSTEAD of 'export default App;'
  export default (props) => (
      <Scene style={{ width: '90vw', height: '90vh' }}
          //mapProperties={{ basemap: 'satellite' }}
          viewProperties={{
              center: [-118.28538,34.0205],
              zoom: 15
          }}>
          <Campus />
      </Scene>
  )


// export default App;
