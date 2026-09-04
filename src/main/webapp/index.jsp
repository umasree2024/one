<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusAmour — Romantic Gifts & Essentials</title>

    <!-- Google Fonts & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,600;0,700;1,400;1,600&family=Great+Vibes&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROMANTIC COLOR PALETTE ========== */
        :root {
            --bg: #fff6f8;
            --bg-card: #ffffff;
            --primary: #4a1224;
            --primary-light: #701f39;
            --accent-rose: #ff4d6d;
            --accent-deep: #c9184a;
            --accent-blush: #ffe5ec;
            --accent-petal: #ffccd5;
            --accent-gold: #d4af37;
            --muted: #7d5a68;
            --muted-light: #b08d9b;
            --surface: #fae8ee;
            --radius-pill: 9999px;
            --radius-card: 24px;
            --radius-sm: 14px;
            --shadow-soft: 0 10px 30px rgba(164, 19, 60, 0.07);
            --shadow-hover: 0 18px 45px rgba(201, 24, 74, 0.16);
            --shadow-glow: 0 0 25px rgba(255, 77, 109, 0.35);
            --transition: 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
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
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: var(--bg);
            background-image: 
                radial-gradient(var(--accent-petal) 0.8px, transparent 0.8px),
                radial-gradient(var(--accent-petal) 0.8px, var(--bg) 0.8px);
            background-size: 32px 32px;
            background-position: 0 0, 16px 16px;
            color: var(--primary);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
        }
        h1, h2, h3, .serif-title {
            font-family: 'Cormorant Garamond', serif;
            letter-spacing: -0.5px;
        }
        .script-font {
            font-family: 'Great Vibes', cursive;
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
            padding: 0 24px;
        }

        /* Top Love Ribbon */
        .love-ribbon {
            background: linear-gradient(90deg, #c9184a, #ff4d6d, #ff758f, #c9184a);
            background-size: 300% 100%;
            animation: gradientRibbon 12s ease infinite;
            color: #fff;
            padding: 7px 0;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: 0.5px;
            text-align: center;
        }
        .love-ribbon i {
            margin: 0 6px;
            color: #ffe5ec;
            font-size: 11px;
        }
        @keyframes gradientRibbon {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: var(--radius-pill);
            font-weight: 600;
            font-size: 15px;
            cursor: pointer;
            transition: var(--transition);
        }
        .btn-primary {
            background: linear-gradient(135deg, var(--accent-rose), var(--accent-deep));
            color: #fff;
            box-shadow: 0 6px 20px rgba(201, 24, 74, 0.35);
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 28px rgba(201, 24, 74, 0.45);
        }
        .btn-ghost {
            background: rgba(255, 255, 255, 0.85);
            color: var(--primary);
            backdrop-filter: blur(8px);
            border: 1px solid var(--accent-petal);
        }
        .btn-ghost:hover {
            background: #ffffff;
            color: var(--accent-deep);
            transform: translateY(-2px);
            box-shadow: var(--shadow-soft);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(255, 183, 195, 0.5);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            min-height: 74px;
            gap: 16px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 26px;
            font-weight: 700;
            color: var(--primary);
        }
        .brand .heart-icon {
            color: var(--accent-rose);
            font-size: 24px;
            animation: pulseHeart 1.6s infinite ease-in-out;
        }
        @keyframes pulseHeart {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.18); }
        }
        .brand .accent {
            color: var(--accent-rose);
            font-family: 'Great Vibes', cursive;
            font-size: 34px;
            margin-left: 2px;
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 8px 16px;
            font-weight: 600;
            font-size: 14px;
            color: var(--muted);
            border-radius: var(--radius-pill);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--accent-blush);
            color: var(--accent-deep);
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
            border-radius: 50%;
            background: var(--surface);
            color: var(--primary);
            font-size: 16px;
            cursor: pointer;
            transition: var(--transition);
        }
        .header-actions .icon-btn:hover {
            background: var(--accent-blush);
            color: var(--accent-rose);
            transform: scale(1.08);
        }

        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -3px;
            right: -3px;
            background: var(--accent-rose);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
            box-shadow: 0 2px 8px rgba(201, 24, 74, 0.3);
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: var(--radius-pill);
            padding: 0 16px;
            min-width: 230px;
            border: 1.5px solid transparent;
            transition: var(--transition);
        }
        .search-wrap:focus-within {
            background: #fff;
            border-color: var(--accent-rose);
            box-shadow: 0 0 0 4px rgba(255, 77, 109, 0.12);
        }
        .search-wrap input {
            padding: 9px 8px;
            width: 100%;
            font-size: 13px;
            color: var(--primary);
        }
        .search-wrap button {
            color: var(--muted);
            cursor: pointer;
            padding: 6px;
        }

        .mobile-toggle {
            display: none;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--surface);
            color: var(--primary);
            font-size: 18px;
            place-items: center;
            cursor: pointer;
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-bottom: 1px solid var(--accent-petal);
            padding: 16px 0;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 18px;
            border-radius: var(--radius-sm);
            color: var(--primary);
            font-weight: 600;
        }
        #mobileMenu ul li a:hover {
            background: var(--accent-blush);
            color: var(--accent-deep);
        }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            background: linear-gradient(135deg, #4a1224 0%, #701f39 45%, #c9184a 100%);
            border-radius: 32px;
            margin: 28px auto 0;
            padding: 70px 56px;
            color: #fff;
            overflow: hidden;
            box-shadow: 0 20px 50px rgba(112, 31, 57, 0.25);
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1518199266791-5375a83190b7?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.22;
            mix-blend-mode: overlay;
        }
        .hero .container {
            position: relative;
            z-index: 2;
        }
        .hero .badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(255, 255, 255, 0.18);
            border: 1px solid rgba(255, 255, 255, 0.35);
            padding: 6px 18px;
            border-radius: var(--radius-pill);
            font-weight: 600;
            font-size: 13px;
            letter-spacing: 0.5px;
            margin-bottom: 20px;
            backdrop-filter: blur(8px);
        }
        .hero h1 {
            font-size: 58px;
            line-height: 1.1;
            font-weight: 700;
            max-width: 650px;
            margin-bottom: 18px;
        }
        .hero h1 span.script-font {
            font-size: 72px;
            color: #ffccd5;
            font-weight: 400;
            display: block;
            line-height: 0.95;
        }
        .hero p {
            font-size: 17px;
            max-width: 520px;
            color: #ffe5ec;
            margin-bottom: 32px;
            line-height: 1.6;
        }
        .hero .actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* ========== SECTIONS ========== */
        .section {
            padding: 56px 0 20px;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            margin-bottom: 36px;
            gap: 16px;
            flex-wrap: wrap;
        }
        .section-header .sub-tag {
            font-family: 'Great Vibes', cursive;
            font-size: 26px;
            color: var(--accent-rose);
            display: block;
            line-height: 1;
        }
        .section-header h2 {
            font-size: 38px;
            font-weight: 700;
            color: var(--primary);
            line-height: 1.15;
        }
        .section-header p {
            font-size: 14px;
            color: var(--muted);
            margin-top: 4px;
        }
        .section-header .view-all {
            font-weight: 600;
            font-size: 14px;
            color: var(--accent-deep);
            display: inline-flex;
            align-items: center;
            gap: 8px;
            transition: var(--transition);
        }
        .section-header .view-all:hover {
            color: var(--accent-rose);
            transform: translateX(4px);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius-card);
            padding: 26px 16px;
            text-align: center;
            box-shadow: var(--shadow-soft);
            border: 1px solid rgba(255, 204, 213, 0.4);
            transition: var(--transition);
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-rose);
            background: linear-gradient(180deg, #ffffff 0%, #fff2f5 100%);
        }
        .cat-card .icon-wrap {
            width: 58px;
            height: 58px;
            border-radius: 50%;
            background: var(--accent-blush);
            color: var(--accent-rose);
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            font-size: 22px;
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: var(--accent-rose);
            color: #fff;
            transform: scale(1.1) rotate(6deg);
        }
        .cat-card h4 {
            font-size: 16px;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 2px;
        }
        .cat-card .count {
            font-size: 12px;
            color: var(--muted-light);
            font-weight: 500;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius-card);
            overflow: hidden;
            box-shadow: var(--shadow-soft);
            border: 1px solid rgba(255, 204, 213, 0.4);
            display: flex;
            flex-direction: column;
            transition: var(--transition);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-petal);
        }
        .product-card .img-wrap {
            position: relative;
            background: var(--surface);
            aspect-ratio: 1 / 1;
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.08);
        }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: linear-gradient(135deg, var(--accent-rose), var(--accent-deep));
            color: #fff;
            padding: 4px 12px;
            border-radius: var(--radius-pill);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.5px;
            box-shadow: 0 4px 12px rgba(201, 24, 74, 0.25);
        }
        .product-card .badge.sale {
            background: linear-gradient(135deg, #e63946, #c9184a);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            display: grid;
            place-items: center;
            font-size: 16px;
            color: var(--muted);
            cursor: pointer;
            transition: var(--transition);
            backdrop-filter: blur(4px);
        }
        .product-card .wish-btn:hover,
        .product-card .wish-btn.active {
            background: #fff;
            color: var(--accent-rose);
            transform: scale(1.15);
        }
        .product-card .body {
            padding: 18px 20px 14px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .product-card .body .category-tag {
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: var(--accent-rose);
            font-weight: 700;
        }
        .product-card .body h5 {
            font-size: 17px;
            font-weight: 700;
            color: var(--primary);
            line-height: 1.35;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin-top: 4px;
        }
        .product-card .body .price {
            font-size: 20px;
            font-weight: 700;
            color: var(--accent-deep);
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            font-size: 13px;
            color: var(--accent-gold);
            display: flex;
            align-items: center;
            gap: 4px;
        }
        .product-card .body .rating span {
            color: var(--muted);
            font-size: 12px;
        }
        .product-card .footer {
            padding: 0 20px 20px;
        }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 11px;
            border-radius: var(--radius-pill);
            background: var(--accent-blush);
            color: var(--accent-deep);
            font-weight: 700;
            font-size: 14px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition);
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent-rose);
            color: #fff;
            box-shadow: 0 6px 18px rgba(255, 77, 109, 0.35);
        }
        .product-card .footer .add-btn.added {
            background: #2a9d8f;
            color: #fff;
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            background: #ffffff;
            border-radius: 32px;
            overflow: hidden;
            box-shadow: var(--shadow-hover);
            border: 1px solid var(--accent-petal);
        }
        .deal-wrap .deal-img {
            flex: 0 0 48%;
            background: var(--surface);
            position: relative;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            align-self: flex-start;
            background: var(--accent-blush);
            color: var(--accent-deep);
            font-weight: 700;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            padding: 5px 14px;
            border-radius: var(--radius-pill);
            margin-bottom: 14px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 40px;
            color: var(--primary);
            line-height: 1.15;
            margin-bottom: 10px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            font-size: 15px;
            margin-bottom: 20px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 36px;
            font-weight: 700;
            color: var(--accent-deep);
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 13px;
            color: var(--muted);
            margin: 8px 0 20px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--accent-rose);
        }

        /* Romantic Countdown */
        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 8px 0 26px;
        }
        .timer-box {
            background: var(--surface);
            color: var(--primary);
            border-radius: var(--radius-sm);
            padding: 10px 14px;
            min-width: 66px;
            text-align: center;
            border: 1px solid var(--accent-petal);
        }
        .timer-box .num {
            font-family: 'Cormorant Garamond', serif;
            font-size: 32px;
            font-weight: 700;
            color: var(--accent-deep);
            line-height: 1;
        }
        .timer-box .label {
            font-size: 11px;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 10px 4px 24px;
            scroll-snap-type: x mandatory;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 6px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-petal);
            border-radius: var(--radius-pill);
        }
        .testimonial-card {
            flex: 0 0 350px;
            background: #fff;
            border-radius: var(--radius-card);
            padding: 28px;
            box-shadow: var(--shadow-soft);
            border: 1px solid rgba(255, 204, 213, 0.4);
            scroll-snap-align: start;
            transition: var(--transition);
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
            transform: translateY(-4px);
        }
        .testimonial-card .hearts-row {
            color: var(--accent-rose);
            font-size: 14px;
            margin-bottom: 12px;
            display: flex;
            gap: 3px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            font-style: italic;
            color: var(--primary);
            line-height: 1.6;
            margin-bottom: 18px;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 46px;
            height: 46px;
            border-radius: 50%;
            border: 2px solid var(--accent-rose);
            object-fit: cover;
        }
        .testimonial-card .author .name {
            font-weight: 700;
            font-size: 14px;
            color: var(--primary);
        }
        .testimonial-card .author .role {
            font-size: 12px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: linear-gradient(135deg, #701f39, #c9184a);
            border-radius: 32px;
            padding: 50px 60px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
            box-shadow: 0 16px 40px rgba(112, 31, 57, 0.2);
            position: relative;
            overflow: hidden;
        }
        .newsletter-wrap::before {
            content: '❤';
            position: absolute;
            font-size: 180px;
            color: rgba(255, 255, 255, 0.05);
            right: 20px;
            top: -20px;
            pointer-events: none;
        }
        .newsletter-wrap .text h3 {
            font-size: 38px;
            font-weight: 700;
            line-height: 1.1;
            margin-bottom: 6px;
        }
        .newsletter-wrap .text p {
            color: #ffe5ec;
            font-size: 15px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 460px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 220px;
            padding: 13px 22px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: var(--radius-pill);
            color: var(--primary);
            font-size: 14px;
        }
        .newsletter-wrap form input::placeholder {
            color: var(--muted-light);
        }
        .newsletter-wrap form .btn {
            background: #fff;
            color: var(--accent-deep);
            box-shadow: none;
        }
        .newsletter-wrap form .btn:hover {
            background: var(--accent-blush);
            color: var(--accent-rose);
        }
        #newsletterMsg {
            width: 100%;
            margin-top: 10px;
            font-size: 14px;
            color: #ffccd5;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 50px;
            background: #fff;
            border-top: 1px solid var(--accent-petal);
            padding: 50px 0 28px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 36px;
        }
        .footer-grid .brand-col p {
            font-size: 14px;
            color: var(--muted);
            max-width: 320px;
            margin: 12px 0 16px;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
        }
        .footer-grid .brand-col .socials a {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: var(--surface);
            color: var(--accent-rose);
            display: grid;
            place-items: center;
            transition: var(--transition);
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent-rose);
            color: #fff;
            transform: translateY(-3px);
        }
        .footer-grid .col h5 {
            font-size: 16px;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 14px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .footer-grid .col ul li a {
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent-rose);
            padding-left: 4px;
        }
        .footer-bottom {
            text-align: center;
            border-top: 1px solid rgba(255, 204, 213, 0.4);
            padding-top: 20px;
            font-size: 13px;
            color: var(--muted-light);
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1100px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 900px) {
            .hero h1 { font-size: 44px; }
            .hero h1 span.script-font { font-size: 58px; }
            .hero { padding: 44px 30px; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { flex: 0 0 280px; }
            .deal-wrap .deal-content { padding: 32px; }
            .footer-grid { grid-template-columns: 1fr 1fr; }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
            .search-wrap { min-width: 150px; }
            .footer-grid { grid-template-columns: 1fr; gap: 24px; }
            .newsletter-wrap { padding: 32px 24px; }
        }
        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
            .hero h1 { font-size: 36px; }
            .deal-wrap .deal-content h3 { font-size: 30px; }
            .timer-box { min-width: 52px; padding: 6px 8px; }
            .timer-box .num { font-size: 24px; }
        }
    </style>
