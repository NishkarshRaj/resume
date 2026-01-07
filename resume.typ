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

#let lines_with_date_and_description(title, date, description, location: none) = {
    [
        #grid(
            columns: (auto, 1fr),
            column-gutter: 0.5em,
            align: (start, end),
            title,
            date,
        )
        #if location != none [
            #v(-0.5em)
            #text(size: 0.9em, fill: lightergray)[#location]
        ]
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
            "Jersey City, New Jersey, United States 07302",
            link("mailto:nishkarshraj000@gmail.com"),
            link("https://linkedin.com/in/nishkarshraj"),
            link("https://github.com/NishkarshRaj"),
            link("tel:+919005445752")[+91-9005445752]
        )
    ]
)

#resume_section(
    "Summary",
    [
        Platform Engineer with 6+ years building cloud infrastructure and developer platforms. Led teams of 6-8 engineers delivering \$5M+ in AWS cost savings and 96% P0 incident reduction. Built IDPs serving 300+ blueprints and led migration initiatives for 2000+ developers to GitHub Enterprise. Three-time GitHub Star Awards Recipient.
    ],
)

#resume_section(
    "Skills",
    [
        *DevOps*: AWS (RDS, EKS, EC2, S3, KMS, Bedrock), Kubernetes, Terraform, Helm, Backstage.io, FluxCD, Karpenter, GitHub (Actions, Copilot, Codespaces, Source Control), GitLab, Jenkins, Apache Airflow, Docker, New Relic, Xmatters

        *Languages & Tools*: Python, Bash, Terragrunt, Helmfile, Java, Maven

        *Security & Compliance*: GitHub Advanced Security, SBOM (EO 14028), HIPAA
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Platform Engineering Architect") + ", StatusNeo",
            emph("07/2024 - Present"),
            location: "Jersey City, New Jersey, United States",
            [
                - Architected platforms for stakeholders delivering \$5M+ in annual AWS savings through RDS optimization (50% non-prod), EC2 Graviton migration with reserved instances, S3 Intelligent Tiering, and KMS batch ingestion (94% reduction)
                - Built self-healing Kubernetes infrastructure using FluxCD operators and Karpenter tied to OpenTelemetry/New Relic monitoring, Xmatters workflows, and GitLab/JIRA automation, reducing P0 incidents from 1,000 to 40 per quarter
                - Migrated 3,400+ Apache Airflow DAGs from Astronomer to self-hosted for sportsbook operator, reducing annual licensing costs by \$650K
                - Led Cloud Software Group's GitHub Enterprise Migration for TIBCO and Citrix, modernizing version control for 2000+ developers
                - Evangelized adoption of Backstage.io at KenVue with ArgoCD and Snyk, achieving HIPAA compliance, EO 14028 SBOM requirements, and improved DORA Metrics
            ]
        )

        #lines_with_date_and_description(
            strong("Principal DevOps Engineer") + ", StatusNeo",
            emph("02/2020 - 07/2024"),
            location: "Gurugram, Haryana, India",
            [
                - Deployed Backstage.io developer portal at Broadcom, reducing new engineer onboarding from 4 weeks to 3 days with standardized service templates
                - Built internal developer platform for William Hill's 150+ engineers with 300+ self-service SRE blueprints, reducing new market launch time from 6 months to 2 weeks
                - Delivered Backstage.io MVP for McKinsey with 300+ self-service blueprints, enabling single-button deployments
            ]
        )
    ],
)

#resume_section(
    "Education",
    [
        #lines_with_date_and_description(
            strong("University of Petroleum and Energy Studies") + ", Dehradun, India",
            emph("07/2017 - 05/2021"),
            [
                #emph("Bachelor of Technology in Computer Science") (CGPA: 9.6)\
                Dean's List Semester I-VIII, Gold Medalist, Meritorious Scholarship Recipient
            ]
        )
    ],
)

#resume_section(
    "Awards & Achievements",
    [
        - *GitHub Stars Award* – Three-time recipient for contributions to open source in India and evangelizing GitHub Enterprise offerings
    ],
)

#resume_section(
    "Certifications",
    [
        - *GitHub Advanced Security Certified Partner* (02/2023) | ID: b3ee5738-20ec-4825-93e8-c812950ade8d
        - *GitHub Administration Certified Partner* (01/2023) | ID: 74c9729a-0b57-44ca-acef-30869c2e3d1a
        - *GitHub Actions Certified Partner* (12/2022) | ID: 684ae38a-8164-4a2e-91c5-c31acae6110f
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
