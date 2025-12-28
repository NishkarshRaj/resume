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
#set par(leading: 0.45em)

#show list: set list(marker: [▫])

#let lines_with_date_and_description(title, date, description) = {
    [
        #grid(
            columns: (auto, 1fr),
            column-gutter: 0.5em,
            align: (start, end),
            title,
            date,
        )
        #v(-0.7em) #description
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
            "Jersey City, New Jersey, United States",
            link("mailto:nishkarshraj000@gmail.com"),
            link("https://linkedin.com/in/nishkarshraj"),
            link("https://github.com/NishkarshRaj"),
            link("tel:+91-900-544-5752")
        )
    ]
)

#resume_section(
    "Summary",
    [
        Platform Engineer with 5+ years building cloud infrastructure and developer platforms at Fortune 500 companies. Delivered \$5M+ in annual cost savings through multi-layered AWS optimization (RDS, EC2, S3, KMS). Led GitHub Enterprise migrations for 200+ developers and built internal developer platforms serving 300+ service templates. Three-time GitHub Star (2021-2023).
    ],
)

#resume_section(
    "Skills",
    [
        *Cloud & Platform*: AWS (RDS, EKS, EC2, S3, KMS), Kubernetes, Terraform, Helm, Backstage.io, FluxCD, Karpenter

        *CI/CD & DevOps*: GitHub Actions, GitHub Enterprise, GitLab, Jenkins, Apache Airflow, Docker

        *Observability*: OpenTelemetry, New Relic, Xmatters

        *Languages & Tools*: Python, Bash, Terragrunt, Helmfile

        *Security & Compliance*: GitHub Advanced Security, SBOM (EO 14028), HIPAA
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Platform Engineering Architect") + ", StatusNeo Consulting",
            emph("May 2024 - Present"),
            [
                - Led teams of 6-8 engineers and stakeholders (Platform GMs, CTO, SVP) delivering \$5M+ in annual AWS savings through RDS optimization (50% non-prod), EC2 Graviton migration with reserved instances, S3 Intelligent Tiering, and KMS batch ingestion (94% reduction)
                - Built self-healing Kubernetes infrastructure using FluxCD operators and Karpenter tied to OpenTelemetry/New Relic monitoring, Xmatters workflows, and GitLab/JIRA automation, reducing P0 incidents from 1,000 to 40 per quarter
                - Migrated 3,400+ Apache Airflow DAGs (100 per state across 34 US jurisdictions) from Astronomer to self-hosted for sportsbook operator, reducing annual licensing costs by \$650K
                - Led Cloud Software Group's 12-month migration: SVN to GitHub Enterprise for TIBCO and Bitbucket to GitHub for Citrix, modernizing version control for 200+ developers
                - Implemented GitHub Advanced Security and Backstage.io at KenVue, achieving HIPAA compliance, EO 14028 SBOM requirements, and near-zero critical vulnerabilities in production
            ]
        )

        #lines_with_date_and_description(
            strong("Principal DevOps Engineer") + ", StatusNeo Consulting",
            emph("February 2020 - May 2024"),
            [
                - Deployed Backstage.io developer portal at Broadcom, reducing new engineer onboarding from 4 weeks to 3 days with standardized service templates
                - Built internal developer platform for William Hill's 150+ engineers with 300+ self-service SRE blueprints, reducing new market launch time from 6 months to 2 weeks (Denmark launch)
                - Implemented SBOM generation pipeline at Broadcom to meet EO 14028 cybersecurity requirements for federal contract eligibility
                - Delivered Backstage.io MVP for McKinsey in 3 months with 300+ reusable service blueprints focused on single-button deployment workflows
            ]
        )
    ],
)

#resume_section(
    "Education",
    [
        #lines_with_date_and_description(
            strong("University of Petroleum and Energy Studies") Dehradun, India",
            emph("2017 - 2021"),
            [
                #emph("Bachelor of Technology in Computer Science") + " (CGPA: 9.6)\
                Dean's List Semester I-VIII, Gold Medalist, Meritorious Scholarship Recipient"
            ]
        )
    ],
)

#resume_section(
    "Awards & Achievements",
    [
        - *GitHub Star (2021, 2022, 2023)* – Three-time recipient for contributions to open source and GitHub community
        - *Top GitHub Contributor in India (2020)* – Ranked \#1 by commits.top with 365-day contribution streak
    ],
)

#resume_section(
    "Certifications",
    [
        - *GitHub Advanced Security Certified Partner* (Feb 2023) | ID: b3ee5738-20ec-4825-93e8-c812950ade8d
        - *GitHub Administration Certified Partner* (Jan 2023) | ID: 74c9729a-0b57-44ca-acef-30869c2e3d1a
        - *GitHub Actions Certified Partner* (Dec 2022) | ID: 684ae38a-8164-4a2e-91c5-c31acae6110f
        - *Professional Scrum Master I (PSM I)* – Scrum.org (Apr 2022)
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
