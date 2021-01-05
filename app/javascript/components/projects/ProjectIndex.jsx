import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { render } from 'react-dom'

const ProjectIndex = ({ project }) => (
	<div className="project-container">
		<div className="project-image-area">
			<div className="image-content">
				<img src={project.company.main_image}/>
			</div>
			<div className="image-content">
				<img src={project.main_image} />
			</div>
		</div>
		<h3 className="project-element u-my25 project-header">
			<a href={`/company_detail/${project.company.id}`}>{project.title}</a>
		</h3>
		<div className="project-element u-mb10">
			<a href={`/company_detail/${project.company.id}`}>{project.detail}</a>
		</div>
		<h3 className="project-element u-mt40 u-left company-name">
			<a href={`/company_detail/${project.company.id}`}>{project.company.name}</a>
		</h3>
	</div>
)

export default ProjectIndex