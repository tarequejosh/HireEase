<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HireEase: Your Personalized Career Tutor!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        .bg-clr {
            background-color: #f1faee;
        }
        
        .hero-section {
            padding: 6rem 0;
            background: linear-gradient(135deg, #f1faee 0%, #e0f3e6 100%);
        }
        
        .feature-card {
            border: none;
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            background: white;
            height: 100%;
        }
        
        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
        
        .icon-circle {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1rem;
            font-size: 24px;
        }
        
        .btn-custom {
            padding: 12px 30px;
            border-radius: 25px;
            font-weight: 500;
            transition: all 0.3s ease;
        }
        
        .btn-custom:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        
        .stats-section {
            background-color: #ffffff;
            padding: 3rem 0;
        }
        
        .stat-item {
            text-align: center;
            padding: 1.5rem;
        }
        
        .stat-number {
            font-size: 2.5rem;
            font-weight: bold;
            color: #2c3e50;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-clr">
        <div class="container">
            <a class="navbar-brand fs-1 fw-medium" href="#">HireEase</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="freelance">Freelance</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="hero-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <h1 class="display-4 fw-bold mb-4">Find Your Dream Job Today</h1>
                    <p class="lead mb-4">Connect with top employers and discover opportunities that match your skills and aspirations.</p>
                    <div class="d-flex gap-3">
                        <a href="viewalljobs" class="btn btn-primary btn-custom">Browse Jobs</a>
                        <a href="addjob" class="btn btn-outline-primary btn-custom">Post a Job</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <img src="https://img.freepik.com/free-vector/hiring-concept-illustration_114360-532.jpg" alt="Job Search" class="img-fluid">
                </div>
            </div>
        </div>
    </section>

    <section class="stats-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="stat-item">
                        <div class="stat-number">1000+</div>
                        <div class="stat-label">Active Jobs</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="stat-item">
                        <div class="stat-number">500+</div>
                        <div class="stat-label">Companies</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="stat-item">
                        <div class="stat-number">10k+</div>
                        <div class="stat-label">Job Seekers</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="container my-5">
        <div class="row g-4">
            <div class="col-md-4">
                <div class="feature-card card p-4">
                    <div class="icon-circle bg-primary bg-opacity-10 text-primary">
                        <i class="fas fa-search"></i>
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title">Browse Jobs</h5>
                        <p class="card-text">Explore thousands of job opportunities across various industries and locations.</p>
                        <a href="viewalljobs" class="btn btn-outline-primary btn-custom mt-3">View All Jobs</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-card card p-4">
                    <div class="icon-circle bg-success bg-opacity-10 text-success">
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title">Post a Job</h5>
                        <p class="card-text">Are you hiring? Post your job openings and reach thousands of qualified candidates.</p>
                        <a href="addjob" class="btn btn-outline-success btn-custom mt-3">Add Job</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-card card p-4">
                    <div class="icon-circle bg-info bg-opacity-10 text-info">
                        <i class="fas fa-users"></i>
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title">Career Resources</h5>
                        <p class="card-text">Access career guides, resume tips, and interview preparation resources.</p>
                        <a href="#" class="btn btn-outline-info btn-custom mt-3">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
