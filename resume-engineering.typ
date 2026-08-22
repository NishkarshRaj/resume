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

#show text: set text(0.9em)
#show link: set text(fill: link_colour)
#set par(leading: 0.43em)

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
            #v(-0.6em)
            #text(size: 0.9em, fill: lightergray)[#location]
        ]
        #v(-0.6em) #description
    ]
}

#let resume_section(section_name, section_contents, print_bottom_line: false) = {
    [
        #grid(
            columns: (2fr, 10fr),
            column-gutter: 0.2em,
            row-gutter: 0.9em,
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
            row-gutter: 0.3em,
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
        Practice Leader - FinAIOps, Platform Engineering & Observability with 6+ years architecting cloud infrastructure for Fortune 500 clients globally. Delivered \$7M+ in infrastructure savings through AI-native FinOps, multi-cluster EKS platforms, and enterprise developer experience programs. Three-time GitHub Stars Award Winner. SREDay Community Ambassador (2026).
    ],
)

#resume_section(
    "Skills",
    [
        *Cloud & Platform*: AWS (EKS, RDS, EC2, S3, KMS, MSK), Kubernetes, Terraform, Terragrunt, Helm, Helmfile, FluxCD, Karpenter, Docker, Backstage.io, GitOps, Istio, CI/CD (GitLab, GitHub Actions)

        *Data & Observability*: Strimzi Kafka Connect, Snowflake, Apache Airflow, CloudNativePG, Redis, PostgreSQL, OpenTelemetry, Dynatrace, New Relic, Prometheus, distributed tracing

        *FinAIOps & Languages*: AWS Bedrock, Claude, AI-native cost optimization, agentic remediation, multi-cloud scanning (AWS + GCP), Python, Bash, Go, Java
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Practice Leader") + ", StatusNeo",
            emph("08/2026 – Present"),
            location: "New Delhi, India",
            [
                - Building FinAIOps AI Platform as a commercial accelerator targeting Fortune 500 enterprises across US, UK, South Africa, EMEA, Middle East, and Australia
                - Won and delivering commercial Backstage partnership with Spotify to implement enterprise Developer Experience at scale across global clients
            ]
        )

        #lines_with_date_and_description(
            strong("Staff Platform Engineer") + ", Caesars Entertainment (via StatusNeo)",
            emph("07/2024 – 07/2026"),
            location: "Jersey City, New Jersey",
            [
                - Architected multi-cluster EKS platform (3 clusters, 100+ Graviton nodes, 15 AWS accounts) for 35-state regulatory compliance, designed namespace isolation per state, led ARM64 migration achieving 40% cost reduction
                - Designed high-throughput Kafka pipeline (536 Strimzi connectors) streaming to Snowflake/S3, optimized connector topology reducing Snowflake API calls by 50% while maintaining 99.9% uptime
                - Built AI-powered FinOps platform (AWS Bedrock + FastAPI) across 15 accounts, delivering \$2M+ in documented annual savings; drove \$5M additional optimization across RDS right-sizing, S3 Intelligent Tiering, and KMS batch processing (94% reduction)
                - Architected Airflow v2 to v3 zero-downtime migration across 3,400+ DAGs with parallel instances and per-state feature flags, delivering \$650K annual licensing savings
                - Built observability stack with Dynatrace and custom OpenTelemetry metrics, reducing MTTR through automated RCA for Karpenter, Snowflake, and Redis incidents
            ]
        )

        #lines_with_date_and_description(
            strong("Senior Platform Engineer") + ", StatusNeo",
            emph("01/2022 – 07/2024"),
            location: "Gurugram, India",
            [
                - Architected enterprise Backstage.io platform (RearPortal) for 2000+ engineers, grew product from 0 to \$2M ARR securing Fortune 500 clients including Broadcom and McKinsey
                - Built unified observability across Broadcom acquisitions (CA, Symantec, VMware) processing 1M+ deployment events daily with DORA metrics for 10,000+ engineers
                - Led IDP for William Hill (150+ engineers) reducing provisioning from 2 weeks to 15 minutes, accelerating market launch from 6 months to 2 weeks
                - Microsoft GitHub Enterprise Migration Partner — led zero-downtime migrations for Broadcom and Cloud Software Group, modernising version control for 2000+ developers and completing 2 months ahead of schedule
            ]
        )

        #lines_with_date_and_description(
            strong("Platform Engineer") + ", StatusNeo",
            emph("05/2020 – 01/2022"),
            location: "Gurugram, India",
            [
                - Architected AI model orchestration on Kubernetes (Seldon Core, gRPC) achieving sub-200ms P95 latency across 50+ ML models in production
            ]
        )
    ],
)

#resume_section(
    "Education & Awards",
    [
        #lines_with_date_and_description(
            strong("University of Petroleum and Energy Studies") + ", Dehradun, India",
            emph("07/2017 – 05/2021"),
            [
                #emph("B.Tech Computer Science") (CGPA: 9.6), Gold Medalist, Dean's List All Semesters\
                #text(size: 0.9em, fill: lightergray)[Laureate Group institution -- GitHub, Linux Foundation & IBM academic partner]
            ]
        )

        - GitHub Stars Award (2021, 2022, 2023) | SREDay Community Ambassador (2026) | GitHub Advanced Security | GitHub Administration | GitHub Actions Certified
    ],
)
