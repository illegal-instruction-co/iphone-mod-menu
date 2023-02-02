import { useEffect } from 'react'

import {
  BrowserRouter as Router,
  Routes,
  Route
} from "react-router-dom"

// Components
import Mocap from './Components/Mocap'
import Background from './Components/Background'
import UserInfo from './Components/UserInfo'
import Applications from './Components/Applications'
import Content from './Components/Content'
import Notifications from './Components/Notifications'

import "./app.css"

function App() {

  useEffect(() => {
    localStorage.clear()
  }, [])

  useEffect(() => {
    if (localStorage.getItem('contents') === undefined || localStorage.getItem('contents') === null || localStorage.getItem('contents') === "") {
      localStorage.setItem('contents', JSON.stringify([]))
    }
  }, [])

  useEffect(() => {
    if (localStorage.getItem('applications') === undefined || localStorage.getItem('applications') === null || localStorage.getItem('applications') === "") {
      localStorage.setItem('applications', JSON.stringify([]))
    }
  }, [])

  useEffect(() => {
    if (localStorage.getItem('background') === undefined || localStorage.getItem('background') === null || localStorage.getItem('background') === "") {
      localStorage.setItem('background', "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
    }
  }, [])

  useEffect(() => {
    if (localStorage.getItem('client') === undefined || localStorage.getItem('client') === null || localStorage.getItem('client') === "") {
      localStorage.setItem('client', "N/A")
    }
  }, [])

  useEffect(() => {
    if (localStorage.getItem('content-title') === undefined || localStorage.getItem('content-title') === null || localStorage.getItem('content-title') === "") {
      localStorage.setItem('content-title', "")
    }
  }, [])

  return (
    <Router className="App">
      <Mocap />
      <Background/>
      <UserInfo />
      <Applications />
      <Content />
      <Notifications />
    </Router>
  );
}

export default App;
