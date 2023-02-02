import { useEffect, useState, useRef } from 'react'
import Switch from 'react-ios-switch'
import "./content.css"

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}

function refFriendly(value) {
    return value == undefined ? '' : value.replace(/[^a-z0-9_]+/gi, '-').replace(/^-|-$/g, '').toLowerCase();
}

const isUpperCase = (string) => /^[A-Z]*$/.test(string)

const Content = function() {

  let ref = useRef(null)
  let inputRef = useRef([])

  let [contents, setContents] = useState([])
  let [contentTitle, setContentTitle] = useState("")
  let [buttonStyle, setButtonStyle] = useState([])

  useEffect(() => {
    if (contentTitle === localStorage.getItem('content-title')) {
      setContents(JSON.parse(localStorage.getItem('contents')))
    } else {
      localStorage.setItem('contents', JSON.stringify([]))
    }
  })

  useEffect(() => {
    const inputs = contents.filter((content) => {
      return content.type === "input"
    })
    inputRef.current = inputRef.current.slice(0, inputs.length);
  }, [contents])

  useEffect(() => {
    if (contentTitle !== localStorage.getItem('content-title')) {
      setContentTitle(localStorage.getItem('content-title'))
    }
  })

  useEffect(() => {
    window.addEventListener("message", function(event) {

      if(event.data.deleteAllContents !== undefined && event.data.deleteAllContents !== null) {
        if (event.data.deleteAllContents === true) {
          localStorage.setItem('contents', JSON.stringify([]))
          localStorage.setItem('content-title', "")
        }
      }

      if (event.data.type === "add-content") {
        if (!JSON.parse(localStorage.getItem('contents')).some(item => item.id === event.data.data.id)) {
          var addContent = [...JSON.parse(localStorage.getItem('contents')), { id: event.data.data.id, data: event.data.data } ]
          localStorage.setItem('contents', JSON.stringify(addContent))
        }
      }

      if(event.data.changeContentTitle !== undefined && event.data.changeContentTitle !== null) {
        localStorage.setItem('content-title', event.data.changeContentTitle)
      }

      if (event.data.type === "change-switch-checked") {
        var changeContent = JSON.parse(localStorage.getItem('contents'))
        for (var i = 0; i < changeContent.length; i++) {
          if ( changeContent[i].id === event.data.data.id ) {
            changeContent[i].data.checked = event.data.data.checked
            localStorage.setItem('contents', JSON.stringify(changeContent))
          }
        }
      }

      if(event.data.clickInput !== undefined && event.data.clickInput !== null) {
        if (event.data.focus) {
          inputRef.current[refFriendly(event.data.clickInput)].focus()
        } else {
          inputRef.current[refFriendly(event.data.clickInput)].blur()
        }
      }

      if(event.data.keyPressed !== undefined && event.data.keyPressed !== null) {
        if (event.data.keyPressed === 8) {
          inputRef.current[refFriendly(event.data.input)].value = inputRef.current[refFriendly(event.data.input)].value.slice(0, -1)
        }
        else if(event.data.keyPressed === 189) {
          inputRef.current[refFriendly(event.data.input)].value = inputRef.current[refFriendly(event.data.input)].value + "_".replace(/[^A-Za-z 0-9 \.,\?""!@#\$%\^&\*\(\)-_=\+;:<>\/\\\|\}\{\[\]`~]*/g, '')
        }
        else {
          if (isUpperCase(String.fromCharCode(event.data.keyPressed))) {
            inputRef.current[refFriendly(event.data.input)].value = inputRef.current[refFriendly(event.data.input)].value + String.fromCharCode(event.data.keyPressed).replace(/[^A-Za-z 0-9 \.,\?""!@#\$%\^&\*\(\)-_=\+;:<>\/\\\|\}\{\[\]`~]*/g, '')
          }
          if (event.data.value !== undefined && event.data.value !== null && event.data.value !== inputRef.current[refFriendly(event.data.input)].value) {
            inputRef.current[refFriendly(event.data.input)].value = event.data.value
          }
        }
      }

      if(event.data.setInput !== undefined && event.data.setInput !== null) {
        if (event.data.focus) {
          var changeContent = JSON.parse(localStorage.getItem('contents'))
          for (var i = 0; i < changeContent.length; i++) {
            if ( changeContent[i].id === event.data.setInput ) {
              changeContent[i].data.value = event.data.value
              localStorage.setItem('contents', JSON.stringify(changeContent))
            }
          }
        }
      }

      if(event.data.scrollUp !== undefined && event.data.scrollUp !== null) {
        scrollUp()
      }

      if(event.data.scrollDown !== undefined && event.data.scrollDown !== null) {
        scrollDown()
      }

    })
  }, [])

  const scrollUp = () => {
    ref.current.scrollBy(0 , -45)
  }

  const scrollDown = () => {
    ref.current.scrollBy(0 , 45)
  }

  const TitleStyle = {
    fontFamily: "'Open Sans', sans-serif",
    fontSize: "22px"
  }

  const ContainerStyle = {
    position: "absolute",
    zIndex: 5,
    left: "40px",
    top: "37px",
    color: "#1982FC"
  }

  const ContentsStyle = {
    zIndex: 5,
    position: 'relative',
    listStyle: 'none',
    left: '-45px',
    width: '290px',
    height: '570px',
    fontFamily: "'Open Sans', sans-serif",
    "overflow-y": 'hidden'
  }

  const ContentStyle = {
    borderBottom: '1px #1212 solid',
    height: '35px',
    fontSize: '18px',
    color: "black",
    paddingTop: '10px'
  }

  return (
    <div style={ContainerStyle} className="contents">
      <h1 style={TitleStyle}> { contentTitle } </h1>
      <ul style={ContentsStyle} ref={ref}>
        {
          contents.map(function(item, i){
            return item.data.parent.toUpperCase() === contentTitle.toUpperCase() ? (
              <li key={i} style={ContentStyle} >
                {
                  item.data.content_type === "input" || item.data.content_type === "category" || item.data.content_type === "image-button" ? null : <b>{capitalizeFirstLetter(item.id)}</b>
                }
                <div style={{float: item.data.content_type === "input" ? "left" : "right"}}>
                  { item.data.content_type === "switch" ? (
                    <Switch
                      checked={item.data.checked}
                    />
                  ): null}

                  { item.data.content_type === "button" ? (
                    <i class={`fa-solid ${item.data.icon}`} style={{marginRight: '10px', color: "#1982FC"}}></i>
                  ): null}

                  { item.data.content_type === "category" ? (
                    <font style={{marginRight: '100px'}}>{item.id.toUpperCase()}</font>
                  ): null}

                  { item.data.content_type === "image-button" ? (
                    <img src={item.data.image} style={{height: ContentStyle.height, width: "100%"}} />
                  ): null}

                  { item.data.content_type === "input" ? (
                    <input ref={input => inputRef.current[refFriendly(item.id)] = input} placeholder={item.data.id} style={{height: ContentStyle.height, width: "280px", marginTop: "-15px", border: "none", borderBottom: "2px solid #ddd"}}/>
                  ): null}

                </div>
              </li>
            ) : null
          })
        }
      </ul>
    </div>
  )
}

export default Content
