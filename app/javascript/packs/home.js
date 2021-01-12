import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

import Home from '../containers/Home'

document.addEventListener('DOMContentLoaded', () => {
	const root = document.getElementById('jsHome')
	ReactDOM.render(<Home />, root)
})