</head>

<body>

    <!-- Love Ribbon Banner -->
    <div class="love-ribbon">
        <i class="fas fa-heart"></i> Valentine &amp; Anniversary Express: Free Romantic Gift Wrapping On Every Order <i class="fas fa-heart"></i>
    </div>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle navigation menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-heart heart-icon"></i>
                    <span>Nexus<span class="accent">Amour</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-gift"></i> Keepsakes</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Best Loved</a></li>
                    <li><a href="#deals"><i class="fas fa-gem"></i> Sweetheart Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-heart"></i> Love Notes</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search for your special one..." aria-label="Search items" />
                    <button id="searchBtn" aria-label="Execute search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Lover's Profile" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Love Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Gift Bag" aria-label="Shopping Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Navigation Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-gift"></i> Keepsakes</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Best Loved</a></li>
                    <li><a href="#deals"><i class="fas fa-gem"></i> Sweetheart Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-heart"></i> Love Notes</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN CONTENT ===== -->
    <main>

        <!-- HERO -->
        <div class="container">
            <section class="hero" aria-label="Valentine's banner">
                <div class="badge"><i class="fas fa-sparkles"></i> Curated Romance Collection 2026</div>
                <h1>
                    Gifts Made For
                    <span class="script-font">Unforgettable Hearts</span>
                </h1>
                <p>Express the unspoken with handcrafted luxury lockets, matching timepieces, and floral scents crafted to linger forever.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-heart"></i> Explore Gifts</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Sweetheart Deal</button>
                </div>
            </section>
        </div>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <span class="sub-tag">Pure Devotion</span>
                        <h2 id="cat-title">Curated For Two</h2>
                        <p>Find meaningful treasures tailored to every love story</p>
                    </div>
                    <a href="#" class="view-all">Browse All Keepsakes <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <span class="sub-tag">Most Adored</span>
                        <h2 id="prod-title">Treasured By Lovers</h2>
                        <p>Popular anniversary, proposal, and spontaneous celebration choices</p>
                    </div>
                    <a href="#" class="view-all">All Romantic Selections <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <span class="sub-tag">Limited Romance</span>
                        <h2 id="deals-title">🌹 The Eternal Rose &amp; Locket Set</h2>
                        <p>A symbol of timeless devotion at our most tender price</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1518709268805-4e9042af9f23?auto=format&fit=crop&w=900&q=80" alt="Rose Box & Diamond Locket" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-heart"></i> Anniversary Special</span>
                        <h3>Preserved Velvet Rose &amp; 18k Rose Gold Locket</h3>
                        <p class="desc">A hand-picked Ecuadorian rose preserved to bloom for 3 years, accompanied by a personalized engraving locket.</p>
                        <div>
                            <span class="price-big">$149 <span class="old">$240</span></span>
                        </div>
                        <p class="stock">Only <strong>8 gift sets</strong> remaining in this batch</p>
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
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-gift"></i> Send To Your Love</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <span class="sub-tag">Letters From Hearts</span>
                        <h2 id="test-title">Real Love Stories</h2>
                        <p>Heartfelt words from couples celebrating special milestones</p>
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
                        <h3 id="news-title">Receive Our Love Letters</h3>
                        <p>Thoughtful date ideas, anniversary reminders, and private VIP offerings.</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email address..." aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-heart"></i> Subscribe</button>
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
                    <a class="brand" href="#">
                        <i class="fas fa-heart heart-icon"></i>
                        <span>Nexus<span class="accent">Amour</span></span>
                    </a>
                    <p>Creating treasured keepsakes and celebrating romance, devotion, and genuine connections worldwide.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="Pinterest"><i class="fab fa-pinterest-p"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Inspirations</h5>
                    <ul>
                        <li><a href="#">Anniversary Gifts</a></li>
                        <li><a href="#">Proposal Concierge</a></li>
                        <li><a href="#">Date Night Guide</a></li>
                        <li><a href="#">Love Notes Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Assistance</h5>
                    <ul>
                        <li><a href="#">Gift Wrapping Guide</a></li>
                        <li><a href="#">Express Delivery</a></li>
                        <li><a href="#">Custom Engravings</a></li>
                        <li><a href="#">Love Support Desk</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Our Promise</h5>
                    <ul>
                        <li><a href="#">Ethical Crafting</a></li>
                        <li><a href="#">Discreet Shipping</a></li>
                        <li><a href="#">Terms of Devotion</a></li>
                        <li><a href="#">Privacy Protection</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusAmour. Dedicated to romance &amp; everlasting memories.
            </div>
        </div>
    </footer>

    <!-- ===== SCRIPT ===== -->
    <script>
        const CATEGORIES = [
            { id: 'jewelry', name: 'Fine Jewelry', icon: 'fa-ring', count: 42 },
            { id: 'perfumes', name: 'Love Scents', icon: 'fa-spray-can-sparkles', count: 28 },
            { id: 'flowers', name: 'Eternal Blooms', icon: 'fa-spa', count: 19 },
            { id: 'watches', name: 'Couple Watches', icon: 'fa-clock', count: 24 },
            { id: 'keepsakes', name: 'Photo Keepsakes', icon: 'fa-camera-retro', count: 35 },
            { id: 'chocolates', name: 'Luxury Confections', icon: 'fa-cookie-bite', count: 16 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'Forever Entwined Gold Locket', price: 189, oldPrice: 220, rating: 5, reviews: 142, badge: 'Best Loved',
                img: 'https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?auto=format&fit=crop&w=600&q=80',
                category: 'Fine Jewelry' },
            { id: 2, title: 'Petal & Vanilla Extrait de Parfum', price: 135, rating: 5, reviews: 98, badge: 'Romantic',
                img: 'https://images.unsplash.com/photo-1592945403244-b3fbafd7f539?auto=format&fit=crop&w=600&q=80',
                category: 'Love Scents' },
            { id: 3, title: 'Matching Starlight Couple Chronograph', price: 280, oldPrice: 350, rating: 5, reviews: 76, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80',
                category: 'Couple Watches' },
            { id: 4, title: 'Handcrafted Ruby Velvet Rose Box', price: 89, rating: 5, reviews: 215, badge: 'Classic',
                img: 'https://images.unsplash.com/photo-1561181286-d3fee7d55364?auto=format&fit=crop&w=600&q=80',
                category: 'Eternal Blooms' },
            { id: 5, title: 'Personalized Leather Travel Keepsake Journal', price: 65, rating: 4, reviews: 54, badge: 'Sweet',
                img: 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?auto=format&fit=crop&w=600&q=80',
                category: 'Photo Keepsakes' },
            { id: 6, title: 'Rose Champagne Belgian Truffle Assortment', price: 55, rating: 5, reviews: 110, badge: '',
                img: 'https://images.unsplash.com/photo-1549007994-cb92caebd54b?auto=format&fit=crop&w=600&q=80',
                category: 'Luxury Confections' },
            { id: 7, title: 'Solitaire Heart Moissanite Ring', price: 340, oldPrice: 420, rating: 5, reviews: 89, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1605100804763-247f67b3557e?auto=format&fit=crop&w=600&q=80',
                category: 'Fine Jewelry' },
            { id: 8, title: 'Silk Pajama Couple Loungewear Set', price: 160, rating: 5, reviews: 130, badge: 'Cozy Love',
                img: 'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?auto=format&fit=crop&w=600&q=80',
                category: 'Keepsakes' }
        ];

        const TESTIMONIALS = [
            {
                name: 'Julian & Claire',
                role: 'Celebrating 5th Anniversary',
                avatar: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=80&q=80',
                text: 'The engraved locket brought tears of joy to her eyes. The velvet packaging felt deeply thoughtful and elegant.',
                stars: 5
            },
            {
                name: 'Marcus Sterling',
                role: 'Newly Engaged',
                avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                text: 'Fast and discreet shipping! She said yes, and couldn’t stop admiring the ring and preserved rose keepsake.',
                stars: 5
            },
            {
                name: 'Elena Rostova',
                role: 'Valentine Surprise',
                avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
                text: 'The perfume and matching couple watch set made our anniversary dinner completely unforgettable.',
                stars: 5
            },
            {
                name: 'David & Noah',
                role: 'Celebrating 1 Year Together',
                avatar: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80',
                text: 'Exceptional craftsmanship. The personalized journal and truffles made for our best celebration yet.',
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
                    <div class="count">${cat.count} gifts</div>
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
                    <div style="grid-column:1/-1;text-align:center;padding:50px 20px;color:var(--muted);">
                        <i class="fas fa-heart-broken" style="font-size:32px;color:var(--accent-rose);margin-bottom:12px;display:block;"></i>
                        No gifts found matching your heartfelt search.
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
                        <button class="wish-btn" aria-label="Add to love wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews} reviews)</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-heart"></i> Gift This</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Wishlist toggle listener
            productsGrid.querySelectorAll('.wish-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    this.classList.toggle('active');
                    const icon = this.querySelector('i');
                    if (this.classList.contains('active')) {
                        icon.className = 'fas fa-heart';
                    } else {
                        icon.className = 'far fa-heart';
                    }
                });
            });

            // Add to cart listeners
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
                const hearts = '<i class="fas fa-heart"></i>'.repeat(t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="hearts-row">${hearts}</div>
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
            cartCountEl.style.transform = 'scale(1.4)';
            setTimeout(() => cartCountEl.style.transform = '', 220);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added with Love!';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
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
            const target = new Date(now.getTime() + (48 * 60 + 20) * 60 * 1000);

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
            this.innerHTML = '<i class="fas fa-heart"></i> Sent To Gift Bag!';
            this.style.background = 'var(--accent-rose)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please provide a valid email address.';
                newsletterMsg.style.color = '#ffccd5';
                return;
            }
            newsletterMsg.textContent = '💌 You are now subscribed to our Love Letters!';
            newsletterMsg.style.color = '#ffe5ec';
            newsletterEmail.value = '';
            setTimeout(() => newsletterMsg.textContent = '', 3800);
        });

        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`💖 Your Gift Bag currently holds ${cartCount} romantic surprise${cartCount !== 1 ? 's' : ''}.`);
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
