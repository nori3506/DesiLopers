import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

import ProjectsContainer from '../containers/projects/ProjectsContainer'

document.addEventListener('DOMContentLoaded', () => {
	const root = document.getElementById('unko')
	ReactDOM.render(<ProjectsContainer />, root)
})

console.log('Hello World from Webpacker')
