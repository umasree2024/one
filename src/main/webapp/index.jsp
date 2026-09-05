<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sree Manoj Panuthula — Application Lead & SRE Portfolio</title>
    
    <!-- Google Fonts & FontAwesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>
        :root {
            --bg-canvas: #090d16;
            --bg-card: rgba(17, 24, 39, 0.75);
            --bg-card-hover: rgba(26, 36, 56, 0.85);
            --bg-badge: rgba(99, 102, 241, 0.12);
            --border-subtle: rgba(255, 255, 255, 0.08);
            --border-accent: rgba(99, 102, 241, 0.4);
            
            --text-primary: #f8fafc;
            --text-secondary: #94a3b8;
            --text-muted: #64748b;
            
            --accent-blue: #38bdf8;
            --accent-indigo: #6366f1;
            --accent-emerald: #10b981;
            --accent-amber: #f59e0b;
            --accent-rose: #f43f5e;
            
            --font-sans: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            --font-mono: 'JetBrains Mono', monospace;
            --radius-sm: 8px;
            --radius-md: 14px;
            --radius-lg: 20px;
            --radius-pill: 9999px;
            
            --shadow-card: 0 10px 30px -10px rgba(0, 0, 0, 0.5);
            --shadow-glow: 0 0 25px rgba(99, 102, 241, 0.25);
            --transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: var(--font-sans);
            background-color: var(--bg-canvas);
            color: var(--text-primary);
            line-height: 1.6;
            padding-bottom: 80px;
            background-image: 
                radial-gradient(circle at 10% 10%, rgba(99, 102, 241, 0.09) 0%, transparent 40%),
                radial-gradient(circle at 90% 40%, rgba(56, 189, 248, 0.07) 0%, transparent 45%),
                radial-gradient(circle at 50% 80%, rgba(16, 185, 129, 0.05) 0%, transparent 50%);
            background-attachment: fixed;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .container {
            max-width: 1180px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Ambient Glow & Floating Navbar */
        header.nav-header {
            position: sticky;
            top: 16px;
            z-index: 100;
            margin-bottom: 36px;
        }

        .nav-glass {
            background: rgba(13, 19, 33, 0.85);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-pill);
            padding: 12px 24px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
        }

        .nav-brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-weight: 800;
            font-size: 17px;
            letter-spacing: -0.5px;
        }

        .brand-dot {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background: var(--accent-emerald);
            box-shadow: 0 0 10px var(--accent-emerald);
            animation: pulseDot 2s infinite ease-in-out;
        }

        @keyframes pulseDot {
            0%, 100% { opacity: 1; transform: scale(1); }
            50% { opacity: 0.5; transform: scale(1.2); }
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .btn-action {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 18px;
            border-radius: var(--radius-pill);
            font-size: 13.5px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            border: 1px solid var(--border-subtle);
            background: rgba(255, 255, 255, 0.05);
            color: var(--text-primary);
        }

        .btn-action:hover {
            background: var(--accent-indigo);
            border-color: var(--accent-indigo);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px var(--accent-glow);
        }

        .btn-action.primary {
            background: linear-gradient(135deg, var(--accent-indigo), #4f46e5);
            border-color: transparent;
        }

        /* Hero Header Section */
        .hero-card {
            background: var(--bg-card);
            backdrop-filter: blur(16px);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-lg);
            padding: 44px;
            position: relative;
            overflow: hidden;
            box-shadow: var(--shadow-card);
            margin-bottom: 32px;
        }

        .hero-card::after {
            content: '';
            position: absolute;
            top: -120px;
            right: -120px;
            width: 320px;
            height: 320px;
            background: radial-gradient(circle, rgba(99, 102, 241, 0.25) 0%, transparent 70%);
            border-radius: 50%;
            pointer-events: none;
        }

        .hero-top {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            flex-wrap: wrap;
            gap: 24px;
            margin-bottom: 24px;
        }

        .hero-main h1 {
            font-size: 38px;
            font-weight: 800;
            letter-spacing: -1px;
            line-height: 1.15;
            margin-bottom: 8px;
        }

        .hero-role {
            font-size: 19px;
            font-weight: 600;
            background: linear-gradient(90deg, var(--accent-blue), #818cf8);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .contact-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 12px 20px;
            margin-top: 14px;
            font-size: 13.5px;
            color: var(--text-secondary);
        }

        .contact-link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: var(--text-secondary);
            transition: var(--transition);
        }

        .contact-link:hover {
            color: var(--text-primary);
        }

        .contact-link i {
            color: var(--accent-blue);
        }

        /* Metric Highlights Grid */
        .metrics-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 16px;
            margin-top: 28px;
            padding-top: 28px;
            border-top: 1px solid var(--border-subtle);
        }

        .metric-card {
            background: rgba(255, 255, 255, 0.02);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            padding: 16px 20px;
            transition: var(--transition);
        }

        .metric-card:hover {
            background: rgba(255, 255, 255, 0.05);
            border-color: var(--border-accent);
            transform: translateY(-2px);
        }

        .metric-val {
            font-family: var(--font-mono);
            font-size: 28px;
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 4px;
        }

        .metric-val.green { color: var(--accent-emerald); }
        .metric-val.indigo { color: #818cf8; }
        .metric-val.blue { color: var(--accent-blue); }
        .metric-val.amber { color: var(--accent-amber); }

        .metric-lbl {
            font-size: 12px;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.6px;
            font-weight: 600;
        }

        /* Two-Column Layout */
        .content-grid {
            display: grid;
            grid-template-columns: 1fr 340px;
            gap: 32px;
        }

        /* Section Cards */
        .section-box {
            background: var(--bg-card);
            backdrop-filter: blur(16px);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-lg);
            padding: 32px;
            margin-bottom: 32px;
            box-shadow: var(--shadow-card);
        }

        .section-heading {
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 19px;
            font-weight: 700;
            letter-spacing: -0.3px;
            margin-bottom: 24px;
            color: var(--text-primary);
            padding-bottom: 12px;
            border-bottom: 1px solid var(--border-subtle);
        }

        .section-heading i {
            color: var(--accent-indigo);
            font-size: 18px;
        }

        /* Professional Summary */
        .summary-text {
            font-size: 15px;
            color: var(--text-secondary);
            line-height: 1.75;
        }

        /* Experience Timeline */
        .company-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            flex-wrap: wrap;
            gap: 12px;
            margin-bottom: 24px;
            padding-bottom: 16px;
            border-bottom: 1px dashed var(--border-subtle);
        }

        .company-title {
            font-size: 17px;
            font-weight: 700;
            color: var(--text-primary);
        }

        .company-project {
            font-size: 13.5px;
            color: var(--accent-blue);
            font-weight: 500;
        }

        .company-date {
            font-family: var(--font-mono);
            font-size: 12.5px;
            color: var(--text-muted);
            background: rgba(255, 255, 255, 0.04);
            padding: 4px 12px;
            border-radius: var(--radius-pill);
            border: 1px solid var(--border-subtle);
        }

        .timeline {
            position: relative;
            padding-left: 28px;
        }

        .timeline::before {
            content: '';
            position: absolute;
            left: 7px;
            top: 10px;
            bottom: 10px;
            width: 2px;
            background: linear-gradient(180deg, var(--accent-indigo), var(--accent-blue), transparent);
        }

        .timeline-item {
            position: relative;
            margin-bottom: 36px;
        }

        .timeline-item:last-child {
            margin-bottom: 0;
        }

        .timeline-dot {
            position: absolute;
            left: -28px;
            top: 5px;
            width: 16px;
            height: 16px;
            border-radius: 50%;
            background: var(--bg-canvas);
            border: 3px solid var(--accent-indigo);
            box-shadow: 0 0 10px var(--accent-glow);
        }

        .timeline-item.active .timeline-dot {
            border-color: var(--accent-emerald);
            box-shadow: 0 0 12px var(--accent-emerald);
        }

        .role-title {
            font-size: 16px;
            font-weight: 700;
            color: var(--text-primary);
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 8px;
            margin-bottom: 4px;
        }

        .role-period {
            font-family: var(--font-mono);
            font-size: 12px;
            color: var(--text-muted);
            font-weight: 500;
        }

        .role-scope {
            font-size: 13px;
            color: var(--accent-indigo);
            font-weight: 600;
            margin-bottom: 12px;
        }

        .bullet-list {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .bullet-list li {
            font-size: 14px;
            color: var(--text-secondary);
            display: flex;
            align-items: flex-start;
            gap: 10px;
            line-height: 1.6;
        }

        .bullet-list li i {
            color: var(--accent-blue);
            font-size: 11px;
            margin-top: 6px;
            flex-shrink: 0;
        }

        .bullet-list li strong {
            color: var(--text-primary);
        }

        /* Sidebar Competencies & Skills */
        .skill-group {
            margin-bottom: 24px;
        }

        .skill-group:last-child {
            margin-bottom: 0;
        }

        .skill-title {
            font-size: 12.5px;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            color: var(--text-muted);
            font-weight: 700;
            margin-bottom: 10px;
            font-family: var(--font-mono);
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .tags-wrapper {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }

        .skill-tag {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid var(--border-subtle);
            color: #cbd5e1;
            padding: 5px 12px;
            border-radius: var(--radius-sm);
            font-size: 12.5px;
            font-weight: 500;
            transition: var(--transition);
        }

        .skill-tag:hover {
            background: var(--bg-badge);
            border-color: var(--border-accent);
            color: var(--text-primary);
            transform: translateY(-1px);
        }

        .skill-tag.accent {
            background: rgba(56, 189, 248, 0.08);
            border-color: rgba(56, 189, 248, 0.25);
            color: #7dd3fc;
        }

        /* Education & Certifications */
        .cert-card {
            background: rgba(255, 255, 255, 0.02);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            padding: 16px;
            margin-bottom: 12px;
            display: flex;
            align-items: flex-start;
            gap: 12px;
            transition: var(--transition);
        }

        .cert-card:hover {
            border-color: var(--border-accent);
            background: rgba(255, 255, 255, 0.04);
        }

        .cert-icon {
            width: 36px;
            height: 36px;
            border-radius: var(--radius-sm);
            background: rgba(99, 102, 241, 0.15);
            display: grid;
            place-items: center;
            color: var(--accent-indigo);
            font-size: 16px;
            flex-shrink: 0;
        }

        .cert-info h4 {
            font-size: 14px;
            font-weight: 700;
            color: var(--text-primary);
            margin-bottom: 2px;
        }

        .cert-info p {
            font-size: 12.5px;
            color: var(--text-muted);
        }

        .cert-status {
            display: inline-block;
            font-size: 11px;
            font-weight: 600;
            font-family: var(--font-mono);
            padding: 2px 8px;
            border-radius: var(--radius-pill);
            margin-top: 6px;
        }

        .cert-status.completed {
            background: rgba(16, 185, 129, 0.15);
            color: #34d399;
            border: 1px solid rgba(16, 185, 129, 0.3);
        }

        .cert-status.pursuing {
            background: rgba(245, 158, 11, 0.15);
            color: #fbbf24;
            border: 1px solid rgba(245, 158, 11, 0.3);
        }

        /* Toast Notification */
        .toast {
            position: fixed;
            bottom: 24px;
            right: 24px;
            background: #1e293b;
            color: #fff;
            padding: 12px 24px;
            border-radius: var(--radius-pill);
            border: 1px solid var(--accent-indigo);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5);
            font-size: 13.5px;
            font-weight: 600;
            display: none;
            align-items: center;
            gap: 10px;
            z-index: 200;
            animation: toastIn 0.3s ease-out;
        }

        @keyframes toastIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Print Media Styles */
        @media print {
            body {
                background: #fff;
                color: #111;
            }
            header.nav-header, .toast {
                display: none !important;
            }
            .hero-card, .section-box, .metric-card, .cert-card {
                background: #fff;
                color: #111;
                border: 1px solid #ddd;
                box-shadow: none;
                backdrop-filter: none;
            }
            .hero-role, .metric-val {
                -webkit-text-fill-color: initial;
                color: #111;
            }
            .content-grid {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 900px) {
            .content-grid {
                grid-template-columns: 1fr;
            }
            .metrics-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .hero-card {
                padding: 28px;
            }
            .hero-main h1 {
                font-size: 28px;
            }
        }
    </style>
</head>
<body>

    <!-- Sticky Glass Navigation -->
    <header class="nav-header">
        <div class="container">
            <div class="nav-glass">
                <div class="nav-brand">
                    <span class="brand-dot"></span>
                    <span>Sree Manoj Panuthula</span>
                </div>
                <div class="nav-actions">
                    <button class="btn-action" onclick="copyContact()">
                        <i class="far fa-copy"></i> Copy Contact
                    </button>
                    <a href="https://linkedin.com/in/sree-manoj-panuthula-032340202/" target="_blank" class="btn-action">
                        <i class="fab fa-linkedin"></i> LinkedIn
                    </a>
                    <button class="btn-action primary" onclick="window.print()">
                        <i class="fas fa-file-pdf"></i> Print / PDF
                    </button>
                </div>
            </div>
        </div>
    </header>

    <main class="container">
        <!-- Hero Header Card -->
        <section class="hero-card">
            <div class="hero-top">
                <div class="hero-main">
                    <h1>Sree Manoj Panuthula</h1>
                    <div class="hero-role">
                        <i class="fas fa-shield-halved"></i> Application Lead / Site Reliability Engineer
                    </div>
                    <div class="contact-grid">
                        <span class="contact-link"><i class="fas fa-location-dot"></i> Hyderabad, India</span>
                        <a href="tel:+918978134785" class="contact-link"><i class="fas fa-phone"></i> +91 8978134785</a>
                        <a href="mailto:sreemanoj50@gmail.com" class="contact-link"><i class="fas fa-envelope"></i> sreemanoj50@gmail.com</a>
                        <a href="https://linkedin.com/in/sree-manoj-panuthula-032340202/" target="_blank" class="contact-link">
                            <i class="fab fa-linkedin"></i> sree-manoj-panuthula
                        </a>
                    </div>
                </div>
            </div>

            <!-- Key Quantifiable Metrics -->
            <div class="metrics-grid">
                <div class="metric-card">
                    <div class="metric-val green">~$10M</div>
                    <div class="metric-lbl">DRO Cumulative Savings</div>
                </div>
                <div class="metric-card">
                    <div class="metric-val indigo">8M+</div>
                    <div class="metric-lbl">Healthcare Members Supported</div>
                </div>
                <div class="metric-card">
                    <div class="metric-val blue">4.6 Yrs</div>
                    <div class="metric-lbl">Production SRE Experience</div>
                </div>
                <div class="metric-card">
                    <div class="metric-val amber">35%</div>
                    <div class="metric-lbl">Recurring RCA Incident Drop</div>
                </div>
            </div>
        </section>

        <!-- Main Layout Grid -->
        <div class="content-grid">
            <!-- Left Column: Summary & Experience -->
            <div class="main-column">
                <!-- Professional Summary -->
                <div class="section-box">
                    <div class="section-heading">
                        <i class="fas fa-user-astronaut"></i> Professional Summary
                    </div>
                    <p class="summary-text">
                        Results-driven <strong>Application Lead / Site Reliability Engineer</strong> with <strong>4.6 years</strong> driving production reliability for <strong>Go365</strong>, an 8-million-user .NET and Java healthcare platform at Tata Consultancy Services (TCS). Rapidly promoted to Subject Matter Expert within 10 months and to Application Lead within 2.5 years, spearheading L2/L3 support, incident mitigation, and release readiness. Proven track record of delivering close to <strong>$10M in cumulative savings</strong> through Demand Reduction and Optimization (DRO), automated batch corrections, and structural root-cause fixes. Proficient across modern observability architectures (Dynatrace, Splunk), containerized microservices (AKS), database systems (PostgreSQL, PL/SQL), and data pipelines (Informatica).
                    </p>
                </div>

                <!-- Professional Experience -->
                <div class="section-box">
                    <div class="section-heading">
                        <i class="fas fa-briefcase"></i> Work Experience
                    </div>

                    <div class="company-header">
                        <div>
                            <div class="company-title">Tata Consultancy Services (TCS)</div>
                            <div class="company-project">Humana Project — Go365 Healthcare Platform</div>
                        </div>
                        <div class="company-date">Nov 2021 – Present</div>
                    </div>

                    <div class="timeline">
                        <!-- Role 1 -->
                        <div class="timeline-item active">
                            <div class="timeline-dot"></div>
                            <div class="role-title">
                                <span>Application Lead</span>
                                <span class="role-period">Jan 2024 – Present</span>
                            </div>
                            <div class="role-scope">Promotion within 2.5 Years • System Ownership & Financial Optimization</div>
                            <ul class="bullet-list">
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>System Ownership:</strong> Own end-to-end SRE and production support for Go365 (.NET and Java platform serving 8 million members), serving as the primary System Owner accountable for platform uptime, incident response, and release readiness.</span>
                                </li>
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>Financial Impact:</strong> Delivered approximately <strong>$10M in cumulative savings</strong> by spearheading Demand Reduction and Optimization (DRO) initiatives, automated batch corrections, and structural code fixes that cut high-priority incident recurrence.</span>
                                </li>
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>ITSM & Incident Governance:</strong> Oversee L2/L3 support workflows in ServiceNow across incident, problem, and change management pipelines, consistently surpassing strict client SLA compliance targets.</span>
                                </li>
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>Proactive Defect Reduction:</strong> Reduced recurring high-priority incident volumes through proactive structural code enhancements and autonomous batch script workflows.</span>
                                </li>
                            </ul>
                        </div>

                        <!-- Role 2 -->
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <div class="role-title">
                                <span>SRE Subject Matter Expert (SME)</span>
                                <span class="role-period">Sep 2022 – Jan 2024</span>
                            </div>
                            <div class="role-scope">Promotion within 10 Months • Observability & Knowledge Architecture</div>
                            <ul class="bullet-list">
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>Observability Architecture:</strong> Architected centralized dashboards and intelligent threshold alerting in <strong>Dynatrace</strong> and <strong>Splunk</strong> for infrastructure and application-layer monitoring, drastically reducing Mean Time to Detection (MTTD).</span>
                                </li>
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>Data & Batch Management:</strong> Administered backend workflows, complex query performance optimization, and data transformations across <strong>PL/SQL</strong>, <strong>PostgreSQL</strong>, and <strong>Informatica</strong> ETL pipelines.</span>
                                </li>
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>Knowledge Excellence:</strong> Authored and standardized foundational Knowledge-Base (KB) articles, shortening new-hire engineering ramp-up times and increasing first-contact incident resolution rates.</span>
                                </li>
                            </ul>
                        </div>

                        <!-- Role 3 -->
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <div class="role-title">
                                <span>SRE Production Support Engineer</span>
                                <span class="role-period">Nov 2021 – Sep 2022</span>
                            </div>
                            <div class="role-scope">Microservices Operations & Production Root Cause Analysis</div>
                            <ul class="bullet-list">
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>Infrastructure Triage:</strong> Monitored containerized microservices hosted on <strong>Azure Kubernetes Service (AKS)</strong>; diagnosed pod evictions, resource saturation bottlenecks, and network latency utilizing Linux command-line health inspection utilities.</span>
                                </li>
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>Batch Reliability:</strong> Supervised critical batch job execution, tracking SLA progress and orchestrating automated failover/recovery routines to secure zero daily processing interruptions.</span>
                                </li>
                                <li>
                                    <i class="fas fa-chevron-right"></i>
                                    <span><strong>Root Cause Analysis:</strong> Conducted comprehensive post-incident RCAs on complex defects, implementing structural remediations that drove a <strong>35% reduction</strong> in recurring monthly tickets.</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Column: Skills, Certifications, Education -->
            <div class="sidebar-column">
                <!-- Core Competencies -->
                <div class="section-box">
                    <div class="section-heading">
                        <i class="fas fa-sliders"></i> Core Competencies
                    </div>

                    <div class="skill-group">
                        <div class="skill-title"><i class="fas fa-cubes"></i> SRE & Frameworks</div>
                        <div class="tags-wrapper">
                            <span class="skill-tag accent">Site Reliability Engineering</span>
                            <span class="skill-tag">ITIL / ITSM</span>
                            <span class="skill-tag">Incident Management</span>
                            <span class="skill-tag">Problem Management</span>
                            <span class="skill-tag accent">Root Cause Analysis (RCA)</span>
                            <span class="skill-tag accent">DRO Program</span>
                        </div>
                    </div>

                    <div class="skill-group">
                        <div class="skill-title"><i class="fas fa-chart-line"></i> Monitoring & Observability</div>
                        <div class="tags-wrapper">
                            <span class="skill-tag accent">Dynatrace</span>
                            <span class="skill-tag accent">Splunk</span>
                            <span class="skill-tag">APM & Infrastructure</span>
                            <span class="skill-tag">Alerting & Dashboards</span>
                        </div>
                    </div>

                    <div class="skill-group">
                        <div class="skill-title"><i class="fas fa-cloud"></i> Cloud & Orchestration</div>
                        <div class="tags-wrapper">
                            <span class="skill-tag accent">Azure Kubernetes (AKS)</span>
                            <span class="skill-tag">Docker Fundamentals</span>
                            <span class="skill-tag">ArgoCD Monitoring</span>
                            <span class="skill-tag">Batch Scheduling</span>
                        </div>
                    </div>

                    <div class="skill-group">
                        <div class="skill-title"><i class="fas fa-database"></i> Databases & Data</div>
                        <div class="tags-wrapper">
                            <span class="skill-tag">PostgreSQL</span>
                            <span class="skill-tag">Oracle PL/SQL</span>
                            <span class="skill-tag">Informatica ETL</span>
                        </div>
                    </div>

                    <div class="skill-group">
                        <div class="skill-title"><i class="fas fa-code"></i> Applications & Tools</div>
                        <div class="tags-wrapper">
                            <span class="skill-tag">.NET</span>
                            <span class="skill-tag">Java</span>
                            <span class="skill-tag">Linux Server Health</span>
                            <span class="skill-tag">ServiceNow</span>
                        </div>
                    </div>
                </div>

                <!-- Certifications -->
                <div class="section-box">
                    <div class="section-heading">
                        <i class="fas fa-award"></i> Certifications
                    </div>

                    <div class="cert-card">
                        <div class="cert-icon"><i class="fab fa-microsoft"></i></div>
                        <div class="cert-info">
                            <h4>Microsoft Certified: Azure Fundamentals</h4>
                            <p>AZ-900 Exam Credential</p>
                            <span class="cert-status completed">Active / Certified</span>
                        </div>
                    </div>

                    <div class="cert-card">
                        <div class="cert-icon"><i class="fas fa-dharmachakra"></i></div>
                        <div class="cert-info">
                            <h4>Kubernetes Administrator / Azure Admin</h4>
                            <p>CKA / AZ-104 Specialization</p>
                            <span class="cert-status pursuing">Currently Pursuing</span>
                        </div>
                    </div>
                </div>

                <!-- Education -->
                <div class="section-box">
                    <div class="section-heading">
                        <i class="fas fa-graduation-cap"></i> Education
                    </div>
                    <div style="padding: 4px 0;">
                        <h4 style="font-size: 14.5px; font-weight: 700; color: var(--text-primary);">
                            Bachelor of Technology (B.Tech)
                        </h4>
                        <div style="font-size: 13.5px; color: var(--accent-blue); margin-top: 2px;">
                            Mechanical Engineering
                        </div>
                        <div style="font-size: 13px; color: var(--text-muted); margin-top: 4px;">
                            Anil Neerukonda Institute of Technology & Sciences
                        </div>
                        <div style="font-family: var(--font-mono); font-size: 12px; color: var(--text-muted); margin-top: 6px;">
                            2017 – 2021
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Interactive Copy Toast Notification -->
    <div class="toast" id="toast">
        <i class="fas fa-check-circle" style="color: var(--accent-emerald);"></i>
        <span>Contact details copied to clipboard!</span>
    </div>

    <script>
        function copyContact() {
            const info = "Sree Manoj Panuthula | +91 8978134785 | sreemanoj50@gmail.com | Hyderabad, India";
            navigator.clipboard.writeText(info).then(() => {
                const toast = document.getElementById('toast');
                toast.style.display = 'flex';
                setTimeout(() => {
                    toast.style.display = 'none';
                }, 3200);
            });
        }
    </script>
</body>
</html>
