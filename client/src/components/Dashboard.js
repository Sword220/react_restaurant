import React from 'react'
import {Redirect} from 'react-router-dom'
import {isAuthenticated} from '../fakeAuth'

const Dashboard = () => {
  if (isAuthenticated()) {
    return <h3>Welcome!</h3> 
    } else {
      return <Redirect to="/login" />
    }
}

export default Dashboard
  