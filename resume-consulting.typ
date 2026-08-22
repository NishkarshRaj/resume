#set text(font: "New Computer Modern")
#set page(
    margin: (
        left: 0.45in,
        right: 0.45in, 
        top: 0.35in,
        bottom: 0.35in,
    ),
)

#let link_colour = rgb("006699")
#let lightestgray = rgb("A9A9A9")
#let lightergray = rgb("626262")
#let lightgray = rgb("595959")

#show text: set text(0.9em)
#show link: set text(fill: link_colour)
#set par(leading: 0.40em)

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
        #v(-0.7em) #description
    ]
}

#let resume_section(section_name, section_contents, print_bottom_line: false) = {
    [
        #grid(
            columns: (2fr, 10fr),
            column-gutter: 0.2em,
            row-gutter: 0.7em,
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
            link("https://linkedin.com/in/nishkarshraj")[linkedin.com/in/nishkarshraj],
            link("https://github.com/NishkarshRaj")[github.com/NishkarshRaj],
            link("tel:+919005445752")[+91-9005445752]
        )
    ]
)

#resume_section(
    "Summary",
    [
        Practice Leader for FinAIOps, Platform Engineering, and Observability with 6+ years building and selling enterprise platform programs to Fortune 500 buyers. Grew an enterprise developer experience product from zero to \$2M ARR and delivered \$7M+ in documented client infrastructure savings. Now scaling a global practice across five markets from India HQ. Three-time GitHub Stars Award Winner and SREDay Community Ambassador.
    ],
)

#resume_section(
    "Skills",
    [
        *FinAIOps & AI*: Amazon Bedrock (Claude), AI-native cost optimization, agentic remediation, multi-cloud scanning (AWS + GCP), FastAPI, custom AI agents

        *Cloud & Platform*: AWS (EKS, RDS, EC2, S3, KMS, MSK), Azure (AKS), Kubernetes, Terraform, Terragrunt, Helm, Helmfile, Backstage.io, FluxCD, Karpenter, Istio, Docker

        *Data & Observability*: Strimzi Kafka Connect, Snowflake, Apache Airflow, CloudNativePG, OpenTelemetry, Dynatrace, New Relic, Prometheus

        *DevOps & Languages*: GitHub Enterprise (Actions, Copilot, Advanced Security), GitLab CI, Python, Bash, Go, Java
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Practice Leader — FinAIOps & Platform Engineering") + ", StatusNeo",
            emph("08/2026 - Present"),
            location: "New Delhi, India",
            [
                - Leading global FinAIOps, Platform Engineering, and Observability practice from India HQ, taking offerings to market across five markets: the US, UK, South Africa, Middle East, and Australia
                - Won and delivering a commercial Backstage.io partnership with Spotify, packaging enterprise Developer Experience as a repeatable Fortune 500 offering
            ]
        )

        #lines_with_date_and_description(
            strong("Platform Engineering Architect") + ", StatusNeo (Consulting)",
            emph("07/2024 - 07/2026"),
            location: "Jersey City, NJ | Client: Caesars Entertainment",
            [
                - Architected the regulatory data platform across 3 EKS clusters, 15 AWS accounts, and 35 US states, leading a zero-downtime Graviton migration of 100+ nodes that cut compute costs 40%
                - Built AI-powered FinOps platform (AWS Bedrock + FastAPI) scanning 15 accounts, delivering \$2M in documented annual savings; drove a further \$5M through RDS right-sizing, S3 Intelligent Tiering, and KMS batch processing (94% reduction)
                - Designed 536-connector Kafka Connect pipeline (Snowflake/S3 sinks), cutting Snowflake API calls 50% and eliminating rate limiting through topology and buffer tuning
                - Reduced P0 incidents from 1,000 to 40/quarter through self-healing GitOps, OpenTelemetry, and automated RCA workflows
            ]
        )

        #lines_with_date_and_description(
            strong("Principal DevOps & Solutions Architect") + ", StatusNeo (Consulting)",
            emph("01/2022 - 07/2024"),
            location: "Gurugram, India | Clients: Broadcom, McKinsey, William Hill",
            [
                - Led RearPortal (Backstage.io product) from 0 to \$2M ARR, securing Broadcom and McKinsey as anchor clients
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
                - Founding engineer (employee \#5) through scale to 500+ people across India, UK, Middle East, and USA; established the Backstage.io Center of Excellence that became the firm's enterprise Developer Experience practice
                - Delivered AI model orchestration platform for Reliance Jio University (Kubernetes, Seldon Core, gRPC) sponsored by the Chief Data Officer, establishing the client's AI platform practice
            ]
        )
    ],
)

#resume_section(
    "Education & Awards",
    [
        #lines_with_date_and_description(
            strong("University of Petroleum and Energy Studies") + ", Dehradun, India",
            emph("07/2017 - 05/2021"),
            [
                #emph("Bachelor of Technology in Computer Science") (CGPA: 9.6), Gold Medalist, Dean's List All Semesters
            ]
        )

        - *Awards*: GitHub Stars (2021-23) by Microsoft | SREDay Community Ambassador (2026) | GitHub Advanced Security, Administration & Actions Certified
        - *Speaking*: SREDay NYC, London, SF, Seattle | GitHub Satellite India | KonfHub
    ],
)
