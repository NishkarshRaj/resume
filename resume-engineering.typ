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
            "Jersey City, New Jersey, United States 07302",
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
        Staff Platform Engineer with 6+ years architecting cloud infrastructure at Fortune 500 scale. Currently designing multi-cluster EKS platform (100+ nodes), 536 Kafka connectors, and 40 PostgreSQL clusters across 35 US states at Caesars Entertainment. Delivered \$7M in infrastructure savings through Graviton migration, AI-powered FinOps automation, and platform consolidation. Three-time GitHub Stars Award Winner.
    ],
)

#resume_section(
    "Skills",
    [
        *Cloud & Infrastructure*: Amazon Web Services - AWS (EKS, RDS, EC2, S3, KMS, Bedrock, MSK), Kubernetes, Terraform, Terragrunt, Helm, Helmfile, FluxCD, Karpenter, Docker

        *Data Platform*: Strimzi Kafka Connect, Snowflake (Snowpipe), Apache Airflow, CloudNativePG, Redis, PostgreSQL

        *Observability*: OpenTelemetry, Dynatrace, New Relic, Prometheus, distributed tracing, custom metrics SDK

        *Platform Engineering*: Backstage.io, GitOps, multi-cluster EKS, Istio service mesh, CI/CD (GitLab, GitHub Actions)

        *Languages*: Python, Bash, Go, Java
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Staff Platform Engineer") + ", Caesars Entertainment (via StatusNeo)",
            emph("07/2024 - Present"),
            location: "Jersey City, New Jersey, United States",
            [
                - Architected multi-cluster EKS platform (3 clusters, 100+ Graviton nodes) across 15 AWS accounts serving 35-state regulatory compliance -- designed namespace isolation per state, led ARM64 migration achieving 40% compute cost reduction, and resolved FluxCD/Karpenter scaling conflicts through custom node provisioning logic
                - Designed high-throughput Kafka data pipeline architecture (536 Strimzi connectors) streaming to Snowflake and S3 -- optimized connector topology and buffer configuration reducing Snowflake API calls by 50%, preventing rate limit incidents while maintaining 99.9% pipeline uptime
                - Built AI-powered FinOps platform using AWS Bedrock (Claude) and FastAPI processing cost data across 15 accounts -- automated resource scanning and anomaly detection identified \$2M annual savings through rightsizing and waste elimination
                - Architected Airflow v2->v3 zero-downtime migration strategy -- designed parallel instance approach with fresh CloudNativePG databases, per-state feature flags, and automated validation ensuring 3,400+ DAG continuity across regulatory environments
                - Built comprehensive observability stack with Dynatrace dashboards (Terraform + dtctl) and custom OpenTelemetry metrics -- reduced MTTR by implementing automated RCA workflows for Karpenter, Snowflake token, and Redis incidents
            ]
        )

        #lines_with_date_and_description(
            strong("Senior Platform Engineer") + ", StatusNeo",
            emph("01/2022 - 07/2024"),
            location: "Gurugram, Haryana, India",
            [
                - Architected enterprise Backstage.io platform serving 2000+ engineers with 300+ self-service templates -- designed plugin architecture achieving sub-second scaffolding, reduced onboarding from 4 weeks to 3 days, maintained 99.9% uptime
                - Built unified observability platform across Broadcom acquisitions (CA, Symantec, VMware) processing 1M+ deployment events daily -- implemented custom Prometheus exporters and real-time DORA metrics dashboards enabling data-driven decisions for 10,000+ engineers
                - Led developer experience transformation for William Hill (150+ engineers) with GitOps IaC platform -- reduced infrastructure provisioning from 2 weeks to 15 minutes, accelerated new market launch from 6 months to 2 weeks
                - Led GitHub Enterprise migrations for 2000+ developers -- architected zero-downtime migration from SVN/Bitbucket, completed 2 months ahead of schedule, optimized 50,000+ repositories recovering 30% storage (\$400K annual savings)
            ]
        )

        #lines_with_date_and_description(
            strong("Platform Engineer") + ", StatusNeo",
            emph("05/2020 - 01/2022"),
            location: "Gurugram, Haryana, India",
            [
                - Architected AI model orchestration platform on Kubernetes (Seldon Core, gRPC) achieving sub-200ms P95 latency -- enabled production deployment of 50+ ML models, established foundation for organization's AI practices
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
                #emph("Bachelor of Technology in Computer Science") (CGPA: 9.6) -- Gold Medalist, Dean's List I-VIII
            ]
        )
    ],
)

#resume_section(
    "Open Source & Certifications",
    [
        - GitHub Stars Award (2021, 2022, 2023) by Microsoft | GitHub Advanced Security Certified (02/2023) | GitHub Administration Certified (01/2023) | GitHub Actions Certified (12/2022)
    ],
    print_bottom_line: true,
)

#align(start + bottom)[
    #text(gray)[
      Last updated on #datetime.today().display(
        "[month repr:short] [day], [year]",
      ). Download the most recent version from #link("https://github.com/nishkarshraj/resume/releases/download/latest/resume-engineering.pdf")[here].
    ]
]
