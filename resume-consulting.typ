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

#show list: set list(marker: [-])

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
            "New Delhi, India",
            link("mailto:nishkarshraj000@gmail.com"),
            "LinkedIn: linkedin.com/in/nishkarshraj",
            "GitHub: github.com/NishkarshRaj",
            link("tel:+919005445752")[+91-9005445752]
        )
    ]
)

#resume_section(
    "Summary",
    [
        Practice Leader - FinAIOps, Platform Engineering & Observability with 6+ years delivering cloud infrastructure at Fortune 500 scale. Led multi-cluster EKS platforms, AI-native FinOps systems, and enterprise developer experience programs across 35 US states and multiple Fortune 500 clients. Three-time GitHub Stars Award Winner. SREDay Community Ambassador (2026).
    ],
)

#resume_section(
    "Skills",
    [
        *FinAIOps*: Amazon Bedrock, Claude, AI-native cost optimization, agentic remediation, multi-cloud scanning (AWS + GCP)

        *Cloud & Platform*: Amazon Web Services - AWS (EKS, RDS, EC2, S3, KMS, Bedrock, MSK), Kubernetes, Terraform, Terragrunt, Helm, Backstage.io, FluxCD, Karpenter

        *Data & Observability*: Strimzi Kafka Connect, Snowflake, Apache Airflow, CloudNativePG, OpenTelemetry, Dynatrace, New Relic

        *DevOps & Tooling*: GitHub Enterprise (Actions, Copilot, Advanced Security), GitLab CI, Docker, Istio, Helmfile

        *AI & Automation*: AWS Bedrock (Claude), FastAPI, FinOps automation, custom AI agents

        *Languages*: Python, Bash, Terragrunt, Java

        *Keywords*: Site Reliability Engineering (SRE), Infrastructure as Code (IaC), Continuous Integration/Continuous Deployment (CI/CD), GitOps, Cloud Architecture, Microservices, Containers, Monitoring, Incident Management, FinOps
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Practice Leader — FinAIOps, Platform Engineering & Observability") + ", StatusNeo",
            emph("08/2026 - Present"),
            location: "New Delhi, India",
            [
                - Leading global practice spanning FinAIOps, Platform Engineering, and Observability from India HQ — defining offerings, delivery standards, and the practice team
                - Building and scaling the practice across Fortune 500 client engagements and partnerships
                - Continuing as architect on platform engineering and FinOps engagements across cloud, data, and developer experience
            ]
        )

        #lines_with_date_and_description(
            strong("Platform Engineering Architect") + ", StatusNeo (Consulting)",
            emph("07/2024 - 07/2026"),
            location: "Client: Caesars Entertainment — Jersey City, NJ",
            [
                - Architecting data platform infrastructure across 3 EKS clusters, 15 AWS accounts, and 35 US states for regulatory compliance
                - Led Graviton migration (100+ nodes) — zero downtime, 40% compute cost reduction, FluxCD/Karpenter coordination
                - Built AI-powered FinOps platform (AWS Bedrock + FastAPI) — automated scanning across 15 accounts, \$2M+ in documented annual savings delivered
                - Operate 536 Kafka Connect connectors (Snowflake/S3 sinks) — resolved Snowflake rate limiting through task tuning and vendor coordination
                - Driving Airflow v2->v3 migration with parallel instances and per-state feature flags across 40+ state deployments
                - Delivered \$5M infrastructure optimization: RDS right-sizing, S3 Intelligent Tiering, KMS batch processing (94% reduction)
                - Reduced P0 incidents from 1,000 to 40/quarter through self-healing GitOps, OpenTelemetry instrumentation, and automated RCA workflows
            ]
        )

        #lines_with_date_and_description(
            strong("Principal DevOps Engineer & Solutions Architect") + ", StatusNeo (Consulting)",
            emph("01/2022 - 07/2024"),
            location: "Clients: Broadcom, McKinsey, William Hill — Gurugram, India",
            [
                - Led RearPortal (Backstage.io product) from 0 to \$2M ARR — secured Broadcom and McKinsey through Spotify partnership
                - Conducted DevSecOps maturity assessment across Broadcom acquisitions (CA, Symantec, VMware) — won \$1M+ follow-on work
                - Built IDP for William Hill's 150+ engineers — 300+ self-service patterns, reduced market launch from 6 months to 2 weeks
                - Led GitHub Enterprise migrations for 2000+ developers (SVN/Bitbucket -> GitHub) — completed 2 months ahead of schedule
                - Deployed Backstage.io at Fortune 500 clients — reduced engineer onboarding from 4 weeks to 3 days
            ]
        )

        #lines_with_date_and_description(
            strong("Founding Engineer") + ", StatusNeo",
            emph("02/2020 - 01/2022"),
            location: "Gurugram, India",
            [
                - Built cloud consulting practice from zero — established AWS/Kubernetes methodology, hired initial team
                - Delivered AI model orchestration platform for Reliance Jio University (Kubernetes, Seldon Core, gRPC) — sponsored by Chief Data Officer
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
                #emph("Bachelor of Technology in Computer Science") (CGPA: 9.6) — Gold Medalist, Dean's List I-VIII
            ]
        )
    ],
)

#resume_section(
    "Awards",
    [
        - *GitHub Stars Award (2021, 2022, 2023)* – Recognized by Microsoft for open source evangelism and developer community building across India
        - *SREDay Community Ambassador (2026)* – Selected as community ambassador for SREDay global conference
    ],
)

#resume_section(
    "Certifications",
    [
        - *GitHub Advanced Security Certified* (02/2023)  |  *GitHub Administration Certified* (01/2023)  |  *GitHub Actions Certified* (12/2022)
    ],
    print_bottom_line: true,
)

#align(start + bottom)[
    #text(gray)[
      Last updated on #datetime.today().display(
        "[month repr:short] [day], [year]",
      ). Download the most recent version from #link("https://github.com/nishkarshraj/resume/releases/download/latest/resume-consulting.pdf")[here].
    ]
]
