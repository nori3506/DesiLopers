import React, { Component } from 'react';
import './App.css';
import axios from 'axios';
import ListsContainer from './components/ListsContainer';

class App extends Component {
  componentWillMount (){
    axios({
      method: 'GET',
      url: '/users',
    }).then(res => {
      alert("success!")
    });
  }
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Hello Hiplyst!</h1>
        </header>
        <ListsContainer />
      </div>
    );
  }
}

export default App;