import React from 'react'
import axios from 'axios'
import ProjectIndex from '../../containers/projects/ProjectsContainer'
class ProjectsContainer extends React.Component {
	constructor(props) {
		super(props)
		this.state = {
			projects: []
		}
	}
	componentDidMount() {
		alert("")
		this.loadProjectsFromServer()
	}

	loadProjectsFromServer() {
		alert("kita")
		axios
			.get('projects.json')
			.then(response => {
				const { projects } = response.data
				this.setState({ projects })
			})
			.catch(error => console.log(error.response.data))
	}

	render() {
		const { projects } = this.state
		const projectsList = projects.map(
			project => <ProjectIndex key={project.id} project={project} />
		)

		console.log(this.state)

		return (
			<div className="">{ projectsList }</div>
		)				
	}
}

export default ProjectsContainer