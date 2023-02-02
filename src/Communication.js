import { useEffect } from 'react'
import { useParams, useNavigate } from "react-router-dom"
import { Buffer } from "buffer"

function getRandomRgb() {
  var num = Math.round(0xffffff * Math.random());
  var r = num >> 16;
  var g = num >> 8 & 255;
  var b = num & 255;
  return 'rgb(' + r + ', ' + g + ', ' + b + ')';
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

const Communication = function() {

  let { commands } = useParams()
  let navigate = useNavigate()

  useEffect(() => {
    if (commands !== null && commands !== undefined && commands !== "") {

      try {

        var decodedCommands = Buffer.from(commands, 'base64').toString('utf8')

        let theCommands = JSON.parse(decodedCommands)

        if (theCommands.init !== undefined && theCommands.init !== null) {
          localStorage.clear()
        }

        if (theCommands.changeBackground !== undefined && theCommands.changeBackground !== null) {
          localStorage.setItem('background', theCommands.changeBackground)
          console.log(1)
        }

        if (theCommands.hideApplications !== undefined && theCommands.hideApplications !== null) {
          localStorage.setItem('hide-applications', theCommands.hideApplications)
          console.log(2)
        }

        if (theCommands.hideUserInfo !== undefined && theCommands.hideUserInfo !== null) {
          localStorage.setItem('hide-user-info', theCommands.hideUserInfo)
          console.log(3)
        }

        if (theCommands.deleteAllApplications !== undefined && theCommands.deleteAllApplications !== null) {
          localStorage.setItem('applications', JSON.stringify([]))
          console.log(4)
        }

        if (theCommands.setClientID !== undefined && theCommands.setClientID !== null) {
          localStorage.setItem('client', theCommands.setClientID)
          console.log(5)
        }

        if (theCommands.addApplications !== undefined && theCommands.addApplications !== null) {
          for (var i = 0; i < theCommands.addApplications.length; i++) {
            var color = getRandomRgb()
            var addApplications = [...JSON.parse(localStorage.getItem('applications')), {name: theCommands.addApplications[i].name, icon: theCommands.addApplications[i].icon, color: color, color2: increase_brightness(color, 40)} ]
            localStorage.setItem('applications', JSON.stringify(addApplications))
          }
          console.log(6)
        }

        if (theCommands.deleteAllContents !== undefined && theCommands.deleteAllContents !== null) {
          localStorage.setItem('contents', JSON.stringify([]))
          localStorage.setItem('content-title', "")
          console.log(7)
        }

        navigate("/")
      } catch {

      }
    }

  }, [])

  return (<div />)
}

export default Communication
