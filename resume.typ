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
#set par(leading: 0.55em)

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
        #v(-0.5em) #description
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
        Platform Engineer with 6+ years building cloud infrastructure, AI platforms, and developer experience products. Led product from 0 to \$2M ARR and delivered \$7M+ in infrastructure savings through AI-powered FinOps automation. Built platforms serving 2000+ developers across Fortune 500 companies. Three-time GitHub Stars Award Winner by Microsoft. Day 0 founding engineer experience at StatusNeo.
    ],
)

#resume_section(
    "Skills",
    [
        *Cloud & Platform*: AWS (RDS, EKS, EC2, S3, KMS, Bedrock), Kubernetes, Terraform, Helm, Backstage.io, FluxCD, Karpenter, Seldon, gRPC

        *AI & Automation*: AWS Bedrock, FastAPI, AI model orchestration, FinOps automation

        *DevOps*: GitHub (Actions, Copilot, Codespaces, Enterprise, Advanced Security), GitLab, Jenkins, Apache Airflow, Docker, OpenTelemetry, New Relic, Xmatters

        *Languages*: Python, Bash, Terragrunt, Helmfile, Java, Maven

        *Security*: GitHub Advanced Security, SBOM (EO 14028), HIPAA
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
                - Built AI-powered FinOps platform using AWS Bedrock and FastAPI for intelligent cost optimization, delivering \$2M in additional annual savings through automated waste detection and remediation recommendations
                - Led \$5M infrastructure cost optimization across RDS, EC2 (Graviton migration), S3 (Intelligent Tiering), and KMS (94% reduction through batch processing) for Caesars Entertainment's regulatory compliance platform serving 35 US states
                - Architected self-healing Kubernetes platform using FluxCD and Karpenter with OpenTelemetry observability, reducing P0 incidents from 1,000 to 40 per quarter (96%) and increasing deployment frequency by 10x
                - Migrated 3,400+ Apache Airflow DAGs from Astronomer to self-hosted EKS, reducing annual licensing costs by \$650K while improving DAG processing efficiency by 35%
                - Led GitHub Enterprise migrations for Cloud Software Group (TIBCO from SVN, Citrix from Bitbucket), modernizing version control and CI/CD for 2000+ developers in partnership with Microsoft
            ]
        )

        #lines_with_date_and_description(
            strong("Solutions Architect & Product Owner") + ", StatusNeo",
            emph("01/2022 - 07/2024"),
            location: "Gurugram, Haryana, India",
            [
                - Led RearPortal (enterprise Backstage.io product) from 0 to \$2M ARR as Solutions Architect and Product Owner, securing Fortune 500 clients including Broadcom and McKinsey through Spotify partnership
                - Conducted 3-month DevSecOps maturity assessment across Broadcom's acquisitions (CA, Symantec, VMware), presented at Annual DevSecOps Consortium, and won \$1M+ in follow-on work including GitHub archival program (30% savings) and SuperHighway CXO dashboard initiative
                - Built internal developer platform for William Hill's 150+ engineers with 300+ self-service patterns, reducing new market launch time from 6 months to 2 weeks for Denmark expansion
                - Deployed Backstage.io at Broadcom and McKinsey, reducing engineer onboarding from 4 weeks to 3 days through standardized service templates and one-click deployment workflows
            ]
        )

    ],
)

#pagebreak()

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Founding Engineer") + ", StatusNeo",
            emph("05/2021 - 01/2022"),
            location: "Gurugram, Haryana, India",
            [
                - Built AI Exchange Platform for Reliance Jio University enabling on-demand AI model deployment using Kubernetes, Seldon, and gRPC -- sponsored by Chief Data Officer to establish AI practices at Reliance
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
        - *GitHub Stars Award (2021, 2022, 2023)* – Recognized for teaching open source to 100+ students, establishing GitHub/Linux Foundation MoUs at UPES, and evangelizing GitHub Enterprise across India
    ],
)

#resume_section(
    "Certifications",
    [
        - *GitHub Advanced Security Certified* (02/2023)
        - *GitHub Administration Certified* (01/2023)
        - *GitHub Actions Certified* (12/2022)
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
