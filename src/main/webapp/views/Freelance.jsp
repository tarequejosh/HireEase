<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HireEase - Freelance Projects</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .bg-clr {
            background-color: #f1faee;
        }
        
        .page-header {
            background: linear-gradient(135deg, #f1faee 0%, #e0f3e6 100%);
            padding: 3rem 0;
            margin-bottom: 3rem;
        }
        
        .project-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0,0,0,0.05);
            transition: transform 0.3s ease;
            margin-bottom: 2rem;
            background: white;
        }
        
        .project-card:hover {
            transform: translateY(-5px);
        }
        
        .budget-badge {
            background-color: #633517;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.9rem;
        }
        
        .skill-tag {
            background-color: #e0f3e6;
            color: #633517;
            padding: 0.3rem 0.8rem;
            border-radius: 15px;
            margin: 0.2rem;
            display: inline-block;
            font-size: 0.85rem;
        }
        
        .duration-badge {
            color: #666;
            font-size: 0.9rem;
        }
        
        .apply-btn {
            background-color: #633517;
            border-color: #633517;
        }
        
        .apply-btn:hover {
            background-color: #4a2811;
            border-color: #4a2811;
        }
        
        .project-description {
            color: #666;
            margin: 1rem 0;
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
                    <li class="nav-item"><a class="nav-link active" href="freelance">Freelance</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header Section -->
    <div class="page-header">
        <div class="container">
            <h1 class="display-4 text-center fw-bold">Freelance Projects</h1>
            <p class="lead text-center text-muted">Find exciting opportunities and showcase your skills</p>
            <div class="text-center mt-4">
                <a href="addjob" class="btn btn-primary btn-lg px-4">Post a Project</a>
            </div>
        </div>
    </div>

    <!-- Projects Section -->
    <div class="container mb-5">
        <div class="row">
            <!-- Project 1 -->
            <div class="col-md-6 col-lg-4">
                <div class="project-card p-4">
                    <h3>E-commerce Website Development</h3>
                    <p class="project-description">Looking for a skilled developer to build a modern e-commerce website with payment integration and inventory management.</p>
                    <div class="mb-3">
                        <span class="skill-tag">React.js</span>
                        <span class="skill-tag">Node.js</span>
                        <span class="skill-tag">MongoDB</span>
                    </div>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="budget-badge">$2000-3000</span>
                        <span class="duration-badge"><i class="far fa-clock me-2"></i>2-3 months</span>
                    </div>
                    <button class="btn btn-primary apply-btn w-100" data-bs-toggle="modal" data-bs-target="#applyModal1">
                        Apply Now
                    </button>
                </div>
            </div>

            <!-- Apply Modal -->
            <div class="modal fade" id="applyModal1" tabindex="-1" aria-labelledby="applyModalLabel1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="applyModalLabel1">Apply for E-commerce Website Development</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p class="mb-3">To apply for this project, please contact:</p>
                            <div class="d-flex align-items-center mb-3">
                                <i class="fas fa-envelope me-2 text-primary"></i>
                                <a href="mailto:example1@example.com" class="text-decoration-none">example1@example.com</a>
                            </div>
                            <p class="small text-muted mb-0">Please include your portfolio and a brief introduction when applying.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <a href="mailto:example1@example.com" class="btn btn-primary">
                                <i class="fas fa-paper-plane me-2"></i>Send Email
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Project 2 -->
            <div class="col-md-6 col-lg-4">
                <div class="project-card p-4">
                    <h3>Mobile App UI/UX Design</h3>
                    <p class="project-description">Seeking a creative designer for a fitness tracking app. Need modern, intuitive interface with engaging user experience.</p>
                    <div class="mb-3">
                        <span class="skill-tag">Figma</span>
                        <span class="skill-tag">Adobe XD</span>
                        <span class="skill-tag">UI/UX</span>
                    </div>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="budget-badge">$1500-2000</span>
                        <span class="duration-badge"><i class="far fa-clock me-2"></i>1 month</span>
                    </div>
                    <button class="btn btn-primary apply-btn w-100" data-bs-toggle="modal" data-bs-target="#applyModal2">
                        Apply Now
                    </button>
                </div>
            </div>

            <!-- Apply Modal -->
            <div class="modal fade" id="applyModal2" tabindex="-1" aria-labelledby="applyModalLabel2" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="applyModalLabel2">Apply for Mobile App UI/UX Design</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p class="mb-3">To apply for this project, please contact:</p>
                            <div class="d-flex align-items-center mb-3">
                                <i class="fas fa-envelope me-2 text-primary"></i>
                                <a href="mailto:example2@example.com" class="text-decoration-none">example2@example.com</a>
                            </div>
                            <p class="small text-muted mb-0">Please include your portfolio and a brief introduction when applying.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <a href="mailto:example2@example.com" class="btn btn-primary">
                                <i class="fas fa-paper-plane me-2"></i>Send Email
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Project 3 -->
            <div class="col-md-6 col-lg-4">
                <div class="project-card p-4">
                    <h3>Content Management System</h3>
                    <p class="project-description">Need a custom CMS built with modern technologies. Must include user roles, content scheduling, and analytics.</p>
                    <div class="mb-3">
                        <span class="skill-tag">PHP</span>
                        <span class="skill-tag">MySQL</span>
                        <span class="skill-tag">Laravel</span>
                    </div>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="budget-badge">$3000-4000</span>
                        <span class="duration-badge"><i class="far fa-clock me-2"></i>3 months</span>
                    </div>
                    <button class="btn btn-primary apply-btn w-100" data-bs-toggle="modal" data-bs-target="#applyModal3">
                        Apply Now
                    </button>
                </div>
            </div>

            <!-- Apply Modal -->
            <div class="modal fade" id="applyModal3" tabindex="-1" aria-labelledby="applyModalLabel3" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="applyModalLabel3">Apply for Content Management System</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p class="mb-3">To apply for this project, please contact:</p>
                            <div class="d-flex align-items-center mb-3">
                                <i class="fas fa-envelope me-2 text-primary"></i>
                                <a href="mailto:example3@example.com" class="text-decoration-none">example3@example.com</a>
                            </div>
                            <p class="small text-muted mb-0">Please include your portfolio and a brief introduction when applying.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <a href="mailto:example3@example.com" class="btn btn-primary">
                                <i class="fas fa-paper-plane me-2"></i>Send Email
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Project 4 -->
            <div class="col-md-6 col-lg-4">
                <div class="project-card p-4">
                    <h3>AI Chat Integration</h3>
                    <p class="project-description">Looking for an AI expert to integrate chatbot functionality into existing customer service platform.</p>
                    <div class="mb-3">
                        <span class="skill-tag">Python</span>
                        <span class="skill-tag">NLP</span>
                        <span class="skill-tag">TensorFlow</span>
                    </div>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="budget-badge">$4000-5000</span>
                        <span class="duration-badge"><i class="far fa-clock me-2"></i>2 months</span>
                    </div>
                    <button class="btn btn-primary apply-btn w-100" data-bs-toggle="modal" data-bs-target="#applyModal4">
                        Apply Now
                    </button>
                </div>
            </div>

            <!-- Apply Modal -->
            <div class="modal fade" id="applyModal4" tabindex="-1" aria-labelledby="applyModalLabel4" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="applyModalLabel4">Apply for AI Chat Integration</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p class="mb-3">To apply for this project, please contact:</p>
                            <div class="d-flex align-items-center mb-3">
                                <i class="fas fa-envelope me-2 text-primary"></i>
                                <a href="mailto:example4@example.com" class="text-decoration-none">example4@example.com</a>
                            </div>
                            <p class="small text-muted mb-0">Please include your portfolio and a brief introduction when applying.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <a href="mailto:example4@example.com" class="btn btn-primary">
                                <i class="fas fa-paper-plane me-2"></i>Send Email
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Project 5 -->
            <div class="col-md-6 col-lg-4">
                <div class="project-card p-4">
                    <h3>Database Optimization</h3>
                    <p class="project-description">Need experienced DBA to optimize database performance and implement caching solutions.</p>
                    <div class="mb-3">
                        <span class="skill-tag">PostgreSQL</span>
                        <span class="skill-tag">Redis</span>
                        <span class="skill-tag">Performance Tuning</span>
                    </div>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="budget-badge">$2500-3500</span>
                        <span class="duration-badge"><i class="far fa-clock me-2"></i>1 month</span>
                    </div>
                    <button class="btn btn-primary apply-btn w-100" data-bs-toggle="modal" data-bs-target="#applyModal5">
                        Apply Now
                    </button>
                </div>
            </div>

            <!-- Apply Modal -->
            <div class="modal fade" id="applyModal5" tabindex="-1" aria-labelledby="applyModalLabel5" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="applyModalLabel5">Apply for Database Optimization</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p class="mb-3">To apply for this project, please contact:</p>
                            <div class="d-flex align-items-center mb-3">
                                <i class="fas fa-envelope me-2 text-primary"></i>
                                <a href="mailto:example5@example.com" class="text-decoration-none">example5@example.com</a>
                            </div>
                            <p class="small text-muted mb-0">Please include your portfolio and a brief introduction when applying.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <a href="mailto:example5@example.com" class="btn btn-primary">
                                <i class="fas fa-paper-plane me-2"></i>Send Email
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>