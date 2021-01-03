import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { render } from 'react-dom'
import Project from './Project'

const ProjectIndex = ({ project }) => (
	<div className="project-container">
		<h3 className="project-element u-my25 project-header">
			<a href="">{ project.title }</a>
		</h3>
	</div>
)

export default ProjectIndex