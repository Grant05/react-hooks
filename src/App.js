import React from 'react'
import logo from './logo.svg'
import 'semantic-ui-css/semantic.min.css'
import './App.css'

const App = () => {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          React Hooks
        </p>
        <a
          className="App-link"
          href="https://reactjs.org/docs/hooks-intro.html"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn react hooks
        </a>
      </header>
    </div>
  )
}

export default App
