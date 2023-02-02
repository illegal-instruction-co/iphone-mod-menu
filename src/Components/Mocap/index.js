import { useEffect, useState } from 'react'
import Iphone13 from './iphone_13.png'

const MocapStyle = {
  width: '350px',
  height: '700px',
  position: 'absolute',
  top: '0px',
  left: '0px',
  zIndex: '11'
}

const Mocap = function() {

  return (
    <div>
      <img src={Iphone13} style={MocapStyle}/>
    </div>
  )
}

export default Mocap
