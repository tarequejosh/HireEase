package com.maverics.hireEase.model;

import java.util.List;

import org.springframework.stereotype.Component;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Default;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Component
public class JobPost {

    private int postId;
    private String postProfile; 
    private String postDesc;
    private Integer reqExperience;
    private List<String> postTechStack;
    private String email;
    
    @Builder.Default
    private String jobType = "fullTime";  // Default to fullTime
    private String budget;   // For freelance projects
    private String duration; // For freelance projects

    // Constructor for full-time jobs
    public JobPost(int postId, String postProfile, String postDesc, Integer reqExperience, List<String> postTechStack, String email) {
        this.postId = postId;
        this.postProfile = postProfile;
        this.postDesc = postDesc;
        this.reqExperience = reqExperience;
        this.postTechStack = postTechStack;
        this.email = email;
        this.jobType = "fullTime";
    }

    // Constructor for freelance jobs
    public JobPost(int postId, String postProfile, String postDesc, List<String> postTechStack, String email, String budget, String duration) {
        this.postId = postId;
        this.postProfile = postProfile;
        this.postDesc = postDesc;
        this.postTechStack = postTechStack;
        this.email = email;
        this.jobType = "freelance";
        this.budget = budget;
        this.duration = duration;
    }
}
