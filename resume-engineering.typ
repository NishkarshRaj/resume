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
        Staff Platform Engineer with 6+ years architecting cloud infrastructure, AI platforms, and developer tooling at Fortune 500 scale. Built systems serving 2000+ engineers processing 25M+ events daily with 99.9% uptime. Delivered \$7M in infrastructure optimization through systematic cost reduction and AI-powered automation. Led platform initiatives from architecture through production deployment. Three-time GitHub Stars Award Winner.
    ],
)

#resume_section(
    "Skills",
    [
        *Cloud & Infrastructure*: AWS (EKS, RDS, EC2, S3, KMS, Bedrock), Kubernetes, Terraform, Helm, FluxCD, Karpenter, Docker

        *Platform Engineering*: Backstage.io, Apache Airflow, CI/CD orchestration, GitOps, service mesh, multi-tenancy

        *Observability & Reliability*: OpenTelemetry, New Relic, Prometheus, distributed tracing, self-healing systems, SRE practices

        *AI/ML Infrastructure*: Kubernetes operators, Seldon Core, gRPC, model serving, LLM integration, AWS Bedrock

        *Languages*: Python, Bash, Java, Go

        *Databases & Messaging*: PostgreSQL, Redis, Kafka, event-driven architectures
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Staff Platform Engineer") + ", StatusNeo",
            emph("07/2024 - Present"),
            location: "Jersey City, New Jersey, United States",
            [
                - Built AI-powered cost optimization platform using AWS Bedrock (Claude Opus) and FastAPI processing 25M+ cost events daily -- developed AWS SDK scanners for resource analysis, integrated with Bedrock models to generate Executive Summaries, Priority Matrices, and Project Plans for strategic savings beyond low-hanging cleanups -- reduced infrastructure waste by \$2M annually across multi-cloud environments
                - Drove cloud infrastructure optimization across 500+ AWS resources serving 35-state regulatory compliance platform -- designed RDS right-sizing framework analyzing 6-month CloudWatch metrics, architected ARM-based Graviton migration strategy (40% performance improvement), implemented S3 Intelligent Tiering with automated lifecycle policies, and redesigned KMS architecture for batch processing (94% cost reduction) -- delivered \$5M annual savings while maintaining 99.95% uptime SLA
                - Architected self-healing Kubernetes platform using custom FluxCD operators and Karpenter autoscaling -- designed comprehensive OpenTelemetry instrumentation for distributed tracing, built automated incident response system integrating GitLab/JIRA workflows, and implemented chaos engineering practices -- reduced MTTR from 4 hours to 35 minutes and P0 incidents by 96% (1,000 → 40 per quarter)
                - Designed and led implementation of multi-tenant Apache Airflow platform on EKS managing 3,400+ DAGs -- architected namespace isolation strategy, optimized DAG execution engine (35% performance improvement), built custom operators for state-specific compliance, and implemented comprehensive observability -- replaced \$650K annual Astronomer licensing while achieving 99.95% uptime
                - Led enterprise Git platform migrations for 2000+ developers -- architected zero-downtime migration strategy from SVN/Bitbucket to GitHub Enterprise, designed automated repository conversion tooling with parallel validation, built CI/CD pipeline templates, and implemented comprehensive monitoring -- completed migrations 2 months ahead of schedule
            ]
        )

        #lines_with_date_and_description(
            strong("Staff Platform Engineer") + ", StatusNeo",
            emph("01/2022 - 07/2024"),
            location: "Gurugram, Haryana, India",
            [
                - Architected enterprise internal developer platform on Backstage.io serving 2000+ engineers across Fortune 500 deployments -- designed extensible plugin architecture supporting 300+ service templates, optimized project scaffolding to sub-second performance through Cookiecutter refactoring, built custom TechDocs engine with real-time collaboration, and implemented comprehensive usage analytics -- reduced engineer onboarding from 4 weeks to 3 days while achieving 99.9% platform uptime
                - Designed unified observability platform integrating tooling across multiple business units (CA, Symantec, VMware) -- architected metrics aggregation layer processing 1M+ deployment events daily, implemented custom Prometheus exporters for legacy systems, built real-time DORA metrics calculation engine, and created executive dashboards -- enabled data-driven decisions across 10,000+ engineers
                - Led developer experience transformation for 150+ engineers -- architected platform with 300+ self-service IaC patterns, designed Terraform module registry with automated validation, implemented GitOps workflows with ArgoCD, and built Backstage actions for one-click deployments -- reduced infrastructure provisioning from 2 weeks to 15 minutes, enabling new market launch acceleration from 6 months to 2 weeks
                - Designed GitHub Enterprise optimization strategy analyzing 50,000+ repositories -- built automated archival workflows using commit history analysis and GitHub API automation, architected zero-downtime GHE upgrade tooling, and implemented cost tracking dashboards -- recovered 30% storage capacity and reduced operational overhead by \$400K annually
            ]
        )
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Senior Platform Engineer") + ", StatusNeo",
            emph("05/2021 - 01/2022"),
            location: "Gurugram, Haryana, India",
            [
                - Architected AI model orchestration platform on Kubernetes using Seldon Core and custom operators -- designed gRPC-based model serving architecture achieving sub-200ms P95 latency, implemented canary deployment strategies for safe model rollouts, built Python SDK for data scientists, and created comprehensive monitoring -- enabled on-demand deployment of 50+ ML models across research and production, establishing foundation for organization's AI practices
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
    "Open Source & Community",
    [
        - *GitHub Stars Award (2021, 2022, 2023)* – Recognized for evangelizing GitHub products (Actions, Copilot, Codespaces) across developer communities, educating 1000+ university students in open source practices, and establishing GitHub/Linux Foundation partnerships at UPES
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
      ). Download the most recent version from #link("https://github.com/nishkarshraj/resume/releases/download/latest/resume-engineering.pdf")[here].
    ]
]
