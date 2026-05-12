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
        Staff Platform Engineer with 6+ years architecting cloud infrastructure at Fortune 500 scale. Currently managing 3 EKS clusters (100+ nodes), 15 AWS accounts, and 536 Kafka connectors across 35 US states for Caesars Entertainment. Delivered \$7M in infrastructure savings through Graviton migration, FinOps automation, and platform consolidation. Three-time GitHub Stars Award Winner.
    ],
)

#resume_section(
    "Skills",
    [
        *Cloud & Infrastructure*: AWS (EKS, RDS, EC2, S3, KMS, Bedrock, MSK), Kubernetes, Terraform, Terragrunt, Helm, Helmfile, FluxCD, Karpenter, Docker

        *Data Platform*: Strimzi Kafka Connect, Snowflake (Snowpipe), Apache Airflow, CloudNativePG, Redis, PostgreSQL

        *Observability*: OpenTelemetry, Dynatrace, New Relic, Prometheus, distributed tracing, custom metrics SDK, DQL

        *Platform Engineering*: Backstage.io, GitOps, multi-cluster EKS, service mesh (Istio), CI/CD (GitLab, GitHub Actions)

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
                - Manage 3 EKS data clusters (nonprod/cert/prod, 100+ Graviton nodes) across 15 AWS accounts serving 35 US state regulatory compliance workloads
                - Led full ARM64 Graviton migration — migrated all nodepools, resolved FluxCD/Karpenter conflicts, achieved 40% compute cost reduction with zero downtime
                - Operate 536 Kafka Connect connectors (Strimzi) sinking to Snowflake and S3 — tuned buffer/task settings reducing Snowflake API calls by 50% after rate limit incident
                - Built AI-powered FinOps platform (AWS Bedrock + FastAPI) processing cost data across 15 accounts — identified \$2M annual savings through automated resource scanning
                - Manage 40 CloudNativePG clusters with automated switchover, WAL archival to S3, and replication monitoring
                - Architecting Airflow v2→v3 migration with parallel instances, fresh CNPG databases, and per-state feature flags for zero-risk rollout
                - Built Dynatrace dashboards (Terraform + dtctl) and custom OTEL metrics for Kafka Connect, Airflow, and GR-SMB workloads
                - Conduct RCAs for production incidents — Karpenter consolidation cascades, Snowflake token expiry, Redis eviction impacts — with Jira documentation and remediation
            ]
        )

        #lines_with_date_and_description(
            strong("Senior Platform Engineer") + ", StatusNeo",
            emph("01/2022 - 07/2024"),
            location: "Gurugram, Haryana, India",
            [
                - Architected enterprise Backstage.io platform serving 2000+ engineers — reduced onboarding from 4 weeks to 3 days with 300+ self-service templates
                - Built unified observability across Broadcom acquisitions (CA, Symantec, VMware) — 1M+ deployment events daily, DORA metrics dashboards
                - Designed IDP for William Hill's 150+ engineers with GitOps workflows — reduced new market launch from 6 months to 2 weeks
                - Led GitHub Enterprise migrations (SVN/Bitbucket → GitHub) for 2000+ developers — completed 2 months ahead of schedule
                - Optimized 50,000+ GitHub repositories — automated archival recovered 30% storage, saved \$400K annually
            ]
        )

        #lines_with_date_and_description(
            strong("Platform Engineer") + ", StatusNeo",
            emph("05/2020 - 01/2022"),
            location: "Gurugram, Haryana, India",
            [
                - Built AI model orchestration platform on Kubernetes (Seldon Core, gRPC) — sub-200ms P95 latency, 50+ ML models in production
                - Founding engineer — built cloud practice from zero, established AWS/Kubernetes consulting methodology
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
    "Open Source",
    [
        - *GitHub Stars Award (2021, 2022, 2023)* – Recognized by Microsoft for open source contributions and developer community building
    ],
)

#resume_section(
    "Certifications",
    [
        - *GitHub Advanced Security Certified* (02/2023) ∙ *GitHub Administration Certified* (01/2023) ∙ *GitHub Actions Certified* (12/2022)
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
