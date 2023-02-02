import { useEffect, useState } from 'react'
import { useParams, useNavigate } from "react-router-dom"

const BackgroundStyle = {
  position: 'absolute',
  top: '18px',
  left: '17px',
  width: '313px',
  height: '665px',
  zIndex: '1'
}

const Background = function() {


  let { background } = useParams()
  let navigate = useNavigate()
  let [currentBackground, setCurrentBackground] = useState("")

  useEffect(() => {
    window.addEventListener("message", function(event) {

      if(event.data.changeBackground !== undefined && event.data.changeBackground !== null) {
        localStorage.setItem('background', event.data.changeBackground)
      }

    })
  }, [])

  useEffect(() => {
    const interval = setInterval(() => {
      setCurrentBackground(localStorage.getItem('background'))
    }, 1)
    return () => clearInterval(interval);
  }, [])

  return (
    <div>
      <img src={currentBackground} style={BackgroundStyle} />
    </div>
  )
}

export default Background
