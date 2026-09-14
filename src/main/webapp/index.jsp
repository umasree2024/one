<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Vintage Quality Goods</title>

    <!-- Retro Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Righteous&family=Space+Mono:ital,wght@0,400;0,700;1,400&family=Bungee&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== RETRO ROOT VARIABLES ========== */
        :root {
            --bg: #f5eedc;
            --bg-paper: #fffdf5;
            --ink: #1f1d1d;
            --primary: #282425;
            --accent-orange: #e76f51;
            --accent-rust: #c84b31;
            --accent-mustard: #e9c46a;
            --accent-teal: #2a9d8f;
            --accent-olive: #606c38;
            --muted: #5e5955;
            --border-thick: 2.5px solid var(--ink);
            --border-thin: 1.5px solid var(--ink);
            --retro-shadow: 4px 4px 0 var(--ink);
            --retro-shadow-lg: 6px 6px 0 var(--ink);
            --retro-shadow-hover: 7px 7px 0 var(--ink);
            --radius-retro: 8px;
            --radius-pill: 999px;
            --container: 1200px;
        }

        /* ========== RESET & BASE ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'Space Mono', monospace;
            background-color: var(--bg);
            background-image: radial-gradient(rgba(31, 29, 29, 0.08) 1px, transparent 0);
            background-size: 20px 20px;
            color: var(--ink);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ========== RETRO STRIPE ACCENT BAR ========== */
        .retro-stripe-bar {
            height: 8px;
            background: repeating-linear-gradient(
                90deg,
                var(--accent-rust) 0px 20px,
                var(--accent-orange) 20px 40px,
                var(--accent-mustard) 40px 60px,
                var(--accent-teal) 60px 80px
            );
            border-bottom: var(--border-thin);
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 24px;
            font-family: 'Righteous', cursive;
            font-size: 16px;
            letter-spacing: 0.5px;
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            box-shadow: var(--retro-shadow);
            transition: all 0.15s ease;
            text-transform: uppercase;
        }
        .btn:hover {
            transform: translate(-2px, -2px);
            box-shadow: var(--retro-shadow-hover);
        }
        .btn:active {
            transform: translate(2px, 2px);
            box-shadow: 2px 2px 0 var(--ink);
        }
        .btn-primary {
            background: var(--accent-orange);
            color: #fff;
        }
        .btn-primary:hover {
            background: var(--accent-rust);
        }
        .btn-secondary {
            background: var(--accent-mustard);
            color: var(--ink);
        }
        .btn-ghost {
            background: var(--bg-paper);
            color: var(--ink);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: var(--bg-paper);
            border-bottom: var(--border-thick);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
            min-height: 72px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Righteous', cursive;
            font-size: 26px;
            letter-spacing: -0.5px;
            color: var(--ink);
        }
        .brand .badge-tag {
            background: var(--accent-mustard);
            border: var(--border-thin);
            font-size: 11px;
            padding: 2px 6px;
            border-radius: 4px;
            font-family: 'Space Mono', monospace;
            font-weight: 700;
        }
        .brand i {
            color: var(--accent-orange);
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 8px 14px;
            border: var(--border-thin);
            border-radius: var(--radius-retro);
            font-size: 13px;
            font-weight: 700;
            background: var(--bg);
            transition: all 0.15s ease;
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--accent-mustard);
            box-shadow: 2px 2px 0 var(--ink);
            transform: translate(-1px, -1px);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .header-actions .icon-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: var(--radius-retro);
            border: var(--border-thick);
            background: var(--bg-paper);
            box-shadow: 2px 2px 0 var(--ink);
            font-size: 16px;
            transition: all 0.15s ease;
        }
        .header-actions .icon-btn:hover {
            transform: translate(-2px, -2px);
            box-shadow: var(--retro-shadow);
            background: var(--accent-mustard);
        }

        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent-rust);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: var(--border-thin);
            box-shadow: 1px 1px 0 var(--ink);
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--bg-paper);
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            padding: 0 12px;
            box-shadow: 3px 3px 0 var(--ink);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 8px 6px;
            font-size: 13px;
        }
        .search-wrap button {
            color: var(--ink);
            padding: 6px;
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            background: var(--accent-mustard);
            box-shadow: 3px 3px 0 var(--ink);
            font-size: 18px;
        }

        #mobileMenu {
            display: none;
            background: var(--bg-paper);
            border-top: var(--border-thick);
            padding: 16px 0;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 10px 16px;
            border: var(--border-thin);
            border-radius: var(--radius-retro);
            background: var(--bg);
            font-weight: 700;
        }

        /* ========== HERO (VINTAGE CATALOG BANNER) ========== */
        .hero {
            position: relative;
            background: var(--accent-mustard);
            border: var(--border-thick);
            box-shadow: var(--retro-shadow-lg);
            border-radius: var(--radius-retro);
            margin: 28px 24px 0;
            padding: 56px 40px;
            overflow: hidden;
        }
        .hero::before {
            content: "";
            position: absolute;
            inset: 0;
            background: repeating-linear-gradient(
                -45deg,
                rgba(0, 0, 0, 0.03),
                rgba(0, 0, 0, 0.03) 12px,
                transparent 12px,
                transparent 24px
            );
            pointer-events: none;
        }
        .hero .badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: var(--accent-rust);
            color: #fff;
            padding: 4px 14px;
            border: var(--border-thin);
            border-radius: var(--radius-pill);
            box-shadow: 2px 2px 0 var(--ink);
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            margin-bottom: 18px;
        }
        .hero h1 {
            font-family: 'Righteous', cursive;
            font-size: 54px;
            line-height: 1.05;
            color: var(--ink);
            margin-bottom: 14px;
            text-shadow: 2px 2px 0 rgba(255, 255, 255, 0.6);
        }
        .hero p {
            font-size: 16px;
            max-width: 540px;
            margin-bottom: 24px;
            color: var(--ink);
            font-weight: 500;
        }
        .hero .actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* ========== SECTIONS ========== */
        .section {
            padding: 48px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            margin-bottom: 24px;
            gap: 16px;
            border-bottom: var(--border-thick);
            padding-bottom: 12px;
        }
        .section-header h2 {
            font-family: 'Righteous', cursive;
            font-size: 32px;
            letter-spacing: 0.5px;
        }
        .section-header p {
            font-size: 13px;
            color: var(--muted);
        }
        .section-header .view-all {
            font-family: 'Righteous', cursive;
            font-size: 14px;
            color: var(--accent-rust);
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .section-header .view-all:hover {
            text-decoration: underline;
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-card {
            background: var(--bg-paper);
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            padding: 20px 14px;
            text-align: center;
            box-shadow: var(--retro-shadow);
            transition: all 0.15s ease;
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translate(-3px, -3px);
            box-shadow: var(--retro-shadow-hover);
            background: var(--accent-mustard);
        }
        .cat-card .icon-wrap {
            width: 52px;
            height: 52px;
            border: var(--border-thin);
            border-radius: 50%;
            background: var(--accent-orange);
            color: #fff;
            display: grid;
            place-items: center;
            font-size: 20px;
            margin: 0 auto 10px;
            box-shadow: 2px 2px 0 var(--ink);
        }
        .cat-card h4 {
            font-family: 'Righteous', cursive;
            font-size: 15px;
            margin-bottom: 4px;
        }
        .cat-card .count {
            font-size: 11px;
            color: var(--muted);
        }

        /* ========== PRODUCTS GRID ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }
        .product-card {
            background: var(--bg-paper);
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            box-shadow: var(--retro-shadow);
            display: flex;
            flex-direction: column;
            overflow: hidden;
            transition: all 0.15s ease;
        }
        .product-card:hover {
            transform: translate(-3px, -3px);
            box-shadow: var(--retro-shadow-hover);
        }
        .product-card .img-wrap {
            position: relative;
            background: #eee5d3;
            border-bottom: var(--border-thick);
            aspect-ratio: 1 / 1;
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: contrast(1.05) sepia(0.12);
            transition: transform 0.25s ease;
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.05);
        }
        .product-card .badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background: var(--accent-rust);
            color: #fff;
            font-family: 'Righteous', cursive;
            font-size: 11px;
            padding: 3px 10px;
            border: var(--border-thin);
            border-radius: 4px;
            box-shadow: 2px 2px 0 var(--ink);
            text-transform: uppercase;
        }
        .product-card .badge.sale {
            background: var(--accent-mustard);
            color: var(--ink);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 34px;
            height: 34px;
            background: var(--bg-paper);
            border: var(--border-thin);
            border-radius: 50%;
            display: grid;
            place-items: center;
            box-shadow: 2px 2px 0 var(--ink);
            font-size: 14px;
            transition: transform 0.15s ease;
        }
        .product-card .wish-btn:hover {
            transform: scale(1.1);
            background: var(--accent-orange);
            color: #fff;
        }
        .product-card .body {
            padding: 16px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .product-card .category-tag {
            font-size: 10px;
            font-weight: 700;
            letter-spacing: 1px;
            color: var(--accent-rust);
            text-transform: uppercase;
        }
        .product-card h5 {
            font-family: 'Righteous', cursive;
            font-size: 17px;
            line-height: 1.25;
        }
        .product-card .price-row {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin-top: 4px;
        }
        .product-card .price {
            font-size: 20px;
            font-weight: 700;
            color: var(--ink);
        }
        .product-card .old-price {
            font-size: 13px;
            color: var(--muted);
            text-decoration: line-through;
        }
        .product-card .rating {
            font-size: 12px;
            color: var(--accent-rust);
            margin-top: 2px;
        }
        .product-card .rating span {
            color: var(--muted);
        }
        .product-card .footer {
            padding: 0 16px 16px;
        }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 10px;
            background: var(--ink);
            color: #fff;
            font-family: 'Righteous', cursive;
            font-size: 14px;
            letter-spacing: 0.5px;
            border: var(--border-thin);
            border-radius: var(--radius-retro);
            box-shadow: 3px 3px 0 var(--accent-orange);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
            transition: all 0.15s ease;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent-orange);
            color: #fff;
            transform: translate(-1px, -1px);
        }
        .product-card .footer .add-btn.added {
            background: var(--accent-teal);
            box-shadow: 3px 3px 0 var(--ink);
        }

        /* ========== FLASH DEAL ========== */
        .deal-wrap {
            display: flex;
            background: var(--bg-paper);
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            box-shadow: var(--retro-shadow-lg);
            overflow: hidden;
        }
        .deal-wrap .deal-img {
            flex: 0 0 45%;
            background: #e2d7c3;
            border-right: var(--border-thick);
            min-height: 320px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: sepia(0.15) contrast(1.05);
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 36px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            background: var(--accent-mustard);
            border: var(--border-thin);
            display: inline-block;
            align-self: flex-start;
            padding: 4px 12px;
            font-size: 11px;
            font-weight: 700;
            border-radius: 4px;
            box-shadow: 2px 2px 0 var(--ink);
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-family: 'Righteous', cursive;
            font-size: 36px;
            line-height: 1.1;
            margin-bottom: 8px;
        }
        .deal-wrap .deal-content .desc {
            font-size: 14px;
            color: var(--muted);
            margin-bottom: 16px;
        }
        .deal-wrap .deal-content .price-big {
            font-family: 'Righteous', cursive;
            font-size: 36px;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            color: var(--muted);
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 13px;
            margin: 6px 0 16px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--accent-rust);
        }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 10px 0 24px;
        }
        .timer-box {
            background: var(--bg);
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            padding: 8px 14px;
            min-width: 65px;
            text-align: center;
            box-shadow: 3px 3px 0 var(--ink);
        }
        .timer-box .num {
            font-family: 'Righteous', cursive;
            font-size: 26px;
            line-height: 1.1;
            color: var(--accent-rust);
        }
        .timer-box .label {
            font-size: 10px;
            font-weight: 700;
            text-transform: uppercase;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 18px;
            scroll-snap-type: x mandatory;
        }
        .testimonial-card {
            flex: 0 0 340px;
            background: var(--bg-paper);
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            padding: 24px;
            box-shadow: var(--retro-shadow);
            scroll-snap-align: start;
        }
        .testimonial-card .stars {
            color: var(--accent-rust);
            font-size: 16px;
            letter-spacing: 2px;
            margin-bottom: 8px;
        }
        .testimonial-card blockquote {
            font-style: italic;
            font-size: 14px;
            margin-bottom: 16px;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            border: var(--border-thin);
            filter: grayscale(0.2) sepia(0.2);
        }
        .testimonial-card .author .name {
            font-family: 'Righteous', cursive;
            font-size: 14px;
        }
        .testimonial-card .author .role {
            font-size: 11px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: var(--accent-teal);
            color: #fff;
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            box-shadow: var(--retro-shadow-lg);
            padding: 44px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-family: 'Righteous', cursive;
            font-size: 32px;
            color: #fff;
            text-shadow: 2px 2px 0 var(--ink);
            margin-bottom: 4px;
        }
        .newsletter-wrap .text p {
            font-size: 14px;
            color: var(--bg);
        }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex: 1;
            max-width: 480px;
            flex-wrap: wrap;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 200px;
            padding: 12px 18px;
            border: var(--border-thick);
            border-radius: var(--radius-retro);
            background: #fff;
            font-size: 14px;
            box-shadow: 3px 3px 0 var(--ink);
        }
        .newsletter-wrap form .btn {
            background: var(--accent-mustard);
            color: var(--ink);
        }
        #newsletterMsg {
            margin-top: 10px;
            font-size: 13px;
            font-weight: 700;
            width: 100%;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 30px;
            background: var(--bg-paper);
            border-top: var(--border-thick);
            padding: 48px 0 24px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 36px;
            margin-bottom: 32px;
        }
        .footer-grid .brand-col p {
            font-size: 13px;
            color: var(--muted);
            margin-top: 8px;
            line-height: 1.6;
        }
        .footer-grid .socials {
            display: flex;
            gap: 10px;
            margin-top: 14px;
        }
        .footer-grid .socials a {
            width: 38px;
            height: 38px;
            border: var(--border-thin);
            border-radius: var(--radius-retro);
            background: var(--bg);
            display: grid;
            place-items: center;
            box-shadow: 2px 2px 0 var(--ink);
            font-size: 15px;
            transition: all 0.15s ease;
        }
        .footer-grid .socials a:hover {
            background: var(--accent-orange);
            color: #fff;
            transform: translate(-2px, -2px);
        }
        .footer-grid .col h5 {
            font-family: 'Righteous', cursive;
            font-size: 16px;
            margin-bottom: 12px;
            border-bottom: 2px solid var(--accent-mustard);
            display: inline-block;
            padding-bottom: 4px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .footer-grid .col ul li a {
            font-size: 13px;
            color: var(--muted);
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent-rust);
            text-decoration: underline;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            border-top: var(--border-thin);
            font-size: 12px;
            color: var(--muted);
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 992px) {
            .hero h1 { font-size: 40px; }
            .hero { padding: 40px 24px; margin: 16px 16px 0; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { min-height: 240px; border-right: none; border-bottom: var(--border-thick); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .products-grid { grid-template-columns: repeat(2, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 24px; }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; }
            .hero h1 { font-size: 32px; }
            .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); }
            .footer-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>

<body>

    <!-- Retro rainbow trim -->
    <div class="retro-stripe-bar"></div>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-compact-disc"></i>
                    <span>NEXUS<span style="color:var(--accent-rust)">SHOP</span></span>
                    <span class="badge-tag">EST. '78</span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-store"></i> Catalog</a></li>
                    <li><a href="#categories"><i class="fas fa-th"></i> Departments</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Best Sellers</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Bargains</a></li>
                    <li><a href="#testimonials"><i class="fas fa-award"></i> Feedback</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search goods..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-basket"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-store"></i> Catalog</a></li>
                    <li><a href="#categories"><i class="fas fa-th"></i> Departments</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Best Sellers</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Bargains</a></li>
                    <li><a href="#testimonials"><i class="fas fa-award"></i> Feedback</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO BANNER -->
        <section class="hero" aria-label="Hero banner">
            <div class="container" style="position:relative; z-index:1;">
                <div class="badge"><i class="fas fa-award"></i> Guaranteed Authentic 1978 Edition</div>
                <h1>PREMIUM GOODS &amp;<br>ESSENTIAL GEAR</h1>
                <p>Authentic quality craftsmanship, electronics, and apparel. Shipped promptly with our ironclad guarantee.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-down"></i> Browse Catalogue</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-tag"></i> Today's Bargains</button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="cat-title">DEPARTMENTS</h2>
                        <p>Organized by reliable hardware and everyday standards</p>
                    </div>
                    <a href="#" class="view-all">All Depts <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="prod-title">FEATURED WARES</h2>
                        <p>Top selections vetted by our warehouse curators</p>
                    </div>
                    <a href="#" class="view-all">Index Listing <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- FLASH DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="deals-title">⚡ WAREHOUSE BLOWOUT</h2>
                        <p>Discounted lot priced below standard catalog rate</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-stopwatch"></i> SPECIAL ALLOCATION</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Engineered for lightweight utility and dependable battery run-time. Unmatched raw compute capacity.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Lot stock count: <strong>12 units</strong> remaining</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-shopping-basket"></i> Place in Basket</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="test-title">PATRON REVIEWS</h2>
                        <p>Certified correspondence from verified purchasers</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">JOIN OUR MAILING POST</h3>
                        <p>Receive printed circulars, special allotments &amp; telegram deals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter recipient email address..." aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-envelope"></i> Sign Me Up</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-compact-disc"></i>
                        <span>NEXUS<span style="color:var(--accent-rust)">SHOP</span></span>
                    </div>
                    <p>Supplying honest wares, personal electronics, and practical lifestyle goods since the late 1970s.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">Our History</a></li>
                        <li><a href="#">Workshops</a></li>
                        <li><a href="#">Press Ledger</a></li>
                        <li><a href="#">Gazette</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Services</h5>
                    <ul>
                        <li><a href="#">Help Desk</a></li>
                        <li><a href="#">Freight &amp; Post</a></li>
                        <li><a href="#">Exchange Dept</a></li>
                        <li><a href="#">Telegraph</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Ordinances</h5>
                    <ul>
                        <li><a href="#">Privacy Act</a></li>
                        <li><a href="#">Terms of Sale</a></li>
                        <li><a href="#">Registry Policy</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop Mercantile Syndicate. All trade rights reserved.
            </div>
        </div>
    </footer>

    <!-- ===== JAVASCRIPT (STATE & LOGIC INTACT) ===== -->
    <script>
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'NEW RELEASE',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'BARGAIN',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'NEW RELEASE',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'BARGAIN',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified Customer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Prompt post delivery and courteous customer support. Exceeded expectations!',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Subscribed Patron',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Fine selection and honest transaction handling. Will do business here again.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'Graphic Drafter',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'The box parcel arrived in pristine order. Genuine pride in packaging.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Hardware Collector',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Fair prices on modern gear. The M2 deal was a remarkable find.',
            stars: 5
        }];

        let cartCount = 0;

        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
            }[s]));
        }

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} Units</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;font-weight:700;">No items in ledger matching query.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'BARGAIN' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">${stars} <span>(${p.reviews})</span></div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-shopping-basket"></i> Inquire / Buy</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.35)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 180);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added!';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1400);
            }
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

            function tick() {
                const diff = target - new Date();
                if (diff <= 0) return;
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Packaged!';
            this.style.background = 'var(--accent-teal)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1400);
        });

        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please supply an authentic dispatch address.';
                newsletterMsg.style.color = 'var(--accent-rust)';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '★ Registered to the Gazette successfully!';
            newsletterMsg.style.color = 'var(--bg-paper)';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => newsletterMsg.style.display = 'none', 3500);
        });

        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Ledger Notice: You have ${cartCount} parcel${cartCount !== 1 ? 's' : ''} queued.`);
        });

        document.getElementById('year').textContent = new Date().getFullYear();

        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });
    </script>
</body>
</html>
