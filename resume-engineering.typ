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
        #v(-0.5em) #description
    ]
}

#let resume_section(section_name, section_contents, print_bottom_line: false) = {
    [
        #grid(
            columns: (2fr, 10fr),
            column-gutter: 0.2em,
            row-gutter: 1.0em,
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
            "Jersey City, NJ 07302",
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
        Staff Platform Engineer with 6+ years architecting cloud infrastructure at Fortune 500 scale. Designing multi-cluster EKS platform (100+ nodes), 536 Kafka connectors, and 40 PostgreSQL clusters across 35 US states at Caesars Entertainment. Delivered \$7M in savings through Graviton migration, AI-powered FinOps, and platform consolidation. Three-time GitHub Stars Award Winner.
    ],
)

#resume_section(
    "Skills",
    [
        *Cloud & Infrastructure*: AWS (EKS, RDS, EC2, S3, KMS, Bedrock, MSK), Kubernetes, Terraform, Terragrunt, Helm, Helmfile, FluxCD, Karpenter, Docker

        *Data Platform*: Strimzi Kafka Connect, Snowflake (Snowpipe), Apache Airflow, CloudNativePG, Redis, PostgreSQL

        *Observability*: OpenTelemetry, Dynatrace, New Relic, Prometheus, distributed tracing, custom metrics SDK

        *Platform*: Backstage.io, GitOps, multi-cluster EKS, Istio, CI/CD (GitLab, GitHub Actions)

        *Languages*: Python, Bash, Go, Java
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Staff Platform Engineer") + ", Caesars Entertainment (via StatusNeo)",
            emph("07/2024 – Present"),
            location: "Jersey City, New Jersey",
            [
                - Architected multi-cluster EKS platform (3 clusters, 100+ Graviton nodes, 15 AWS accounts) for 35-state regulatory compliance -- designed namespace isolation per state, led ARM64 migration achieving 40% cost reduction, resolved FluxCD/Karpenter conflicts through custom node provisioning
                - Designed high-throughput Kafka pipeline (536 Strimzi connectors) streaming to Snowflake/S3 -- optimized connector topology and buffer config reducing Snowflake API calls by 50% while maintaining 99.9% uptime
                - Built AI-powered FinOps platform (AWS Bedrock + FastAPI) across 15 accounts -- automated resource scanning identified \$2M annual savings through rightsizing and waste elimination
                - Architected Airflow v2→v3 zero-downtime migration -- parallel instances with fresh CloudNativePG databases, per-state feature flags, and automated validation for 3,400+ DAG continuity
                - Built observability stack with Dynatrace (Terraform + dtctl) and custom OpenTelemetry metrics -- reduced MTTR through automated RCA for Karpenter, Snowflake, and Redis incidents
            ]
        )

        #lines_with_date_and_description(
            strong("Senior Platform Engineer") + ", StatusNeo",
            emph("01/2022 – 07/2024"),
            location: "Gurugram, India",
            [
                - Architected enterprise Backstage.io platform for 2000+ engineers -- designed plugin architecture with sub-second scaffolding, 300+ templates, reduced onboarding from 4 weeks to 3 days
                - Built unified observability across Broadcom acquisitions (CA, Symantec, VMware) -- 1M+ deployment events daily, custom Prometheus exporters, DORA metrics for 10,000+ engineers
                - Led IDP for William Hill (150+ engineers) with GitOps workflows -- reduced provisioning from 2 weeks to 15 minutes, accelerated market launch from 6 months to 2 weeks
                - Led GitHub Enterprise migrations for 2000+ developers (SVN/Bitbucket → GitHub) -- zero-downtime, 2 months ahead of schedule, recovered 30% storage (\$400K savings)
            ]
        )

        #lines_with_date_and_description(
            strong("Platform Engineer") + ", StatusNeo",
            emph("05/2020 – 01/2022"),
            location: "Gurugram, India",
            [
                - Architected AI model orchestration on Kubernetes (Seldon Core, gRPC) -- sub-200ms P95 latency, 50+ ML models in production, established org's AI platform practices
            ]
        )
    ],
)

#resume_section(
    "Education",
    [
        #lines_with_date_and_description(
            strong("University of Petroleum and Energy Studies") + ", Dehradun, India",
            emph("07/2017 – 05/2021"),
            [
                #emph("B.Tech Computer Science") (CGPA: 9.6) -- Gold Medalist, Dean's List All Semesters
            ]
        )
    ],
)

#resume_section(
    "Awards & Certs",
    [
        - GitHub Stars Award (2021, 2022, 2023) by Microsoft | GitHub Advanced Security (02/2023) | GitHub Admin (01/2023) | GitHub Actions (12/2022)
    ],
    print_bottom_line: true,
)
