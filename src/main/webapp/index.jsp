<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ModelDex — The Definitive Directory of Popular AI Tools & Models</title>
    
    <!-- Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>
        :root {
            --bg-canvas: #090b10;
            --bg-surface: #10141e;
            --bg-surface-alt: #161c2b;
            --border-subtle: rgba(255, 255, 255, 0.08);
            --border-focus: rgba(99, 102, 241, 0.5);
            --text-primary: #f8fafc;
            --text-secondary: #94a3b8;
            --text-muted: #64748b;
            
            --accent-primary: #6366f1;
            --accent-glow: rgba(99, 102, 241, 0.25);
            --accent-teal: #06b6d4;
            --accent-emerald: #10b981;
            --accent-amber: #f59e0b;
            --accent-rose: #f43f5e;
            --accent-purple: #a855f7;

            --font-sans: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            --font-mono: 'JetBrains Mono', monospace;
            --radius-md: 12px;
            --radius-lg: 18px;
            --radius-pill: 9999px;
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
            min-height: 100vh;
            overflow-x: hidden;
            background-image: 
                radial-gradient(circle at 15% 15%, rgba(99, 102, 241, 0.08) 0%, transparent 40%),
                radial-gradient(circle at 85% 65%, rgba(236, 72, 153, 0.06) 0%, transparent 40%);
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .container {
            max-width: 1320px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(9, 11, 16, 0.85);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid var(--border-subtle);
        }

        .nav-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 72px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-weight: 800;
            font-size: 20px;
            letter-spacing: -0.5px;
        }

        .brand-icon {
            width: 38px;
            height: 38px;
            border-radius: 10px;
            background: linear-gradient(135deg, var(--accent-primary), var(--accent-purple));
            display: grid;
            place-items: center;
            color: #fff;
            box-shadow: 0 0 20px var(--accent-glow);
        }

        .brand span span {
            color: var(--accent-teal);
        }

        .nav-stats {
            display: flex;
            align-items: center;
            gap: 20px;
            font-size: 13px;
            color: var(--text-secondary);
        }

        .stat-item {
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .stat-badge {
            font-family: var(--font-mono);
            font-weight: 700;
            color: var(--text-primary);
            background: var(--bg-surface-alt);
            padding: 2px 8px;
            border-radius: var(--radius-pill);
            border: 1px solid var(--border-subtle);
        }

        /* ========== HERO ========== */
        .hero {
            padding: 60px 0 32px;
            text-align: center;
        }

        .hero-pill {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 16px;
            border-radius: var(--radius-pill);
            background: rgba(99, 102, 241, 0.12);
            border: 1px solid rgba(99, 102, 241, 0.3);
            font-size: 12px;
            font-weight: 600;
            color: #a5b4fc;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 46px;
            font-weight: 800;
            letter-spacing: -1.2px;
            line-height: 1.15;
            margin-bottom: 16px;
        }

        .hero h1 span {
            background: linear-gradient(135deg, #fff 30%, #a5b4fc 70%, var(--accent-teal) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            font-size: 17px;
            color: var(--text-secondary);
            max-width: 680px;
            margin: 0 auto;
        }

        /* ========== CONTROLS: SEARCH & FILTER ========== */
        .controls-wrapper {
            background: var(--bg-surface);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-lg);
            padding: 20px;
            margin-bottom: 36px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
        }

        .search-row {
            display: flex;
            gap: 12px;
            margin-bottom: 18px;
            flex-wrap: wrap;
        }

        .search-box {
            flex: 1;
            min-width: 280px;
            position: relative;
        }

        .search-box i {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-muted);
        }

        .search-box input {
            width: 100%;
            height: 48px;
            background: var(--bg-canvas);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            padding: 0 16px 0 46px;
            color: var(--text-primary);
            font-size: 14px;
            font-family: inherit;
            outline: none;
            transition: var(--transition);
        }

        .search-box input:focus {
            border-color: var(--border-focus);
            box-shadow: 0 0 0 4px var(--accent-glow);
        }

        .search-box input::placeholder {
            color: var(--text-muted);
        }

        .select-group {
            display: flex;
            gap: 10px;
        }

        .select-box {
            height: 48px;
            background: var(--bg-canvas);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            padding: 0 14px;
            color: var(--text-secondary);
            font-size: 13.5px;
            font-family: inherit;
            outline: none;
            cursor: pointer;
            transition: var(--transition);
        }

        .select-box:focus {
            border-color: var(--border-focus);
        }

        .category-pills {
            display: flex;
            gap: 8px;
            overflow-x: auto;
            padding-bottom: 4px;
            scrollbar-width: none;
        }

        .category-pills::-webkit-scrollbar {
            display: none;
        }

        .pill-btn {
            border: 1px solid var(--border-subtle);
            background: var(--bg-canvas);
            color: var(--text-secondary);
            padding: 8px 18px;
            border-radius: var(--radius-pill);
            font-size: 13px;
            font-weight: 500;
            white-space: nowrap;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: var(--transition);
        }

        .pill-btn:hover {
            color: var(--text-primary);
            border-color: rgba(255, 255, 255, 0.2);
            background: var(--bg-surface-alt);
        }

        .pill-btn.active {
            background: var(--accent-primary);
            border-color: var(--accent-primary);
            color: #fff;
            box-shadow: 0 4px 14px var(--accent-glow);
        }

        /* ========== TOOL GRID ========== */
        .results-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            color: var(--text-muted);
            font-size: 14px;
        }

        .tools-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(370px, 1fr));
            gap: 24px;
            margin-bottom: 60px;
        }

        .tool-card {
            background: var(--bg-surface);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-lg);
            padding: 24px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            position: relative;
            transition: var(--transition);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        .tool-card:hover {
            transform: translateY(-4px);
            border-color: rgba(255, 255, 255, 0.2);
            box-shadow: 0 16px 36px -10px rgba(0, 0, 0, 0.6), 0 0 25px rgba(99, 102, 241, 0.15);
        }

        .card-top {
            display: flex;
            align-items: flex-start;
            justify-content: space-between;
            gap: 14px;
            margin-bottom: 16px;
        }

        .card-title-group {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .tool-avatar {
            width: 48px;
            height: 48px;
            border-radius: 12px;
            display: grid;
            place-items: center;
            font-size: 22px;
            background: var(--bg-surface-alt);
            border: 1px solid var(--border-subtle);
            color: #fff;
            flex-shrink: 0;
        }

        .tool-meta h3 {
            font-size: 18px;
            font-weight: 700;
            letter-spacing: -0.3px;
            color: var(--text-primary);
        }

        .tool-creator {
            font-size: 12.5px;
            color: var(--text-muted);
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .version-badge {
            font-family: var(--font-mono);
            font-size: 12px;
            font-weight: 700;
            padding: 4px 10px;
            border-radius: var(--radius-pill);
            background: rgba(99, 102, 241, 0.15);
            border: 1px solid rgba(99, 102, 241, 0.35);
            color: #a5b4fc;
            white-space: nowrap;
        }

        .tool-desc {
            font-size: 14px;
            color: var(--text-secondary);
            margin-bottom: 18px;
            line-height: 1.55;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .spec-pills {
            display: flex;
            flex-wrap: wrap;
            gap: 6px;
            margin-bottom: 20px;
        }

        .spec-item {
            font-size: 11.5px;
            background: var(--bg-surface-alt);
            border: 1px solid var(--border-subtle);
            color: var(--text-muted);
            padding: 3px 9px;
            border-radius: 6px;
            font-family: var(--font-mono);
        }

        .card-footer {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 16px;
            border-top: 1px solid var(--border-subtle);
        }

        .badge-type {
            font-size: 12px;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }

        .type-dot {
            width: 7px;
            height: 7px;
            border-radius: 50%;
        }

        .dot-open { background: var(--accent-emerald); box-shadow: 0 0 8px var(--accent-emerald); }
        .dot-proprietary { background: var(--accent-primary); box-shadow: 0 0 8px var(--accent-primary); }
        .dot-freemium { background: var(--accent-amber); box-shadow: 0 0 8px var(--accent-amber); }

        .btn-inspect {
            padding: 8px 16px;
            border-radius: var(--radius-md);
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border-subtle);
            color: var(--text-primary);
            font-size: 13px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .btn-inspect:hover {
            background: var(--accent-primary);
            border-color: var(--accent-primary);
            box-shadow: 0 4px 14px var(--accent-glow);
        }

        /* ========== MODAL DIALOG ========== */
        .modal-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.75);
            backdrop-filter: blur(8px);
            z-index: 100;
            display: none;
            place-items: center;
            padding: 20px;
        }

        .modal-overlay.active {
            display: grid;
        }

        .modal-card {
            background: var(--bg-surface);
            border: 1px solid rgba(255, 255, 255, 0.15);
            border-radius: var(--radius-lg);
            width: 100%;
            max-width: 680px;
            max-height: 90vh;
            overflow-y: auto;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.8);
            position: relative;
            animation: modalFadeIn 0.25s ease-out;
        }

        @keyframes modalFadeIn {
            from { opacity: 0; transform: scale(0.96); }
            to { opacity: 1; transform: scale(1); }
        }

        .modal-header {
            padding: 24px;
            border-bottom: 1px solid var(--border-subtle);
            display: flex;
            align-items: flex-start;
            justify-content: space-between;
        }

        .modal-close {
            background: var(--bg-surface-alt);
            border: 1px solid var(--border-subtle);
            color: var(--text-secondary);
            width: 34px;
            height: 34px;
            border-radius: 50%;
            cursor: pointer;
            display: grid;
            place-items: center;
            transition: var(--transition);
        }

        .modal-close:hover {
            color: #fff;
            background: var(--accent-rose);
        }

        .modal-body {
            padding: 24px;
        }

        .spec-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 16px;
            margin-bottom: 24px;
        }

        .spec-box {
            background: var(--bg-canvas);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            padding: 14px;
        }

        .spec-label {
            font-size: 11.5px;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 4px;
            font-family: var(--font-mono);
        }

        .spec-value {
            font-size: 14.5px;
            font-weight: 700;
            color: var(--text-primary);
        }

        .modal-section-title {
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            color: var(--text-muted);
            font-weight: 700;
            margin-bottom: 10px;
        }

        .feature-bullets {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-bottom: 24px;
        }

        .feature-bullets li {
            font-size: 14px;
            color: var(--text-secondary);
            display: flex;
            align-items: flex-start;
            gap: 10px;
        }

        .feature-bullets li i {
            color: var(--accent-emerald);
            margin-top: 3px;
        }

        .modal-footer {
            padding: 20px 24px;
            border-top: 1px solid var(--border-subtle);
            background: var(--bg-canvas);
            display: flex;
            justify-content: flex-end;
            gap: 12px;
            border-bottom-left-radius: var(--radius-lg);
            border-bottom-right-radius: var(--radius-lg);
        }

        .btn-link {
            padding: 10px 20px;
            border-radius: var(--radius-md);
            background: var(--accent-primary);
            color: #fff;
            font-size: 14px;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            transition: var(--transition);
        }

        .btn-link:hover {
            opacity: 0.9;
            transform: translateY(-1px);
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 768px) {
            .tools-grid {
                grid-template-columns: 1fr;
            }
            .hero h1 {
                font-size: 32px;
            }
            .nav-stats {
                display: none;
            }
            .spec-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <!-- Header Navigation -->
    <header>
        <div class="container nav-inner">
            <div class="brand">
                <div class="brand-icon"><i class="fas fa-microchip"></i></div>
                <span>Model<span>Dex</span></span>
            </div>
            
            <div class="nav-stats">
                <div class="stat-item">
                    <span>Cataloged Tools:</span>
                    <span class="stat-badge" id="totalToolsCount">0</span>
                </div>
                <div class="stat-item">
                    <span>Active Categories:</span>
                    <span class="stat-badge">6</span>
                </div>
                <div class="stat-item">
                    <span>State:</span>
                    <span class="stat-badge" style="color:var(--accent-emerald);">Live 2026</span>
                </div>
            </div>
        </div>
    </header>

    <main class="container">
        <!-- Hero Section -->
        <section class="hero">
            <div class="hero-pill">
                <i class="fas fa-layer-group"></i> 2026 Generative AI Ecosystem Registry
            </div>
            <h1>All Popular AI Tools &amp; Models<br><span>Live Versions &amp; Benchmark Specs</span></h1>
            <p>A comprehensive inventory of state-of-the-art frontier reasoning models, autonomous code agents, multimodal engines, voice synthesizers, and creative media tools.</p>
        </section>

        <!-- Search & Filtering Interface -->
        <section class="controls-wrapper">
            <div class="search-row">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" id="searchInput" placeholder="Search by model name, organization (OpenAI, Anthropic, Google...), or capability...">
                </div>
                
                <div class="select-group">
                    <select class="select-box" id="licenseFilter">
                        <option value="all">All Access Models</option>
                        <option value="Open Weights">Open Weights / Open Source</option>
                        <option value="Proprietary API">Proprietary API</option>
                        <option value="Freemium Web">Freemium Web &amp; API</option>
                    </select>

                    <select class="select-box" id="sortBy">
                        <option value="featured">Sort: Featured</option>
                        <option value="name">Sort: Name (A-Z)</option>
                        <option value="version">Sort: Latest Versions</option>
                    </select>
                </div>
            </div>

            <!-- Category Pills -->
            <div class="category-pills" id="categoryPills">
                <button class="pill-btn active" data-cat="all"><i class="fas fa-globe"></i> All AI Domains</button>
                <button class="pill-btn" data-cat="llm"><i class="fas fa-brain"></i> Frontier LLMs &amp; Reasoning</button>
                <button class="pill-btn" data-cat="code"><i class="fas fa-code"></i> Coding &amp; Agentic IDEs</button>
                <button class="pill-btn" data-cat="image"><i class="fas fa-image"></i> Image &amp; Generative Art</button>
                <button class="pill-btn" data-cat="video"><i class="fas fa-video"></i> Video &amp; World Simulators</button>
                <button class="pill-btn" data-cat="audio"><i class="fas fa-headphones"></i> Voice, Speech &amp; Music</button>
                <button class="pill-btn" data-cat="research"><i class="fas fa-compass"></i> Research &amp; Deep Search</button>
            </div>
        </section>

        <!-- Meta Count Bar -->
        <div class="results-meta">
            <div>Showing <strong id="visibleCount" style="color:var(--text-primary);">0</strong> models matching criteria</div>
            <div style="font-size:12px; font-family:var(--font-mono);"><i class="fas fa-circle-check" style="color:var(--accent-emerald);"></i> Verified against latest production releases</div>
        </div>

        <!-- Grid Container for Tool Cards -->
        <section class="tools-grid" id="toolsGrid"></section>
    </main>

    <!-- Modal for Detailed Specification Sheet -->
    <div class="modal-overlay" id="modalOverlay">
        <div class="modal-card">
            <div class="modal-header">
                <div class="card-title-group">
                    <div class="tool-avatar" id="modalIcon"><i class="fas fa-brain"></i></div>
                    <div>
                        <h3 id="modalTitle" style="font-size: 20px;">Model Name</h3>
                        <div class="tool-creator" id="modalCreator">Company Name</div>
                    </div>
                </div>
                <button class="modal-close" id="modalCloseBtn"><i class="fas fa-times"></i></button>
            </div>
            
            <div class="modal-body">
                <div class="spec-grid">
                    <div class="spec-box">
                        <div class="spec-label">Current Release Version</div>
                        <div class="spec-value" id="modalVersion">v1.0</div>
                    </div>
                    <div class="spec-box">
                        <div class="spec-label">Context Window / Capacity</div>
                        <div class="spec-value" id="modalContext">128K Tokens</div>
                    </div>
                    <div class="spec-box">
                        <div class="spec-label">Architecture / Backbone</div>
                        <div class="spec-value" id="modalArch">Transformer MoE</div>
                    </div>
                    <div class="spec-box">
                        <div class="spec-label">Access Model / License</div>
                        <div class="spec-value" id="modalLicense">Proprietary</div>
                    </div>
                </div>

                <div class="modal-section-title">Core Architecture &amp; Key Milestones</div>
                <p id="modalLongDesc" style="font-size: 14.5px; color: var(--text-secondary); margin-bottom: 20px;"></p>

                <div class="modal-section-title">Primary Capabilities</div>
                <ul class="feature-bullets" id="modalFeatures"></ul>
            </div>

            <div class="modal-footer">
                <button class="btn-inspect" id="modalDismissBtn">Close</button>
                <a href="#" target="_blank" class="btn-link" id="modalDocLink">
                    <span>Visit Documentation</span> <i class="fas fa-arrow-up-right-from-square"></i>
                </a>
            </div>
        </div>
    </div>

    <!-- JavaScript Data and Application Engine -->
    <script>
        // Database of popular AI tools, latest versions, and benchmark specifications
        const AI_REGISTRY = [
            // LLMs & REASONING
            {
                id: "claude-3-7",
                name: "Claude",
                version: "3.7 Sonnet",
                category: "llm",
                creator: "Anthropic",
                avatarIcon: "fa-solid fa-feather-pointed",
                license: "Proprietary API",
                context: "200,000 tokens",
                architecture: "Hybrid Reasoning LLM (Standard + Extended Thinking)",
                description: "Frontier hybrid reasoning model capable of instantaneous responses alongside deep, continuous chain-of-thought processing.",
                specs: ["Hybrid Thinking", "200K Context", "SWE-bench Leader", "Computer Use API"],
                longDesc: "Claude 3.7 Sonnet introduces the first hybrid reasoning architecture, allowing developers to dynamically allocate reasoning token budgets or run standard inference. Excels at complex software engineering, enterprise agentic actions, and long-horizon tasks.",
                features: [
                    "Dynamic reasoning token budget control from 0 to 64k tokens",
                    "State-of-the-art SWE-bench Verified coding scores",
                    "Native support for automated computer use and tool calling",
                    "Robust document comprehension across dense financial and legal texts"
                ],
                url: "https://www.anthropic.com/claude"
            },
            {
                id: "o3-mini",
                name: "OpenAI o3-mini",
                version: "o3-mini (High/Med/Low)",
                category: "llm",
                creator: "OpenAI",
                avatarIcon: "fa-solid fa-infinity",
                license: "Proprietary API",
                context: "200,000 tokens",
                architecture: "Reinforcement-Learned Reasoning Model",
                description: "Specialized STEM reasoning model tailored for complex math, algorithmic competition coding, and science proofs.",
                specs: ["STEM Specialist", "Variable Effort", "Fast Inference", "Function Calling"],
                longDesc: "o3-mini delivers deep logical reasoning at low cost and rapid speeds, giving developers three distinct reasoning effort parameters (Low, Medium, High) to balance latency and problem-solving depth.",
                features: [
                    "Exceptional performance on AIME math and Codeforces benchmarks",
                    "Configurable reasoning effort to balance speed vs. depth",
                    "Structured JSON outputs and native tool integration",
                    "High throughput optimized for high-volume agentic loops"
                ],
                url: "https://openai.com"
            },
            {
                id: "gpt-4o",
                name: "GPT-4o",
                version: "Omni (2024-11-20)",
                category: "llm",
                creator: "OpenAI",
                avatarIcon: "fa-solid fa-bolt",
                license: "Freemium Web",
                context: "128,000 tokens",
                architecture: "End-to-End Native Multimodal Transformer",
                description: "Flagship omni model unifying native real-time audio conversation, computer vision, code generation, and text reasoning.",
                specs: ["Real-time Voice", "Vision Input", "128K Context", "Global Knowledge"],
                longDesc: "GPT-4o trains audio, vision, and text end-to-end within a single neural network, enabling natural human-like voice conversational latencies as fast as 232 milliseconds.",
                features: [
                    "Native audio-in, audio-out with emotion and cadence modulation",
                    "High-resolution vision processing for screenshots, diagrams, and documents",
                    "Fast inference with widespread developer SDK support",
                    "Massive language support spanning 50+ languages"
                ],
                url: "https://openai.com/gpt-4o"
            },
            {
                id: "deepseek-r1",
                name: "DeepSeek-R1",
                version: "Release 1.0",
                category: "llm",
                creator: "DeepSeek AI",
                avatarIcon: "fa-solid fa-water",
                license: "Open Weights",
                context: "128,000 tokens",
                architecture: "671B Parameter MoE (37B Activated)",
                description: "Milestone open-weight reasoning model developed purely through large-scale reinforcement learning without supervised warmups.",
                specs: ["Open Weights", "MIT License", "671B MoE", "Native Chain-of-Thought"],
                longDesc: "DeepSeek-R1 demonstrated that reasoning behavior can be self-taught via large-scale RL incentives. Offers fully transparent reasoning tokens and distilled open-source checkpoints (1.5B to 70B parameters).",
                features: [
                    "Permissive MIT open-weights license for commercial inference & distillation",
                    "Competitive with top proprietary reasoning systems on math & code",
                    "Sparse Mixture-of-Experts for cost-efficient local multi-GPU hosting",
                    "Includes pre-distilled checkpoints based on Qwen and Llama"
                ],
                url: "https://github.com/deepseek-ai/DeepSeek-R1"
            },
            {
                id: "gemini-2-flash",
                name: "Gemini",
                version: "2.0 Flash / Pro",
                category: "llm",
                creator: "Google DeepMind",
                avatarIcon: "fa-brands fa-google",
                license: "Freemium Web",
                context: "1,000,000+ tokens",
                architecture: "Native Multimodal MoE",
                description: "High-speed multimodal powerhouse boasting 1M+ token context windows and multimodal audio/video live streaming capabilities.",
                specs: ["1M+ Context", "Native Audio/Video Stream", "Sub-second TTFT", "Google Workspace"],
                longDesc: "Gemini 2.0 provides ultra-fast first-token latency, native tool calling (Google Search, Python code interpreter), and continuous video/audio ingestion designed for autonomous assistant agents.",
                features: [
                    "Massive 1-million-token context window for full codebase and video analysis",
                    "Multimodal Live API for bidirectional real-time video/audio streaming",
                    "Deep grounding integration with Google Search and enterprise systems",
                    "Extreme cost-efficiency on Google AI Studio & Vertex AI"
                ],
                url: "https://ai.google.dev"
            },
            {
                id: "llama-3-3",
                name: "Llama",
                version: "3.3 70B Instruct",
                category: "llm",
                creator: "Meta AI",
                avatarIcon: "fa-solid fa-network-wired",
                license: "Open Weights",
                context: "128,000 tokens",
                architecture: "Dense Decoder-only Transformer",
                description: "Meta's flagship open-weights model matching 405B capabilities at a fraction of the hardware footprint.",
                specs: ["Open Weights", "128K Context", "Llama Community License", "Tool Calling"],
                longDesc: "Llama 3.3 70B incorporates advanced knowledge distillation from the 405B flagship, delivering tier-one enterprise natural language understanding, translation, and code generation on standard dual-GPU workstations.",
                features: [
                    "Runs efficiently on consumer-grade quad-RTX 4090 or single H100 rigs",
                    "State-of-the-art multilingual and translation benchmark results",
                    "Fine-tuned for agentic workflow tool execution and structured generation",
                    "Massive ecosystem support across Ollama, vLLM, and Hugging Face"
                ],
                url: "https://llama.meta.com"
            },

            // CODING & AGENTIC IDEs
            {
                id: "cursor-ide",
                name: "Cursor",
                version: "v0.45+",
                category: "code",
                creator: "Anysphere",
                avatarIcon: "fa-solid fa-terminal",
                license: "Freemium Web",
                context: "Full Workspace Index",
                architecture: "Forked VS Code with Native Multi-File AI Agent",
                description: "The premier AI-native code editor featuring Composer multi-file creation, fast semantic indexing, and shadow workspaces.",
                specs: ["Composer Agent", "Multi-Model", "Semantic Search", "Shadow Workspace"],
                longDesc: "Cursor seamlessly integrates multi-file diffing, custom prompt rules (.cursorrules), and real-time project re-indexing to allow developers to build complex software stacks in plain English.",
                features: [
                    "Composer agent that generates, edits, and debugs code across 20+ files simultaneously",
                    "Instant toggle between Claude 3.7 Sonnet, o3-mini, and custom API keys",
                    "Shadow Workspace executing linter rules and tests in background isolation",
                    "Predictive multi-token editing based on immediate cursor movement"
                ],
                url: "https://cursor.com"
            },
            {
                id: "windsurf-editor",
                name: "Windsurf",
                version: "Cascade 1.2",
                category: "code",
                creator: "Codeium",
                avatarIcon: "fa-solid fa-wind",
                license: "Freemium Web",
                context: "Deep Context Engine",
                architecture: "Collaborative Agentic IDE",
                description: "Next-generation IDE that synchronizes developer intent with an autonomous AI collaborator named Cascade.",
                specs: ["Cascade Flow", "Terminal Awareness", "Auto-Diagnostics", "Real-Time Diff"],
                longDesc: "Windsurf pioneered the concept of 'Flows' where the AI agent and human work side-by-side: Cascade inspects terminals, runs build commands, notices compilation errors, and resolves them without manual prompts.",
                features: [
                    "Deep terminal execution and shell environment understanding",
                    "Continuous context awareness tracking code changes across branches",
                    "Proactive syntax and build error auto-remediation",
                    "Built upon Codeium's proprietary low-latency enterprise indexer"
                ],
                url: "https://codeium.com/windsurf"
            },
            {
                id: "github-copilot",
                name: "GitHub Copilot",
                version: "Copilot Workspace / 2026",
                category: "code",
                creator: "GitHub / Microsoft",
                avatarIcon: "fa-brands fa-github",
                license: "Proprietary API",
                context: "Repository Graph Context",
                architecture: "Enterprise AI Developer Platform",
                description: "The enterprise standard for code autocomplete, GitHub Issue-to-PR pipelines, and cross-repo intelligence.",
                specs: ["GitHub Integration", "Multi-Model Toggle", "Copilot Edits", "Enterprise Security"],
                longDesc: "Evolving from inline autocompletion into full software lifecycle automation, Copilot now plans entire pull requests, manages vulnerability patching, and supports multiple frontier models.",
                features: [
                    "Copilot Workspace for turning GitHub issues directly into tested pull requests",
                    "Choice of underlying models including Claude 3.5/3.7, GPT-4o, and Gemini",
                    "Enterprise data indemnity and vulnerability scanning integrations",
                    "Seamless IDE extensions for VS Code, JetBrains, Visual Studio, and Neovim"
                ],
                url: "https://github.com/features/copilot"
            },

            // IMAGE GENERATION
            {
                id: "flux-1",
                name: "FLUX.1",
                version: "v1.1 [pro] / [dev]",
                category: "image",
                creator: "Black Forest Labs",
                avatarIcon: "fa-solid fa-shapes",
                license: "Open Weights",
                context: "Up to 4K Native",
                architecture: "12B Parameter Rectified Flow Transformer",
                description: "The reigning visual standard in open-weights image synthesis, renowned for photorealism, typography, and anatomy.",
                specs: ["Open Weights", "12B Parameters", "Perfect Typography", "Photoreal Hands"],
                longDesc: "Engineered by the original creators of Stable Diffusion, FLUX.1 uses a hybrid diffusion-transformer (DiT) architecture that accurately adheres to complex multi-sentence prompts and text rendering.",
                features: [
                    "Flawless rendering of typography and signage within complex scenes",
                    "Superior skin textures, lighting physics, and complex hand anatomies",
                    "Open weights available in Dev and Schnell (4-step distillation) formats",
                    "Ultra-fast API inference via Black Forest Labs and Fal.ai"
                ],
                url: "https://blackforestlabs.ai"
            },
            {
                id: "midjourney",
                name: "Midjourney",
                version: "v6.1 / v7 Alpha",
                category: "image",
                creator: "Midjourney Inc.",
                avatarIcon: "fa-solid fa-palette",
                license: "Proprietary API",
                context: "Web & Discord Interface",
                architecture: "Proprietary Latent Diffusion",
                description: "Unrivaled artistic cohesion, cinematic aesthetics, and intuitive visual storytelling platform.",
                specs: ["Cinematic Lighting", "Web Editor", "Inpainting / Outpainting", "Style Tuner"],
                longDesc: "Midjourney remains the visual benchmark for concept artists, cinematographers, and graphic designers, boasting powerful web canvas manipulation, texture coherence, and character consistency features.",
                features: [
                    "Industry-standard cinematic lighting, reflections, and textures",
                    "Powerful Web UI with Pan, Zoom, Inpaint, and Variation matrices",
                    "Style Reference (--sref) and Character Reference (--cref) consistency mechanisms",
                    "High-resolution 2048x2048 upscalers without hallucinated artifacts"
                ],
                url: "https://www.midjourney.com"
            },
            {
                id: "ideogram",
                name: "Ideogram",
                version: "v2.0",
                category: "image",
                creator: "Ideogram AI",
                avatarIcon: "fa-solid fa-font",
                license: "Freemium Web",
                context: "Native Graphic Typography",
                architecture: "Specialized Text-Image Diffusion",
                description: "The gold standard for graphic design generation, branding, typography, posters, and logo creation.",
                specs: ["Graphic Design", "Logo Maker", "Typography Leader", "Color Palette Control"],
                longDesc: "Ideogram 2.0 solves the hardest challenges in AI design: rendering lengthy paragraphs, t-shirt vectors, corporate branding, and distinct color-palette guidelines on command.",
                features: [
                    "Unmatched precision for graphic design, logos, vector stickers, and poster art",
                    "Strict multi-line spelling accuracy with arbitrary font styling",
                    "Pre-set artistic palettes (Anime, Graphic, Realistic, 3D Render)",
                    "Web editor with background removal and asset vectorization"
                ],
                url: "https://ideogram.ai"
            },

            // VIDEO & WORLD SIMULATORS
            {
                id: "runway-gen3",
                name: "Runway Gen-3",
                version: "Alpha Turbo",
                category: "video",
                creator: "Runway",
                avatarIcon: "fa-solid fa-clapperboard",
                license: "Freemium Web",
                context: "High-Definition 10-sec Clips",
                architecture: "Multimodal Video Generation DiT",
                description: "Hollywood-grade video generation engine providing granular camera directors, motion brushes, and lip-sync.",
                specs: ["Camera Control", "Motion Brush", "Lip Sync", "4K Upscaling"],
                longDesc: "Runway Gen-3 Alpha provides fine-grained temporal fidelity, simulating complex physical interactions like water splashes, cloth simulations, and fast cinematic panning.",
                features: [
                    "Director Mode: precise speed, pan, tilt, zoom, and roll camera commands",
                    "Motion Brush for targeting animation to selective static image pixels",
                    "Gen-3 Alpha Turbo: 7x faster generation for real-time editorial workflows",
                    "Integrated audio sound-effects generation timed to visual dynamics"
                ],
                url: "https://runwayml.com"
            },
            {
                id: "kling-ai",
                name: "Kling AI",
                version: "v1.5 Pro",
                category: "video",
                creator: "Kuaishou",
                avatarIcon: "fa-solid fa-film",
                license: "Freemium Web",
                context: "Up to 1080p 30fps",
                architecture: "3D Spatiotemporal Joint Attention DiT",
                description: "High-dynamic physical simulation engine capable of generating cinematic, coherent video sequences up to 2 minutes.",
                specs: ["Physics Simulation", "1080p Full HD", "Extended Duration", "Motion Trajectory"],
                longDesc: "Kling 1.5 achieved global acclaim for handling intense character motion, complex gymnastics, eating animations, and vehicle dynamics with realistic physics and minimal morphing.",
                features: [
                    "Simulation of genuine physical real-world dynamics and collision mechanics",
                    "Motion Trajectory tool to paint custom paths for objects across 3D space",
                    "Generate clips up to 2 full minutes with prompt extension chains",
                    "Native 1080p cinematic exports at 30 frames per second"
                ],
                url: "https://klingai.com"
            },
            {
                id: "openai-sora",
                name: "Sora",
                version: "v1.0 (Production)",
                category: "video",
                creator: "OpenAI",
                avatarIcon: "fa-solid fa-eye",
                license: "Proprietary API",
                context: "1080p / Multiple Aspect Ratios",
                architecture: "Spatiotemporal Video Diffusion Transformer",
                description: "Groundbreaking world-simulator generating up to 60-second scenes with persistent 3D geometry and characters.",
                specs: ["World Simulator", "Persistent 3D", "Multi-shot Sequences", "Storyboarding"],
                longDesc: "Sora operates as a visual world simulator, treating video as collections of spacetime latent patches. Accurately maintains subject identity across multiple dramatic cuts and perspective shifts.",
                features: [
                    "Unsurpassed multi-shot temporal persistence and scene identity consistency",
                    "Generates across 16:9 widescreen, 9:16 vertical, and cinematic ratios",
                    "Understands physical affordances, lighting shadows, and environmental reflections",
                    "Storyboarding workbench for visual directors and ad production"
                ],
                url: "https://openai.com/sora"
            },

            // AUDIO, VOICE & MUSIC
            {
                id: "elevenlabs",
                name: "ElevenLabs",
                version: "Voice Engine v3",
                category: "audio",
                creator: "ElevenLabs",
                avatarIcon: "fa-solid fa-microphone-lines",
                license: "Freemium Web",
                context: "Ultra-low Latency API",
                architecture: "Neural Speech Synthesizer & Audio DiT",
                description: "The gold standard in voice cloning, conversational latency, multi-lingual dubbing, and expressive sound design.",
                specs: ["Zero-shot Voice Clone", "32+ Languages", "Conversational AI Agent", "Sound FX"],
                longDesc: "ElevenLabs powers realistic voice synthesis with nuanced emotional delivery, whispers, laughter, and gasps. Its Conversational AI SDK powers autonomous telephone and customer agents globally.",
                features: [
                    "Instant voice cloning from just a 1-minute audio recording sample",
                    "Conversational AI platform with sub-400ms end-to-end voice latency",
                    "Automatic video dubbing with speaker translation and lip synchronization",
                    "Text-to-sound-effects generator for game developers and filmmakers"
                ],
                url: "https://elevenlabs.io"
            },
            {
                id: "suno-ai",
                name: "Suno",
                version: "v4",
                category: "audio",
                creator: "Suno Inc.",
                avatarIcon: "fa-solid fa-music",
                license: "Freemium Web",
                context: "Full 4-minute Songs",
                architecture: "Unified Audio Transformer",
                description: "Instant studio-quality music generator synthesizing rich vocals, live instruments, and radio-ready production.",
                specs: ["Full 4-min Songs", "Stem Separation", "Studio Vocals", "Genre Fusion"],
                longDesc: "Suno v4 elevates AI music generation to commercial release quality, enabling anyone to craft complete multi-verse tracks across pop, rock, jazz, classical, and electronic subgenres in seconds.",
                features: [
                    "Complete song structure: intro, verses, chorus, bridges, and guitar/synth solos",
                    "Stem splitting: separate vocals, bass, drums, and instrumental tracks",
                    "Studio-grade audio fidelity without muddy frequencies or spectral hiss",
                    "Custom lyrics support with rhyme scheme and meter adherence"
                ],
                url: "https://suno.com"
            },
            {
                id: "whisper",
                name: "Whisper",
                version: "large-v3-turbo",
                category: "audio",
                creator: "OpenAI",
                avatarIcon: "fa-solid fa-ear-listen",
                license: "Open Weights",
                context: "Arbitrary Audio Streams",
                architecture: "Weakly-Supervised Sequence-to-Sequence",
                description: "Universal automatic speech recognition (ASR) standard offering fast transcription and translation across 99+ languages.",
                specs: ["Open Weights", "MIT License", "99+ Languages", "Timestamps & VAD"],
                longDesc: "Whisper large-v3-turbo reduces parameter overhead while accelerating transcription speeds by over 8x compared to the original v3, operating robustly under intense background noise and regional accents.",
                features: [
                    "Near-zero word error rate (WER) across diverse accents and noisy environments",
                    "Word-level and sentence-level timestamp alignment for subtitling",
                    "Open weights runnable on local CPUs, edge devices, and Apple Silicon chips",
                    "Direct translation of non-English spoken languages into English text"
                ],
                url: "https://github.com/openai/whisper"
            },

            // RESEARCH & DEEP SEARCH
            {
                id: "perplexity",
                name: "Perplexity AI",
                version: "Sonar / Deep Research",
                category: "research",
                creator: "Perplexity",
                avatarIcon: "fa-solid fa-magnifying-glass-chart",
                license: "Freemium Web",
                context: "Multi-Search Synthesis",
                architecture: "Real-time Retrieval-Augmented Generator",
                description: "Conversational search and deep research engine synthesizing live internet sources with inline academic citations.",
                specs: ["Deep Research", "Inline Citations", "Source Verification", "Pro Reasoning"],
                longDesc: "Perplexity's Deep Research feature autonomously browses hundreds of web pages, generates comprehensive multi-page investigative reports, checks opposing perspectives, and provides footnotes.",
                features: [
                    "Deep Research agent that autonomously executes iterative multi-query searches",
                    "Strict citation attribution linking claims directly to verified URLs",
                    "Collections & Spaces for organizing research documents and prompts",
                    "Custom model selection (Sonar, Claude 3.7, o3-mini, Gemini Pro)"
                ],
                url: "https://www.perplexity.ai"
            },
            {
                id: "notebooklm",
                name: "NotebookLM",
                version: "Gemini 2.0 Engine",
                category: "research",
                creator: "Google",
                avatarIcon: "fa-solid fa-book-open",
                license: "Freemium Web",
                context: "Up to 50 Sources (25M words)",
                architecture: "Grounded Document Synthesis",
                description: "Personalized AI research assistant that operates exclusively on your uploaded PDFs, Google Docs, and YouTube links.",
                specs: ["Strict Grounding", "Audio Overviews", "Zero Hallucination", "Study Guide Maker"],
                longDesc: "NotebookLM grounds Gemini strictly within user-provided sources. Renowned for its viral 'Audio Overviews' which turn boring research papers into engaging, two-host conversational podcast discussions.",
                features: [
                    "Audio Overview: Generates realistic two-host conversational AI podcasts",
                    "Strict grounding guarantees answers cite only user-uploaded documents",
                    "Auto-generates study guides, FAQ sheets, timelines, and briefing docs",
                    "Direct integration with Google Drive, YouTube URLs, PDFs, and Markdown notes"
                ],
                url: "https://notebooklm.google.com"
            }
        ];

        // State Management
        let activeCategory = "all";
        let searchQuery = "";
        let selectedLicense = "all";
        let currentSort = "featured";

        // DOM References
        const toolsGrid = document.getElementById("toolsGrid");
        const categoryPills = document.getElementById("categoryPills");
        const searchInput = document.getElementById("searchInput");
        const licenseFilter = document.getElementById("licenseFilter");
        const sortBy = document.getElementById("sortBy");
        const visibleCount = document.getElementById("visibleCount");
        const totalToolsCount = document.getElementById("totalToolsCount");

        // Modal Elements
        const modalOverlay = document.getElementById("modalOverlay");
        const modalCloseBtn = document.getElementById("modalCloseBtn");
        const modalDismissBtn = document.getElementById("modalDismissBtn");
        const modalTitle = document.getElementById("modalTitle");
        const modalCreator = document.getElementById("modalCreator");
        const modalVersion = document.getElementById("modalVersion");
        const modalContext = document.getElementById("modalContext");
        const modalArch = document.getElementById("modalArch");
        const modalLicense = document.getElementById("modalLicense");
        const modalLongDesc = document.getElementById("modalLongDesc");
        const modalFeatures = document.getElementById("modalFeatures");
        const modalDocLink = document.getElementById("modalDocLink");
        const modalIcon = document.getElementById("modalIcon");

        // Initialize App
        function initApp() {
            totalToolsCount.textContent = AI_REGISTRY.length;
            renderTools();
            bindEvents();
        }

        // Filter and Sort Engine
        function getFilteredTools() {
            return AI_REGISTRY.filter(tool => {
                // Category Filter
                const matchesCat = activeCategory === "all" || tool.category === activeCategory;

                // License Filter
                const matchesLicense = selectedLicense === "all" || tool.license === selectedLicense;

                // Search Query Filter
                const q = searchQuery.toLowerCase().trim();
                const matchesSearch = !q || 
                    tool.name.toLowerCase().includes(q) ||
                    tool.creator.toLowerCase().includes(q) ||
                    tool.version.toLowerCase().includes(q) ||
                    tool.description.toLowerCase().includes(q) ||
                    tool.specs.some(s => s.toLowerCase().includes(q));

                return matchesCat && matchesLicense && matchesSearch;
            }).sort((a, b) => {
                if (currentSort === "name") {
                    return a.name.localeCompare(b.name);
                } else if (currentSort === "version") {
                    return b.version.localeCompare(a.version);
                }
                return 0; // Default featured order
            });
        }

        // Render Card Elements
        function renderTools() {
            const filtered = getFilteredTools();
            visibleCount.textContent = filtered.length;
            toolsGrid.innerHTML = "";

            if (filtered.length === 0) {
                toolsGrid.innerHTML = `
                    <div style="grid-column: 1 / -1; text-align: center; padding: 60px 20px; background: var(--bg-surface); border: 1px dashed var(--border-subtle); border-radius: var(--radius-lg);">
                        <i class="fas fa-satellite-dish" style="font-size: 36px; color: var(--text-muted); margin-bottom: 14px;"></i>
                        <h3 style="font-size: 18px; margin-bottom: 6px;">No AI models found</h3>
                        <p style="color: var(--text-secondary); font-size: 14px;">Try modifying your search keywords or switching category filters.</p>
                    </div>
                `;
                return;
            }

            filtered.forEach(tool => {
                const card = document.createElement("div");
                card.className = "tool-card";

                // License Dot Color
                let dotClass = "dot-proprietary";
                if (tool.license.includes("Open")) dotClass = "dot-open";
                if (tool.license.includes("Freemium")) dotClass = "dot-freemium";

                card.innerHTML = `
                    <div>
                        <div class="card-top">
                            <div class="card-title-group">
                                <div class="tool-avatar"><i class="${tool.avatarIcon}"></i></div>
                                <div class="tool-meta">
                                    <h3>${tool.name}</h3>
                                    <div class="tool-creator">${tool.creator}</div>
                                </div>
                            </div>
                            <span class="version-badge">${tool.version}</span>
                        </div>

                        <p class="tool-desc">${tool.description}</p>

                        <div class="spec-pills">
                            ${tool.specs.map(spec => `<span class="spec-item">${spec}</span>`).join("")}
                        </div>
                    </div>

                    <div class="card-footer">
                        <div class="badge-type">
                            <span class="type-dot ${dotClass}"></span>
                            <span style="color: var(--text-secondary);">${tool.license}</span>
                        </div>
                        <button class="btn-inspect" onclick="openModal('${tool.id}')">
                            <span>Inspect</span> <i class="fas fa-chevron-right" style="font-size: 11px;"></i>
                        </button>
                    </div>
                `;
                toolsGrid.appendChild(card);
            });
        }

        // Open Modal Dialog
        window.openModal = function(toolId) {
            const tool = AI_REGISTRY.find(t => t.id === toolId);
            if (!tool) return;

            modalTitle.textContent = tool.name;
            modalCreator.textContent = tool.creator;
            modalVersion.textContent = tool.version;
            modalContext.textContent = tool.context;
            modalArch.textContent = tool.architecture;
            modalLicense.textContent = tool.license;
            modalLongDesc.textContent = tool.longDesc;
            modalDocLink.href = tool.url;
            modalIcon.innerHTML = `<i class="${tool.avatarIcon}"></i>`;

            modalFeatures.innerHTML = tool.features
                .map(feat => `<li><i class="fas fa-check-circle"></i><span>${feat}</span></li>`)
                .join("");

            modalOverlay.classList.add("active");
            document.body.style.overflow = "hidden";
        };

        // Close Modal
        function closeModal() {
            modalOverlay.classList.remove("active");
            document.body.style.overflow = "auto";
        }

        // Event Bindings
        function bindEvents() {
            // Category Buttons
            categoryPills.addEventListener("click", (e) => {
                const btn = e.target.closest(".pill-btn");
                if (!btn) return;
                categoryPills.querySelectorAll(".pill-btn").forEach(b => b.classList.remove("active"));
                btn.classList.add("active");
                activeCategory = btn.dataset.cat;
                renderTools();
            });

            // Search Input
            searchInput.addEventListener("input", (e) => {
                searchQuery = e.target.value;
                renderTools();
            });

            // License Select
            licenseFilter.addEventListener("change", (e) => {
                selectedLicense = e.target.value;
                renderTools();
            });

            // Sorting Select
            sortBy.addEventListener("change", (e) => {
                currentSort = e.target.value;
                renderTools();
            });

            // Modal Interactions
            modalCloseBtn.addEventListener("click", closeModal);
            modalDismissBtn.addEventListener("click", closeModal);
            modalOverlay.addEventListener("click", (e) => {
                if (e.target === modalOverlay) closeModal();
            });

            // Keyboard Escape Key for Modal
            window.addEventListener("keydown", (e) => {
                if (e.key === "Escape" && modalOverlay.classList.contains("active")) {
                    closeModal();
                }
            });
        }

        // Run On Page Ready
        document.addEventListener("DOMContentLoaded", initApp);
    </script>
</body>
</html>
