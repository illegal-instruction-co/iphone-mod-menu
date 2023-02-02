import * as ReactDOMClient from 'react-dom/client'
import App from './App.js'

const container = document.getElementById('root')

const root = ReactDOMClient.createRoot(container)
root.render(<App />);
