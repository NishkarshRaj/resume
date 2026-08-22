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
        Staff Platform Engineer with 6+ years architecting cloud infrastructure and developer platforms for Fortune 500 organizations. Delivered \$7M+ in infrastructure savings and reduced production incidents by 96% across multi-cluster EKS platforms serving 35 regulated jurisdictions. Built AI-native FinOps tooling on AWS Bedrock. Three-time GitHub Stars Award Winner.
    ],
)

#resume_section(
    "Skills",
    [
        *Cloud & Platform*: AWS (EKS, RDS, EC2, S3, KMS, MSK, Bedrock), Azure (AKS), Kubernetes, Terraform, Terragrunt, Helm, Helmfile, FluxCD, Karpenter, Docker, Backstage.io, Istio, GitOps

        *Data & Observability*: Strimzi Kafka Connect, Snowflake, Apache Airflow, CloudNativePG, PostgreSQL, Redis, OpenTelemetry, Dynatrace, New Relic, Prometheus, distributed tracing

        *Languages & CI/CD*: Python, Bash, Go, Java, FastAPI, GitLab CI, GitHub Actions, GitHub Enterprise
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Staff Platform Engineer") + ", Caesars Entertainment (via StatusNeo)",
            emph("07/2024 – Present"),
            location: "Jersey City, NJ, USA -> New Delhi, India",
            [
                - Architected multi-cluster EKS platform (3 clusters, 100+ Graviton nodes, 15 AWS accounts) serving 35-state regulatory compliance, designed per-state namespace isolation and led ARM64 migration achieving 40% compute cost reduction with zero downtime
                - Rebuilt platform reliability architecture with FluxCD operators, Karpenter autoscaling, and custom OpenTelemetry instrumentation, reducing P0 incidents from 1,000 to 40 per quarter (96%) and increasing deployment frequency 10x
                - Designed high-throughput Kafka pipeline (536 Strimzi connectors) streaming to Snowflake and S3, optimized connector topology reducing Snowflake API calls by 50% while sustaining 99.9% uptime through peak betting events
                - Built AI-native FinOps platform on AWS Bedrock and FastAPI scanning 15 AWS accounts, identifying \$2M in annual savings; delivered a further \$5M through RDS right-sizing, S3 Intelligent Tiering, and KMS batch processing (94% reduction)
                - Architected Airflow v2 to v3 zero-downtime migration across 3,400+ DAGs using parallel instances, fresh CloudNativePG databases, and per-state feature flags, eliminating \$650K in annual licensing
            ]
        )

        #lines_with_date_and_description(
            strong("Senior Platform Engineer") + ", StatusNeo",
            emph("01/2022 – 07/2024"),
            location: "Gurugram, India",
            [
                - Architected RearPortal, an enterprise Backstage.io platform adopted by 2000+ engineers across Broadcom and McKinsey, designing the plugin architecture and 300+ service templates that reduced engineer onboarding from 4 weeks to 3 days
                - Built unified observability across Broadcom acquisitions (CA, Symantec, VMware) processing 1M+ deployment events daily with DORA metrics for 10,000+ engineers
                - Led IDP for William Hill (150+ engineers) reducing infrastructure provisioning from 2 weeks to 15 minutes, accelerating new market launch from 6 months to 2 weeks
                - Led zero-downtime GitHub Enterprise migrations for Broadcom and Cloud Software Group as a Microsoft migration partner, modernizing version control for 2000+ developers and completing 2 months ahead of schedule
            ]
        )

        #lines_with_date_and_description(
            strong("Founding Engineer") + ", StatusNeo",
            emph("05/2020 – 01/2022"),
            location: "Gurugram, India",
            [
                - Architected AI model orchestration on Azure Kubernetes Service (Seldon Core, gRPC) achieving sub-200ms P95 latency across 50+ ML models in production, building the data pipelines powering Reliance Jio University's AI Exchange Platform
                - Founding engineer (employee \#5) through scale to 500+ people across 4 regions; established the Backstage.io Center of Excellence and developer experience practice that became the foundation for the company's enterprise platform product
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
                #emph("B.Tech Computer Science") (CGPA: 9.6), Gold Medalist, Dean's List All Semesters
            ]
        )

        - GitHub Stars Award (2021, 2022, 2023) | SREDay Community Ambassador (2026) | GitHub Advanced Security, Administration, and Actions Certified
    ],
)
