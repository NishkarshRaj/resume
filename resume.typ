#set text(font: "New Computer Modern")
#set page(
    margin: (
        left: 0.6in,
        right: 0.6in, 
        top: 0.4in,
        bottom: 0.4in,
    ),
)

#let link_colour = rgb("006699")
#let lightestgray = rgb("A9A9A9")
#let lightergray = rgb("626262")
#let lightgray = rgb("595959")
#let midgray = rgb("393939")
#let darkgray = rgb("292929")
#let verydarkgray = rgb("191919")

#show text: set text(0.95em)
#show link: set text(fill: link_colour)
#set par(leading: 0.45em)

#show list: set list(marker: [▫])

#let lines_with_date_and_description(title, date, description) = {
    [
        #grid(
            columns: (auto, 1fr),
            column-gutter: 0.5em,
            align: (start, end),
            title,
            date,
        )
        #v(-0.7em) #description
    ]
}

#let resume_section(section_name, section_contents, print_bottom_line: false) = {
    [
        #grid(
            columns: (2fr, 10fr),
            column-gutter: 0.2em,
            row-gutter: 1.5em,
            line(length: 100%, stroke: 2.5pt + lightgray),
            line(length: 100%, stroke: 2.5pt + lightestgray),
            smallcaps(section_name),
            section_contents,
        )

        #if print_bottom_line [
            #grid(
                columns: (2fr, 10fr),
                column-gutter: 0.2em,
                line(length: 100%, stroke: 2.5pt + lightgray),
                line(length: 100%, stroke: 2.5pt + lightestgray),
            )
        ]
    ]
}

#grid(
    columns: (1fr, 1fr),
    align: (start + bottom, end + bottom),
    text(2em, weight: 700)[Nishkarsh Raj],
    [
        #set text(0.8em)
        #grid(
            columns: (auto),
            align: (end),
            row-gutter: 0.5em,
            "Jersey City, New Jersey, United States",
            link("mailto:nishkarshraj000@gmail.com"),
            link("https://linkedin.com/in/nishkarshraj"),
            link("https://github.com/NishkarshRaj"),
            link("tel:+91-900-544-5752")
        )
    ]
)

#resume_section(
    "Summary",
    [
        Platform Engineering Architect & DevOps Leader with 5+ years of expertise driving enterprise-scale digital transformation and cost optimization initiatives. Proven track record of delivering \$1.8M+ in infrastructure savings while architecting self-healing systems, implementing AIOps solutions, and leading cross-functional teams through complex cloud migrations. Specialized in building developer experience platforms and DevSecOps frameworks that enhance team velocity, reduce MTTR, and ensure enterprise compliance.
    ],
)

#resume_section(
    "Skills",
    [
        *Cloud & Infrastructure*: AWS, Azure, GCP, Kubernetes, Terraform, Helm

        *DevOps & CI/CD*: GitHub, GitHub Actions, GitLab, Jenkins, Apache Airflow, Docker

        *Platform Engineering*: Terragrunt, Helmfile, Backstage, GitHub Enterprise, GitHub Copilot

        *Development*: Python, Bash, MERN, Maven, Linux

        *Professional*: Cross-functional Team Leadership, Technical Mentoring, Stakeholder Management, Problem-Solving & Root Cause Analysis
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Platform Engineering Architect") + ", StatusNeo Consulting",
            emph("May '24 - Present"),
            [
                - Optimized AWS RDS infrastructure, delivering \$1.8M+ in savings and achieving 50% cost reduction in non-production and 66% in production environments while maintaining 99.9% uptime SLA.
                - Architected AIOps-enabled self-healing Kubernetes systems and Pair Programming Pods, reducing MTTR by 40% and preventing \$500K+ in potential downtime costs.
                - Led enterprise-wide Apache Airflow migration from Astronomer, delivering \$800K+ in annualized savings while improving DAG processing efficiency by 35%.
                - Spearheaded Cloud Software Group's TIBCO Business Unit migration from legacy SVN to GitHub Enterprise, unlocking modern collaboration for 200+ developers and reducing deployment cycles by 60%.
                - Transformed KenVue's DevSecOps posture through GitHub Enterprise and Backstage.io implementation, achieving 100% compliance while reducing security incident response time by 50%.
            ]
        )

        #lines_with_date_and_description(
            strong("Principal DevOps Engineer") + ", StatusNeo Consulting",
            emph("Feb '20 - May '24"),
            [
                - Secured compliance with US Executive Order 10428 at Broadcom by implementing SBOM under the CIO Golden Gate Initiative, ensuring government contract eligibility worth \$50M+ annually.
                - Conducted 3-month maturity assessment at Broadcom, leading to year-long Backstage.io standardization that improved development practices consistency by 80% and reduced onboarding time by 45%.
                - Reduced scaffolding time by 60% for William Hill through custom Developer Experience platform, improving developer satisfaction scores by 35% across 150+ engineering professionals.
                - Delivered McKinsey's Backstage.io MVP in 3 months, establishing foundation for standardized development practices.
                - Implemented DevOps best practices and CI/CD pipelines across multiple Fortune 500 clients, resulting in 70% reduction in deployment failures and 40% improvement in release frequency.
            ]
        )
    ],
)

#resume_section(
    "Education",
    [
        #lines_with_date_and_description(
            strong("University of Petroleum and Energy Studies") + ", Dehradun, India",
            emph("2017 - 2021"),
            [
                #emph("Bachelor of Technology") + Computer Science (CGPA: 9.6)\
                Dean's List Semester I-VIII, Gold Medalist of the Batch, Recipient of Meritorious Scholarship
            ]
        )
    ],
)

#resume_section(
    "Awards & Achievements",
    [
        - *GitHub Star 2021, 2022, 2023* -- Three-time recipient of the #link("https://stars.github.com/alumni/")[GitHub Stars Award] by Microsoft for contributions to open source and the GitHub community. Ranked #strong[2nd in India].
        - *Most Active GitHubber in India* (Apr 2020) -- Ranked #strong[#1 in India] by commits.top with a 365-day contribution streak.
    ],
)

#resume_section(
    "Certifications",
    [
        - *GitHub Advanced Security Certified Partner* -- GitHub, Feb 2023
          - ID: b3ee5738-20ec-4825-93e8-c812950ade8d
        - *GitHub Administration Certified Partner* -- GitHub, Jan 2023
          - ID: 74c9729a-0b57-44ca-acef-30869c2e3d1a
        - *GitHub Actions Certified Partner* -- GitHub, Dec 2022
          - ID: 684ae38a-8164-4a2e-91c5-c31acae6110f
        - *Professional Scrum Master I (PSM I)* -- Scrum.org, Apr 2022
    ],
    print_bottom_line: true,
)

#align(start + bottom)[
    #text(gray)[
      Last updated on #datetime.today().display(
        "[month repr:short] [day], [year]",
      ). Download the most recent version from #link("https://github.com/nishkarshraj/resume/releases/download/latest/resume.pdf")[here].
    ]
]
