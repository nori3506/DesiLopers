import React from 'react'
import axios from 'axios'
import Description from '../components/home/Description'
import Login from '../components/home/Login'
import ProjectIndex from '../components/projects/ProjectIndex'

class Home extends React.Component {
	constructor(props) {
		super(props)
		this.state = {
			projects: []
		}
	}
	componentDidMount() {
		this.loadProjectsFromServer()
	}

	loadProjectsFromServer() {
		axios
			.get('/api/v1/projects')
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

		return (
			<div class="container">
				<div class="main home-grid">
					<Description />
					<Login />
					<div className="project-main-container">
						{projectsList}
					</div>
				</div>
			</div>
		)
	}
}

export default Home