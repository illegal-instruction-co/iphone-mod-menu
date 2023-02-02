import { useEffect, useState } from 'react'
import { useParams, useNavigate } from "react-router-dom"
import "./applications.css"

function capitalizeFirstLetter(string) {
    return string[0].toUpperCase() + string.slice(1);
}

function getRandomRgb() {
  var num = Math.round(0xffffff * Math.random());
  var r = num >> 16;
  var g = num >> 8 & 255;
  var b = num & 255;
  return 'rgba(' + r + ', ' + g + ', ' + b + ')';
}

function increase_brightness(color,percent){

    var ctx = document.createElement('canvas').getContext('2d');

    ctx.fillStyle = color;
    ctx.fillRect(0,0,1,1);

    var color = ctx.getImageData(0,0,1,1);
    var r = color.data[0] + Math.floor( percent / 100 * 255 );
    var g = color.data[1] + Math.floor( percent / 100 * 255 );
    var b = color.data[2] + Math.floor( percent / 100 * 255 );

    return 'rgb('+r+','+g+','+b+')';
}


const Applications = function() {

  let { icon, application } = useParams()
  let navigate = useNavigate()
  let [applications, setApplications] = useState([{name: "N/A", icon: "fa-gear"}])
  let [hideApplications, setHideApplications] = useState(false)

  const ApplicationsStyle = {
    position: 'absolute',
    zIndex: '4',
    top: '250px',
    left: '-10px',
    listStyle: 'none',
    width: '400px'
  }

  useEffect(() => {
    window.addEventListener("message", function(event) {

      if(event.data.hideApplications !== undefined && event.data.hideApplications !== null) {
        localStorage.setItem('hide-applications', event.data.hideApplications)
      }

      if(event.data.deleteAllApplications !== undefined && event.data.deleteAllApplications !== null) {
        localStorage.setItem('applications', JSON.stringify([]))
      }

      if(event.data.addApplications !== undefined && event.data.addApplications !== null) {
        for (var i = 0; i < event.data.addApplications.length; i++) {
          var color = getRandomRgb()
          var addApplications = [...JSON.parse(localStorage.getItem('applications')), {name: event.data.addApplications[i].name, icon: event.data.addApplications[i].icon, color: color, color2: increase_brightness(color, 40)} ]
          localStorage.setItem('applications', JSON.stringify(addApplications))
        }
      }

    })
  }, [])

  useEffect(() => {
    const interval = setInterval(() => {
      setHideApplications(localStorage.getItem('hide-applications'))
    }, 1)
    return () => clearInterval(interval);
  }, [])

  useEffect(() => {
    const interval = setInterval(() => {
      setApplications(JSON.parse(localStorage.getItem('applications')))
    }, 1)
    return () => clearInterval(interval);
  }, [])

  return (
    <div style={{display: hideApplications === 'true' ? 'none' : 'block'}}>
    <ul style={ApplicationsStyle}>
      {
        applications.map(function(item, i){
          return (
            <li key={i} style={{display: 'inline-block', marginRight: '20px'}} className="applications">
              <i className={`fa-solid ${item.icon} fa-3x`} style={{ backgroundImage: `linear-gradient(${item.color}, ${item.color2})`, padding: '10px', borderRadius: '5px', width: '64px', textAlign: 'center', color: item.color2, opacity: "0.8" }}></i>
              <p style = {{ marginTop:'3px', color: 'white', paddingLeft: '2px', paddingRight: '2px', borderRadius: '5px', width: '80px', textAlign: 'center', fontSize: '12px'}}> {capitalizeFirstLetter(item.name)} </p>
            </li>
          )
        })
      }
    </ul>
    </div>
  )
}

export default Applications
