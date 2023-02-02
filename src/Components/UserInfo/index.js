import { useEffect, useState } from 'react'
import { useParams, useNavigate } from "react-router-dom"
import "./user-info.css"

const UserInfoStyle = {
  backgroundColor: 'rgba(255, 255, 255, 0.5)',
  width: '290px',
  position: 'absolute',
  top: '100px',
  left: '30px',
  paddingTop:'10px',
  paddingBottom:'10px',
  borderRadius: '10px',
  zIndex: '3'
}

const UserInfo = function() {

  let { client, hide } = useParams()
  let navigate = useNavigate()
  let [clientId, setClientId] = useState("N/A")
  let [version, setVersion] = useState("N/A")
  let [currentHide, setCurrentHide] = useState(false)

  useEffect(() => {
    window.addEventListener("message", function(event) {

      if(event.data.hideUserInfo !== undefined && event.data.hideUserInfo !== null) {
        localStorage.setItem('hide-user-info', event.data.hideUserInfo)
      }

      if(event.data.setClient !== undefined && event.data.setClient !== null) {
        localStorage.setItem('client', event.data.setClient)
      }

    })
  }, [])

  useEffect(() => {
    const interval = setInterval(() => {
      setClientId(localStorage.getItem('client'))
    }, 1)
    return () => clearInterval(interval);
  }, [])

  useEffect(() => {
    const interval = setInterval(() => {
      setCurrentHide(localStorage.getItem('hide-user-info'))
    }, 1)
    return () => clearInterval(interval);
  }, [])

  useEffect(() => {
    fetch('/config.json')
    .then(response => response.json())
    .then(data => setVersion(data.version))
  }, [])

  return (
    <div style={{display: currentHide === "true" ? 'none' : 'block'}}>
      <div className="user-info" style={UserInfoStyle}>
        <div style={{textAlign: "center", color: "red"}}>
          <span style={{padding: '10px', fontSize: '25px'}}> <b>Iphone Menu</b></span>
        </div>
        <hr />
        <span style={{padding: '10px', fontSize: '15px'}}> <b> Version: </b> {version}</span>
        <br />
        <span style={{padding: '10px', fontSize: '15px'}}> <b> Client ID:</b> {clientId}</span>
      </div>
    </div>
  )
}

export default UserInfo
