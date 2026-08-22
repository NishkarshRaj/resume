#set text(font: "New Computer Modern")
#set page(
    margin: (
        left: 0.5in,
        right: 0.5in, 
        top: 0.35in,
        bottom: 0.35in,
    ),
)

#let link_colour = rgb("006699")
#let lightestgray = rgb("A9A9A9")
#let lightergray = rgb("626262")
#let lightgray = rgb("595959")
#let midgray = rgb("393939")
#let darkgray = rgb("292929")
#let verydarkgray = rgb("191919")

#show text: set text(0.9em)
#show link: set text(fill: link_colour)
#set par(leading: 0.45em)

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
        #v(-0.65em) #description
    ]
}

#let resume_section(section_name, section_contents, print_bottom_line: false) = {
    [
        #grid(
            columns: (2fr, 10fr),
            column-gutter: 0.2em,
            row-gutter: 0.8em,
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
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Practice Leader, FinAIOps, Platform Engineering & Observability") + ", StatusNeo",
            emph("08/2026 - Present"),
            location: "New Delhi, India",
            [
                - Leading global practice across FinAIOps, Platform Engineering, and Observability from India HQ, defining offerings, delivery standards, and building the practice team
                - Scaling practice across Fortune 500 engagements and continuing as architect on cloud, data, and developer experience engagements
            ]
        )

        #lines_with_date_and_description(
            strong("Platform Engineering Architect") + ", StatusNeo (Consulting)",
            emph("07/2024 - 07/2026"),
            location: "Client: Caesars Entertainment, Jersey City, NJ",
            [
                - Architected data platform across 3 EKS clusters, 15 AWS accounts, and 35 US states for regulatory compliance
                - Led Graviton migration (100+ nodes) with zero downtime, achieving 40% compute cost reduction via FluxCD/Karpenter
                - Built AI-powered FinOps platform (AWS Bedrock + FastAPI) with automated scanning across 15 accounts, delivering \$2M+ in documented annual savings
                - Operated 536 Kafka Connect connectors (Snowflake/S3 sinks), resolved rate limiting through task tuning and vendor coordination
                - Delivered \$5M infrastructure optimization across RDS, S3 Intelligent Tiering, and KMS batch processing (94% reduction)
                - Reduced P0 incidents from 1,000 to 40/quarter through self-healing GitOps, OpenTelemetry, and automated RCA workflows
            ]
        )

        #lines_with_date_and_description(
            strong("Principal DevOps Engineer & Solutions Architect") + ", StatusNeo (Consulting)",
            emph("01/2022 - 07/2024"),
            location: "Clients: Broadcom, McKinsey, William Hill, Gurugram, India",
            [
                - Led RearPortal (Backstage.io product) from 0 to \$2M ARR, securing Broadcom and McKinsey through Spotify partnership
                - Conducted DevSecOps maturity assessment across Broadcom acquisitions (CA, Symantec, VMware), winning \$1M+ follow-on work
                - Built IDP for William Hill's 150+ engineers with 300+ self-service patterns, reducing market launch from 6 months to 2 weeks
                - Led GitHub Enterprise migrations for 2000+ developers (SVN/Bitbucket to GitHub), completed 2 months ahead of schedule
            ]
        )

        #lines_with_date_and_description(
            strong("Founding Engineer") + ", StatusNeo",
            emph("02/2020 - 01/2022"),
            location: "Gurugram, India",
            [
                - Delivered AI model orchestration platform for Reliance Jio University (Kubernetes, Seldon Core, gRPC), sponsored by Chief Data Officer
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
                #emph("Bachelor of Technology in Computer Science") (CGPA: 9.6), Gold Medalist, Dean's List I-VIII
            ]
        )
    ],
)

#resume_section(
    "Awards & Certifications",
    [
        - *GitHub Stars Award (2021, 2022, 2023)* by Microsoft | *SREDay Community Ambassador (2026)* | *GitHub Advanced Security* (02/2023) | *GitHub Administration* (01/2023) | *GitHub Actions* (12/2022)
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
