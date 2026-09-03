<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Retro Edition</title>

    <!-- Retro Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Righteous&family=Space+Mono:ital,wght@0,400;0,700;1,400&family=VT323&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT RETRO PALETTE ========== */
        :root {
            --bg: #f7f3e9;
            --bg-card: #fffdfa;
            --primary: #121212;
            --primary-surface: #222222;
            --accent-orange: #ff5e36;
            --accent-yellow: #ffd13b;
            --accent-teal: #00d2b4;
            --accent-pink: #ff3385;
            --accent-purple: #7952ec;
            --muted: #555555;
            --border-width: 3px;
            --hard-shadow: 4px 4px 0px #121212;
            --hard-shadow-lg: 8px 8px 0px #121212;
            --hard-shadow-sm: 2px 2px 0px #121212;
            --transition: 0.12s ease-in-out;
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
            background-image: 
                radial-gradient(#121212 0.75px, transparent 0.75px),
                radial-gradient(#121212 0.75px, var(--bg) 0.75px);
            background-size: 30px 30px;
            background-position: 0 0, 15px 15px;
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        h1, h2, h3, h4, h5, .brand {
            font-family: 'Righteous', cursive;
            letter-spacing: 0.5px;
            text-transform: uppercase;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button, input {
            font-family: inherit;
            border: none;
            outline: none;
            background: none;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Retro Marquee Strip */
        .marquee-strip {
            background: var(--accent-yellow);
            border-bottom: var(--border-width) solid var(--primary);
            overflow: hidden;
            white-space: nowrap;
            padding: 6px 0;
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 1px;
            display: flex;
            gap: 2rem;
        }
        .marquee-content {
            display: inline-block;
            animation: marquee 22s linear infinite;
        }
        @keyframes marquee {
            0% { transform: translateX(0); }
            100% { transform: translateX(-50%); }
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 10px 22px;
            font-weight: 700;
            font-size: 14px;
            text-transform: uppercase;
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow);
            cursor: pointer;
            transition: var(--transition);
            border-radius: 0;
        }
        .btn:hover {
            transform: translate(-2px, -2px);
            box-shadow: 6px 6px 0px var(--primary);
        }
        .btn:active {
            transform: translate(2px, 2px);
            box-shadow: var(--hard-shadow-sm);
        }
        .btn-primary {
            background: var(--accent-orange);
            color: #fff;
        }
        .btn-secondary {
            background: var(--accent-teal);
            color: var(--primary);
        }
        .btn-ghost {
            background: var(--bg-card);
            color: var(--primary);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: var(--bg);
            border-bottom: var(--border-width) solid var(--primary);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px 0;
            min-height: 70px;
            gap: 16px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 26px;
            color: var(--primary);
            background: var(--accent-yellow);
            border: var(--border-width) solid var(--primary);
            padding: 4px 14px;
            box-shadow: var(--hard-shadow-sm);
            transform: rotate(-1deg);
        }
        .brand .accent {
            color: var(--accent-pink);
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
            font-weight: 700;
            font-size: 13px;
            border: var(--border-width) solid transparent;
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--accent-teal);
            border-color: var(--primary);
            box-shadow: var(--hard-shadow-sm);
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
            border: var(--border-width) solid var(--primary);
            background: var(--bg-card);
            box-shadow: var(--hard-shadow-sm);
            font-size: 16px;
            cursor: pointer;
            transition: var(--transition);
        }
        .header-actions .icon-btn:hover {
            background: var(--accent-yellow);
            transform: translate(-2px, -2px);
            box-shadow: var(--hard-shadow);
        }
        .header-actions .icon-btn:active {
            transform: translate(1px, 1px);
            box-shadow: none;
        }

        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent-pink);
            color: #fff;
            font-family: 'Space Mono', monospace;
            font-size: 11px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border: 2px solid var(--primary);
            display: grid;
            place-items: center;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: #fff;
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow-sm);
            padding: 0 10px;
            min-width: 220px;
        }
        .search-wrap input {
            padding: 8px 6px;
            width: 100%;
            font-size: 13px;
            color: var(--primary);
        }
        .search-wrap button {
            cursor: pointer;
            padding: 8px;
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border: var(--border-width) solid var(--primary);
            background: var(--accent-yellow);
            box-shadow: var(--hard-shadow-sm);
            font-size: 20px;
            cursor: pointer;
        }

        #mobileMenu {
            display: none;
            background: var(--bg-card);
            border-bottom: var(--border-width) solid var(--primary);
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
            padding: 10px 14px;
            border: var(--border-width) solid var(--primary);
            background: var(--bg);
            font-weight: 700;
        }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            background: var(--accent-purple);
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow-lg);
            margin: 32px auto 0;
            padding: 56px 40px;
            color: #fff;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: repeating-linear-gradient(
                0deg,
                rgba(0, 0, 0, 0.15),
                rgba(0, 0, 0, 0.15) 2px,
                transparent 2px,
                transparent 4px
            );
            pointer-events: none;
        }
        .hero .badge {
            display: inline-block;
            background: var(--accent-yellow);
            color: var(--primary);
            border: var(--border-width) solid var(--primary);
            padding: 4px 14px;
            font-weight: 700;
            font-size: 13px;
            box-shadow: var(--hard-shadow-sm);
            margin-bottom: 20px;
            transform: rotate(-2deg);
        }
        .hero h1 {
            font-size: 52px;
            line-height: 1.05;
            color: #ffffff;
            text-shadow: 4px 4px 0px var(--primary);
            margin-bottom: 16px;
        }
        .hero p {
            font-size: 16px;
            max-width: 550px;
            margin-bottom: 28px;
            background: rgba(0, 0, 0, 0.4);
            padding: 12px 16px;
            border: 2px dashed #fff;
        }
        .hero .actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* ========== SECTIONS ========== */
        .section {
            padding: 60px 0 20px;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            border-bottom: var(--border-width) solid var(--primary);
            padding-bottom: 14px;
            margin-bottom: 32px;
            gap: 16px;
            flex-wrap: wrap;
        }
        .section-header h2 {
            font-size: 32px;
            display: inline-block;
            background: var(--accent-yellow);
            padding: 2px 10px;
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow-sm);
        }
        .section-header p {
            font-size: 14px;
            color: var(--muted);
            margin-top: 8px;
        }
        .section-header .view-all {
            font-weight: 700;
            font-size: 14px;
            background: var(--bg-card);
            border: var(--border-width) solid var(--primary);
            padding: 6px 14px;
            box-shadow: var(--hard-shadow-sm);
            transition: var(--transition);
        }
        .section-header .view-all:hover {
            background: var(--accent-teal);
            transform: translate(-2px, -2px);
            box-shadow: var(--hard-shadow);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-card {
            background: var(--bg-card);
            border: var(--border-width) solid var(--primary);
            padding: 22px 14px;
            text-align: center;
            box-shadow: var(--hard-shadow);
            transition: var(--transition);
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translate(-3px, -3px);
            box-shadow: 7px 7px 0px var(--primary);
            background: var(--accent-yellow);
        }
        .cat-card .icon-wrap {
            width: 58px;
            height: 58px;
            border: var(--border-width) solid var(--primary);
            background: var(--accent-teal);
            box-shadow: var(--hard-shadow-sm);
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            font-size: 22px;
            color: var(--primary);
        }
        .cat-card h4 {
            font-size: 15px;
            margin-bottom: 4px;
        }
        .cat-card .count {
            font-size: 12px;
            font-weight: 700;
            color: var(--muted);
            text-transform: uppercase;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--bg-card);
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow);
            display: flex;
            flex-direction: column;
            transition: var(--transition);
            position: relative;
        }
        .product-card:hover {
            transform: translate(-3px, -3px);
            box-shadow: 7px 7px 0px var(--primary);
        }
        .product-card .img-wrap {
            position: relative;
            border-bottom: var(--border-width) solid var(--primary);
            background: #e6e6e6;
            aspect-ratio: 1 / 1;
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: contrast(108%) saturate(110%);
        }
        .product-card .badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background: var(--accent-yellow);
            color: var(--primary);
            border: 2px solid var(--primary);
            padding: 3px 10px;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            box-shadow: var(--hard-shadow-sm);
        }
        .product-card .badge.sale {
            background: var(--accent-pink);
            color: #fff;
        }
        .product-card .wish-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 34px;
            height: 34px;
            background: #fff;
            border: 2px solid var(--primary);
            box-shadow: var(--hard-shadow-sm);
            display: grid;
            place-items: center;
            font-size: 15px;
            cursor: pointer;
            transition: var(--transition);
        }
        .product-card .wish-btn:hover {
            background: var(--accent-pink);
            color: #fff;
        }
        .product-card .body {
            padding: 16px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .product-card .body .category-tag {
            font-size: 11px;
            font-weight: 700;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        .product-card .body h5 {
            font-size: 16px;
            line-height: 1.3;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: baseline;
            gap: 10px;
            margin-top: 4px;
        }
        .product-card .body .price {
            font-size: 20px;
            font-weight: 700;
            color: var(--primary);
        }
        .product-card .body .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            font-size: 14px;
            color: var(--primary);
            letter-spacing: 2px;
        }
        .product-card .footer {
            padding: 0 16px 16px;
        }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 10px;
            background: var(--primary);
            color: #fff;
            border: var(--border-width) solid var(--primary);
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            box-shadow: var(--hard-shadow-sm);
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition);
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent-orange);
            color: #fff;
            transform: translate(-1px, -1px);
            box-shadow: var(--hard-shadow);
        }
        .product-card .footer .add-btn.added {
            background: var(--accent-teal);
            color: var(--primary);
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            background: var(--bg-card);
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow-lg);
        }
        .deal-wrap .deal-img {
            flex: 0 0 45%;
            border-right: var(--border-width) solid var(--primary);
            background: #222;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 44px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            align-self: flex-start;
            background: var(--accent-orange);
            color: #fff;
            border: 2px solid var(--primary);
            box-shadow: var(--hard-shadow-sm);
            font-weight: 700;
            font-size: 12px;
            text-transform: uppercase;
            padding: 4px 10px;
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 36px;
            margin-bottom: 8px;
        }
        .deal-wrap .deal-content .desc {
            font-size: 14px;
            color: var(--muted);
            margin-bottom: 18px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 34px;
            font-weight: 700;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            color: var(--muted);
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 13px;
            margin: 6px 0 18px;
            text-transform: uppercase;
        }
        .deal-wrap .deal-content .stock strong {
            background: var(--accent-yellow);
            padding: 1px 6px;
            border: 1px solid var(--primary);
        }

        /* 8-bit / Digital Clock Timer */
        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 10px 0 24px;
        }
        .timer-box {
            background: #111;
            color: #00ff66;
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow-sm);
            padding: 8px 12px;
            min-width: 70px;
            text-align: center;
        }
        .timer-box .num {
            font-family: 'VT323', monospace;
            font-size: 36px;
            line-height: 1;
            text-shadow: 0 0 6px rgba(0, 255, 102, 0.7);
        }
        .timer-box .label {
            font-size: 10px;
            color: #aaa;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 10px 4px 20px;
            scroll-snap-type: x mandatory;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 10px;
        }
        .testimonials-scroll::-webkit-scrollbar-track {
            background: #ddd;
            border: 2px solid var(--primary);
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-orange);
            border: 2px solid var(--primary);
        }
        .testimonial-card {
            flex: 0 0 340px;
            background: var(--bg-card);
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow);
            padding: 24px;
            scroll-snap-align: start;
        }
        .testimonial-card .stars {
            color: var(--accent-orange);
            font-size: 16px;
            margin-bottom: 8px;
        }
        .testimonial-card blockquote {
            font-size: 14px;
            line-height: 1.5;
            margin-bottom: 16px;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
            border-top: 2px dashed #ddd;
            padding-top: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border: 2px solid var(--primary);
            box-shadow: var(--hard-shadow-sm);
            object-fit: cover;
        }
        .testimonial-card .author .name {
            font-family: 'Righteous', cursive;
            font-size: 15px;
        }
        .testimonial-card .author .role {
            font-size: 11px;
            color: var(--muted);
            text-transform: uppercase;
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: var(--accent-teal);
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow-lg);
            padding: 44px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-size: 32px;
            margin-bottom: 6px;
        }
        .newsletter-wrap .text p {
            font-size: 14px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 480px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 220px;
            padding: 12px 16px;
            background: #fff;
            border: var(--border-width) solid var(--primary);
            box-shadow: var(--hard-shadow-sm);
            font-size: 14px;
            font-weight: 700;
        }
        #newsletterMsg {
            width: 100%;
            margin-top: 8px;
            font-size: 13px;
            font-weight: 700;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 60px;
            background: var(--primary);
            color: #fff;
            border-top: var(--border-width) solid var(--primary);
            padding: 50px 0 30px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }
        .footer-grid .brand-col .brand {
            display: inline-flex;
            margin-bottom: 14px;
            background: var(--accent-yellow);
            color: var(--primary);
            border: 2px solid #fff;
        }
        .footer-grid .brand-col p {
            font-size: 13px;
            color: #bbb;
            max-width: 320px;
            line-height: 1.6;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
            margin-top: 18px;
        }
        .footer-grid .brand-col .socials a {
            width: 38px;
            height: 38px;
            background: #fff;
            color: var(--primary);
            border: 2px solid var(--primary);
            display: grid;
            place-items: center;
            box-shadow: 3px 3px 0px var(--accent-orange);
            transition: var(--transition);
        }
        .footer-grid .brand-col .socials a:hover {
            transform: translate(-2px, -2px);
            background: var(--accent-yellow);
        }
        .footer-grid .col h5 {
            color: var(--accent-yellow);
            font-size: 16px;
            margin-bottom: 16px;
            letter-spacing: 1px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .footer-grid .col ul li a {
            font-size: 13px;
            color: #ccc;
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent-teal);
            padding-left: 4px;
        }
        .footer-bottom {
            text-align: center;
            border-top: 1px dashed #444;
            padding-top: 24px;
            font-size: 12px;
            color: #888;
            text-transform: uppercase;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1100px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 900px) {
            .hero h1 { font-size: 38px; }
            .hero { padding: 36px 24px; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { flex: 0 0 260px; border-right: none; border-bottom: var(--border-width) solid var(--primary); }
            .footer-grid { grid-template-columns: 1fr 1fr; }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
            .search-wrap { min-width: 140px; }
            .footer-grid { grid-template-columns: 1fr; gap: 24px; }
        }
        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
            .hero h1 { font-size: 30px; }
            .deal-wrap .deal-content { padding: 24px; }
            .deal-wrap .deal-content h3 { font-size: 26px; }
            .timer-box { min-width: 54px; padding: 6px 8px; }
            .timer-box .num { font-size: 28px; }
        }
    </style>
