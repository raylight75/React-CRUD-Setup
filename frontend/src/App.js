import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Customers from './Customers';
import Users from './Users'

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="header">
          <a className="logo">CRUD Example</a>
          <div className="header-right">
            <a href="/customers">Customers</a>
            <a href="/users">Users</a>
          </div>
        </div>
        <img src={logo} className="App-logo" alt="logo" />
        <Router>
          <Switch>
            <Route path='/customers' component={Customers} />
            <Route path='/users' component={Users} />
          </Switch>
        </Router>
      </div>
    )
  }
}
export default App;