<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.telusko.JobApp.model.JobPost" %>
<%@ page import="com.telusko.JobApp.repo.JobRepo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HireEase - Available Jobs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        .bg-clr {
            background-color: #f1faee;
        }
        .job-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: transform 0.2s ease;
        }
        .job-card:hover {
            transform: translateY(-5px);
        }
        .tech-stack-item {
            background-color: #e9ecef;
            border-radius: 15px;
            padding: 4px 12px;
            margin: 2px;
            display: inline-block;
            font-size: 0.85rem;
        }
    </style>
</head>
<body class="bg-light">
    <nav class="navbar navbar-expand-lg navbar-light bg-clr">
        <div class="container">
            <a class="navbar-brand fs-1 fw-medium" href="#">HireEase</a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                    <li class="nav-item"><a class="nav-link active" href="viewalljobs">All Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="freelance">Freelance</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h2 class="mb-4 text-center fw-bold">Available Job Opportunities</h2>

        <div class="row row-cols-1 row-cols-md-2 g-4">
            <ab:forEach var="jobPost" items="${jobPosts}">
                <div class="col">
                    <div class="card job-card h-100">
                        <div class="card-body">
                            <h5 class="card-title fw-bold text-primary">${jobPost.postProfile}</h5>
                            <p class="card-text text-muted small">
                                <strong>Job ID:</strong> ${jobPost.postId}
                            </p>
                            <p class="card-text mt-3">
                                <strong>Description:</strong><br>
                                ${jobPost.postDesc}
                            </p>
                            <p class="card-text">
                                <strong>Experience Required:</strong>
                                ${jobPost.reqExperience} years
                            </p>
                            <div class="mt-3">
                                <strong>Technical Skills:</strong>
                                <div class="mt-2">
                                    <ab:forEach var="tech" items="${jobPost.postTechStack}">
                                        <span class="tech-stack-item">${tech}</span>
                                    </ab:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer bg-transparent border-0 text-end">
                            <div class="d-flex justify-content-between align-items-center">
                                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#applyModal${jobPost.postId}">
                                    Apply Now
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Apply Modal -->
                    <div class="modal fade" id="applyModal${jobPost.postId}" tabindex="-1" aria-labelledby="applyModalLabel${jobPost.postId}" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="applyModalLabel${jobPost.postId}">Apply for ${jobPost.postProfile}</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <p class="mb-3">To apply for this position, please contact:</p>
                                    <div class="d-flex align-items-center mb-3">
                                        <i class="fas fa-envelope me-2 text-primary"></i>
                                        <a href="mailto:${jobPost.email}" class="text-decoration-none">${jobPost.email}</a>
                                    </div>
                                    <p class="small text-muted mb-0">Please include your resume and a brief introduction when applying.</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <a href="mailto:${jobPost.email}" class="btn btn-primary">
                                        <i class="fas fa-paper-plane me-2"></i>Send Email
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ab:forEach>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</body>
</html>