</head>

<body>

    <!-- Retro Marquee Ticker -->
    <div class="marquee-strip" aria-hidden="true">
        <div class="marquee-content">
            ★ FLASH SALE: UP TO 40% OFF SELECT HARDWARE ★ FREE WORLDWIDE SHIPPING ON ORDERS OVER $50 ★ FRESH 90s COLLECTION JUST DROPPED ★ LIMITED STOCK AVAILABLE ★ GUARANTEED RETRO AUTHENTICITY ★
        </div>
        <div class="marquee-content">
            ★ FLASH SALE: UP TO 40% OFF SELECT HARDWARE ★ FREE WORLDWIDE SHIPPING ON ORDERS OVER $50 ★ FRESH 90s COLLECTION JUST DROPPED ★ LIMITED STOCK AVAILABLE ★ GUARANTEED RETRO AUTHENTICITY ★
        </div>
    </div>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-gamepad"></i>
                    <span>NEXUS<span class="accent">SHOP</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-shapes"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-bolt"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-comment"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search catalog..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-cart"></i>
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
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-shapes"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-bolt"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-comment"></i> Reviews</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <div class="container">
            <section class="hero" aria-label="Hero banner">
                <div class="badge"><i class="fas fa-tape"></i> Edition 1996 / Rev. 2026</div>
                <h1>DISCOVER<br>ANALOG &amp; TECH</h1>
                <p>Premium modern performance meets vintage aesthetic. Free express delivery on all hardware orders today.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Catalog</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-stopwatch"></i> Flash Deals</button>
                </div>
            </section>
        </div>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="cat-title">DEPARTMENTS</h2>
                        <p>Select your category archive</p>
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
                    <div class="title-group">
                        <h2 id="prod-title">TOP PICKS</h2>
                        <p>High demand items this week</p>
                    </div>
                    <a href="#" class="view-all">View All Items <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="deals-title">⚡ DAILY SPOTLIGHT</h2>
                        <p>Special inventory reduction pricing</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-fire"></i> Price Drop</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Ultra-thin architecture with generational Silicon speed. Precision aluminum chassis.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Stock alert: Only <strong>12 units</strong> remaining</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">00</div>
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
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Claim This Deal</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="test-title">LOGBOOK REVIEWS</h2>
                        <p>Customer transmissions from the field</p>
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
                        <h3 id="news-title">JOIN THE MAILING LIST</h3>
                        <p>Receive printed postcards, discount coupons & drop alerts.</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="USER@DOMAIN.COM" aria-label="Email" required />
                        <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Dispatch</button>
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
                        <i class="fas fa-gamepad"></i>
                        <span>NEXUS<span class="accent">SHOP</span></span>
                    </div>
                    <p>Dedicated to delivering quality goods with uncompromising style since the analog era.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>INDEX</h5>
                    <ul>
                        <li><a href="#">About Nexus</a></li>
                        <li><a href="#">Careers Bulletin</a></li>
                        <li><a href="#">Press Kit</a></li>
                        <li><a href="#">Chronicle Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>SERVICE</h5>
                    <ul>
                        <li><a href="#">Help Terminal</a></li>
                        <li><a href="#">Post &amp; Freight</a></li>
                        <li><a href="#">Returns Desk</a></li>
                        <li><a href="#">Direct Wire</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>LEGAL</h5>
                    <ul>
                        <li><a href="#">Privacy Charter</a></li>
                        <li><a href="#">Terms of Use</a></li>
                        <li><a href="#">Cookie Protocol</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NEXUSSHOP LTD. ALL RIGHTS RESERVED. OPERATING ON SYS-VER 2.4.
            </div>
        </div>
    </footer>

    <!-- ===== SCRIPT ===== -->
    <script>
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-clock', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [
            {
                name: 'Ava Martin',
                role: 'Verified Buyer',
                avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
                text: 'Fast shipping and solid packaging. Exceeded expectations on build quality!',
                stars: 5
            },
            {
                name: 'Michael Lee',
                role: 'Frequent Shopper',
                avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
                text: 'Smooth transaction process and crisp catalog browsing. Will order again.',
                stars: 4
            },
            {
                name: 'Sophia Chen',
                role: 'Designer',
                avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
                text: 'Love the tactile aesthetic and attention to detail. Arrived in mint shape.',
                stars: 5
            },
            {
                name: 'James Wilson',
                role: 'Tech Enthusiast',
                avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                text: 'Unbeatable price on the M2 laptop promotion. Immediate delivery verification.',
                stars: 5
            }
        ];

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
                productsGrid.innerHTML = `
                    <div style="grid-column:1/-1;text-align:center;padding:40px;background:#fff;border:3px solid #121212;box-shadow:4px 4px 0 #121212;">
                        [ NO MATCHING HARDWARE FOUND IN LOGS ]
                    </div>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
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
                        <div class="rating">
                            ${stars} <span style="font-size:11px;">(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Acquire</button>
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

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            }[s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.35) rotate(-6deg)';
            setTimeout(() => cartCountEl.style.transform = '', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Acquired!';
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
                document.getElementById('dealDays').textContent = String(days).padStart(2, '0');
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
            this.innerHTML = '<i class="fas fa-check"></i> ORDER QUEUED!';
            this.style.background = 'var(--accent-teal)';
            this.style.color = '#121212';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
                this.style.color = '';
            }, 1600);
        });

        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'ERROR: INVALID RECIPIENT ADDRESS';
                newsletterMsg.style.color = '#ff0055';
                return;
            }
            newsletterMsg.textContent = '★ SUCCESS: ADDRESS ADDED TO QUEUE!';
            newsletterMsg.style.color = '#121212';
            newsletterEmail.value = '';
            setTimeout(() => newsletterMsg.textContent = '', 3500);
        });

        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`[ CART REGISTER: ${cartCount} ITEM(S) LOGGED ]`);
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
