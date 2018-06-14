import React, { Fragment } from 'react'
import { login } from '../fakeAuth.js'

const Login = ( {history} ) => (
  <Fragment>
    <h3>Click Below to See Menu</h3>
    <button onClick={ () => {
      login()
      history.push('/dashboard')
    }}>
      Easy Access
    </button>
  </Fragment>
)

export default Login