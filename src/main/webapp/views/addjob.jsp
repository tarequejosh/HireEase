<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HireEase - Post a Job</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
	<style>
		.bg-clr {
			background-color: #f1faee;
		}
		
		.form-section {
			background: linear-gradient(135deg, #f1faee 0%, #e0f3e6 100%);
			padding: 2rem;
			border-radius: 15px;
			box-shadow: 0 0 20px rgba(0,0,0,0.05);
		}
		
		.form-floating > label {
			color: #666;
		}
		
		.form-control:focus {
			border-color: #633517;
			box-shadow: 0 0 0 0.25rem rgba(99, 53, 23, 0.25);
		}
		
		.btn-primary {
			background-color: #633517;
			border-color: #633517;
		}
		
		.btn-primary:hover {
			background-color: #4a2811;
			border-color: #4a2811;
		}
		
		.select2-container--default .select2-selection--multiple {
			border: 1px solid #ced4da;
			border-radius: 0.375rem;
			min-height: 58px;
			padding: 0.375rem 0.75rem;
		}
		
		.select2-container--default.select2-container--focus .select2-selection--multiple {
			border-color: #633517;
			box-shadow: 0 0 0 0.25rem rgba(99, 53, 23, 0.25);
		}
		
		.page-header {
			background: linear-gradient(135deg, #f1faee 0%, #e0f3e6 100%);
			padding: 3rem 0;
			margin-bottom: 3rem;
		}
		
		.form-check-input:checked {
			background-color: #633517;
			border-color: #633517;
		}
	</style>
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-clr">
		<div class="container">
			<a class="navbar-brand fs-1 fw-medium" href="#">HireEase</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
					<li class="nav-item"><a class="nav-link" href="freelance">Freelance</a></li>
					<li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header Section -->
	<div class="page-header">
		<div class="container">
			<h1 class="display-4 text-center fw-bold">Post a New Opportunity</h1>
			<p class="lead text-center text-muted">Create a job listing or freelance project</p>
		</div>
	</div>

	<!-- Main Form Section -->
	<div class="container mb-5">
		<div class="row justify-content-center">
			<div class="col-lg-8">
				<div class="form-section">
					<form action="insertjob" method="post" class="needs-validation" novalidate>
						<!-- Job Type Selection -->
						<div class="mb-4">
							<label class="form-label fw-bold">Opportunity Type</label>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="jobType" id="fullTime" value="fullTime" checked>
								<label class="form-check-label" for="fullTime">
									Full-time Position
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="jobType" id="freelance" value="freelance">
								<label class="form-check-label" for="freelance">
									Freelance Project
								</label>
							</div>
						</div>

						<!-- Common Fields -->
						<div class="form-floating mb-4">
							<input type="text" class="form-control" id="title" name="title" placeholder="Job Title" required>
							<label for="title">Title</label>
						</div>

						<div class="form-floating mb-4">
							<input type="text" class="form-control" id="company" name="company" placeholder="Company Name" required>
							<label for="company">Company/Client Name</label>
						</div>

						<div class="form-floating mb-4">
							<input type="email" class="form-control" id="email" name="email" placeholder="Contact Email" required>
							<label for="email">Contact Email</label>
						</div>

						<div class="form-floating mb-4">
							<textarea class="form-control" id="description" name="description" placeholder="Job Description" style="height: 150px" required></textarea>
							<label for="description">Description</label>
						</div>

						<div class="form-floating mb-4">
							<input type="text" class="form-control" id="location" name="location" placeholder="Location">
							<label for="location">Location</label>
						</div>

						<!-- Tech Stack Selection -->
						<div class="mb-4">
							<label class="form-label" for="techStack">Required Skills</label>
							<select class="form-control" id="techStack" name="techStack[]" multiple="multiple" required>
								<optgroup label="Programming Languages">
									<option value="Java">Java</option>
									<option value="Python">Python</option>
									<option value="JavaScript">JavaScript</option>
									<option value="C++">C++</option>
									<option value="Ruby">Ruby</option>
								</optgroup>
								<optgroup label="Web Technologies">
									<option value="HTML5">HTML5</option>
									<option value="CSS3">CSS3</option>
									<option value="React">React</option>
									<option value="Angular">Angular</option>
									<option value="Vue.js">Vue.js</option>
								</optgroup>
								<optgroup label="Database">
									<option value="MySQL">MySQL</option>
									<option value="MongoDB">MongoDB</option>
									<option value="PostgreSQL">PostgreSQL</option>
								</optgroup>
								<optgroup label="Cloud & DevOps">
									<option value="AWS">AWS</option>
									<option value="Docker">Docker</option>
									<option value="Kubernetes">Kubernetes</option>
								</optgroup>
							</select>
						</div>

						<!-- Full-time Specific Fields -->
						<div id="fullTimeFields">
							<div class="form-floating mb-4">
								<input type="text" class="form-control" id="salary" name="salary" placeholder="Salary Range">
								<label for="salary">Salary Range (e.g., $60,000 - $80,000)</label>
							</div>

							<div class="form-floating mb-4">
								<select class="form-select" id="experience" name="experience">
									<option value="Entry Level">Entry Level</option>
									<option value="Mid Level">Mid Level</option>
									<option value="Senior Level">Senior Level</option>
									<option value="Lead">Lead</option>
								</select>
								<label for="experience">Experience Level</label>
							</div>
						</div>

						<!-- Freelance Specific Fields -->
						<div id="freelanceFields" style="display: none;">
							<div class="form-floating mb-4">
								<input type="number" class="form-control" id="budgetMin" name="budgetMin" placeholder="Minimum Budget">
								<label for="budgetMin">Minimum Budget ($)</label>
							</div>

							<div class="form-floating mb-4">
								<input type="number" class="form-control" id="budgetMax" name="budgetMax" placeholder="Maximum Budget">
								<label for="budgetMax">Maximum Budget ($)</label>
							</div>

							<div class="form-floating mb-4">
								<input type="text" class="form-control" id="duration" name="duration" placeholder="Project Duration">
								<label for="duration">Project Duration (e.g., 2 weeks, 3 months)</label>
							</div>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg px-5">Post Opportunity</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
	
	<script>
		$(document).ready(function() {
			// Initialize Select2
			$('#techStack').select2({
				theme: "classic",
				placeholder: "Select required skills",
				allowClear: true
			});

			// Handle job type toggle
			$('input[name="jobType"]').change(function() {
				if ($(this).val() === 'freelance') {
					$('#freelanceFields').slideDown();
					$('#fullTimeFields').slideUp();
				} else {
					$('#freelanceFields').slideUp();
					$('#fullTimeFields').slideDown();
				}
			});

			// Form validation
			(function () {
				'use strict'
				var forms = document.querySelectorAll('.needs-validation')
				Array.prototype.slice.call(forms)
					.forEach(function (form) {
						form.addEventListener('submit', function (event) {
							if (!form.checkValidity()) {
								event.preventDefault()
								event.stopPropagation()
							}
							form.classList.add('was-validated')
						}, false)
					})
			})()
		});
	</script>
</body>
</html>