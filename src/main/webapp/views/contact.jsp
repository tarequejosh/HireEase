<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HireEase - Contact Us</title>
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
        
        .team-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0,0,0,0.05);
            transition: transform 0.3s ease;
            margin-bottom: 2rem;
            background: white;
        }
        
        .team-card:hover {
            transform: translateY(-5px);
        }
        
        .team-member-img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin: 1rem auto;
        }
        
        .social-links a {
            color: #633517;
            margin: 0 10px;
            font-size: 1.2rem;
            transition: color 0.3s ease;
        }
        
        .social-links a:hover {
            color: #4a2811;
        }
        
        .role-badge {
            background-color: #e0f3e6;
            color: #633517;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }
        
        .quote {
            font-style: italic;
            color: #666;
            font-size: 0.9rem;
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
                    <li class="nav-item"><a class="nav-link" href="freelance">Freelance</a></li>
                    <li class="nav-item"><a class="nav-link active" href="contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header Section -->
    <div class="page-header">
        <div class="container">
            <h1 class="display-4 text-center fw-bold">Meet Our Team</h1>
            <p class="lead text-center text-muted">The talented individuals behind HireEase</p>
        </div>
    </div>

    <!-- Team Section -->
    <div class="container mb-5">
        <div class="row">
            <!-- Team Member 1 -->
            <div class="col-md-6 col-lg-4">
                <div class="team-card p-4 text-center">
                    <img src="https://ui-avatars.com/api/?name=Md.+Tareque+Jamil+Josh&background=633517&color=fff" alt="Tareque Jamil" class="team-member-img">
                    <h3 class="mt-3">Md. Tareque Jamil Josh</h3>
                    <div class="role-badge">Product Manager</div>
                    <p class="quote">"Building bridges between talent and opportunity."</p>
                    <div class="social-links">
                        <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
                        <a href="#" target="_blank"><i class="fab fa-github"></i></a>
                        <a href="mailto:tareque@hireease.com"><i class="fas fa-envelope"></i></a>
                    </div>
                </div>
            </div>

            <!-- Team Member 2 -->
            <div class="col-md-6 col-lg-4">
                <div class="team-card p-4 text-center">
                    <img src="https://ui-avatars.com/api/?name=Sadia+Khatun&background=633517&color=fff" alt="Sadia Khatun" class="team-member-img">
                    <h3 class="mt-3">Sadia Khatun</h3>
                    <div class="role-badge">Lead Developer</div>
                    <p class="quote">"Crafting elegant solutions for complex problems."</p>
                    <div class="social-links">
                        <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
                        <a href="#" target="_blank"><i class="fab fa-github"></i></a>
                        <a href="mailto:sadia@hireease.com"><i class="fas fa-envelope"></i></a>
                    </div>
                </div>
            </div>

            <!-- Team Member 3 -->
            <div class="col-md-6 col-lg-4">
                <div class="team-card p-4 text-center">
                    <img src="https://ui-avatars.com/api/?name=Md.+Minhazur+Rahman&background=633517&color=fff" alt="Minhazur Rahman" class="team-member-img">
                    <h3 class="mt-3">Md. Minhazur Rahman</h3>
                    <div class="role-badge">Quality Assurance</div>
                    <p class="quote">"Ensuring excellence in every detail."</p>
                    <div class="social-links">
                        <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
                        <a href="#" target="_blank"><i class="fab fa-github"></i></a>
                        <a href="mailto:minhaz@hireease.com"><i class="fas fa-envelope"></i></a>
                    </div>
                </div>
            </div>

            <!-- Team Member 4 -->
            <div class="col-md-6 col-lg-4">
                <div class="team-card p-4 text-center">
                    <img src="https://ui-avatars.com/api/?name=Md.+Resad+Chowdhury&background=633517&color=fff" alt="Resad Chowdhury" class="team-member-img">
                    <h3 class="mt-3">Md. Resad Chowdhury</h3>
                    <div class="role-badge">UX Designer</div>
                    <p class="quote">"Creating experiences that delight users."</p>
                    <div class="social-links">
                        <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
                        <a href="#" target="_blank"><i class="fab fa-github"></i></a>
                        <a href="mailto:resad@hireease.com"><i class="fas fa-envelope"></i></a>
                    </div>
                </div>
            </div>

            <!-- Team Member 5 -->
            <div class="col-md-6 col-lg-4">
                <div class="team-card p-4 text-center">
                    <img src="https://ui-avatars.com/api/?name=Habiba+Sultana+Bably&background=633517&color=fff" alt="Habiba Sultana" class="team-member-img">
                    <h3 class="mt-3">Habiba Sultana Bably</h3>
                    <div class="role-badge">Documentation Specialist</div>
                    <p class="quote">"Making complex information accessible."</p>
                    <div class="social-links">
                        <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
                        <a href="#" target="_blank"><i class="fab fa-github"></i></a>
                        <a href="mailto:habiba@hireease.com"><i class="fas fa-envelope"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>