import { useEffect } from 'react'
import { ToastContainer, toast } from 'react-toastify'
import 'react-toastify/dist/ReactToastify.css'

const Notifications = function() {

  useEffect(() => {
    window.addEventListener("message", function(event) {

      if(event.data.notification !== undefined && event.data.notification !== null) {

        if (event.data.notification.type === "success") {
          toast.success(event.data.notification.text)
        }
        else if (event.data.notification.type === "warning") {
          toast.warn(event.data.notification.text)
        }
        else if (event.data.notification.type === "info") {
          toast.info(event.data.notification.text)
        }
        else if (event.data.notification.type === "error") {
          toast.error(event.data.notification.text)
        }
        else {
          toast(event.data.notification.text)
        }

      }

    })
  }, [])

  return (
    <ToastContainer closeButton={null} style={{width: '310px', zIndex: '10', marginTop: '25px', marginRight: '153px'}} autoClose={3000} />
  )
}

export default Notifications
