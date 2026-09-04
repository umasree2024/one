<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusAura — Butter-Smooth Glassmorphic E-Commerce</title>

    <!-- Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== GLASS & COLOR DESIGN TOKENS ========== */
        :root {
            --bg-canvas: #090a10;
            --glass-tile: rgba(255, 255, 255, 0.04);
            --glass-tile-hover: rgba(255, 255, 255, 0.08);
            --glass-surface: rgba(255, 255, 255, 0.03);
            --glass-border: rgba(255, 255, 255, 0.08);
            --glass-border-light: rgba(255, 255, 255, 0.18);
            --glass-specular: rgba(255, 255, 255, 0.35);

            --accent-glow: #6366f1;
            --accent-cyan: #06b6d4;
            --accent-rose: #f43f5e;
            --accent-amber: #f59e0b;

            --text-main: #f8fafc;
            --text-muted: #94a3b8;
            --text-dim: #64748b;

            --blur-strength: 20px;
            --radius-tile: 24px;
            --radius-pill: 9999px;
            --radius-sm: 14px;

            --shadow-glass: 0 20px 40px -15px rgba(0, 0, 0, 0.6), inset 0 1px 0 var(--glass-specular);
            --shadow-glow: 0 0 35px -5px rgba(99, 102, 241, 0.35);

            /* Butter-smooth cubic bezier */
            --ease-butter: cubic-bezier(0.16, 1, 0.3, 1);
            --transition-smooth: 0.4s var(--ease-butter);
            --container: 1240px;
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
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            background-color: var(--bg-canvas);
            color: var(--text-main);
            line-height: 1.6;
            overflow-x: hidden;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
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

        /* Floating Ambient Backing Lights */
        .ambient-canvas {
            position: fixed;
            inset: 0;
            pointer-events: none;
            z-index: 0;
            overflow: hidden;
        }
        .ambient-orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(120px);
            opacity: 0.45;
            will-change: transform;
            animation: floatGlow 20s infinite alternate ease-in-out;
        }
        .orb-1 {
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, #6366f1 0%, transparent 70%);
            top: -150px;
            left: -100px;
        }
        .orb-2 {
            width: 700px;
            height: 700px;
            background: radial-gradient(circle, #ec4899 0%, transparent 70%);
            top: 40%;
            right: -200px;
            animation-duration: 26s;
        }
        .orb-3 {
            width: 550px;
            height: 550px;
            background: radial-gradient(circle, #06b6d4 0%, transparent 70%);
            bottom: -150px;
            left: 20%;
            animation-duration: 22s;
        }
        @keyframes floatGlow {
            0% { transform: translate(0, 0) scale(1); }
            100% { transform: translate(60px, 40px) scale(1.1); }
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
            position: relative;
            z-index: 1;
        }

        /* Shared Glass Tile Token */
        .glass-tile {
            background: var(--glass-tile);
            backdrop-filter: blur(var(--blur-strength)) saturate(180%);
            -webkit-backdrop-filter: blur(var(--blur-strength)) saturate(180%);
            border: 1px solid var(--glass-border);
            border-top: 1px solid var(--glass-border-light);
            border-radius: var(--radius-tile);
            box-shadow: var(--shadow-glass);
            transition: var(--transition-smooth);
        }
        .glass-tile:hover {
            background: var(--glass-tile-hover);
            border-color: var(--glass-border-light);
            box-shadow: 0 30px 60px -20px rgba(0, 0, 0, 0.7), inset 0 1px 0 rgba(255, 255, 255, 0.4);
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 13px 30px;
            border-radius: var(--radius-pill);
            font-weight: 600;
            font-size: 14px;
            letter-spacing: 0.3px;
            cursor: pointer;
            transition: var(--transition-smooth);
            position: relative;
            overflow: hidden;
        }
        .btn-primary {
            background: linear-gradient(135deg, #6366f1, #8b5cf6);
            color: #ffffff;
            box-shadow: 0 10px 25px -5px rgba(99, 102, 241, 0.4), inset 0 1px 0 rgba(255, 255, 255, 0.3);
        }
        .btn-primary:hover {
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 18px 35px -6px rgba(99, 102, 241, 0.6), inset 0 1px 0 rgba(255, 255, 255, 0.5);
        }
        .btn-primary:active {
            transform: translateY(0) scale(0.98);
        }
        .btn-glass {
            background: rgba(255, 255, 255, 0.05);
            color: var(--text-main);
            border: 1px solid var(--glass-border-light);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
        }
        .btn-glass:hover {
            background: rgba(255, 255, 255, 0.12);
            border-color: rgba(255, 255, 255, 0.3);
            transform: translateY(-3px);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 16px;
            z-index: 100;
            padding: 0 20px;
            margin-bottom: 24px;
        }
        .header-glass {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px 24px;
            border-radius: var(--radius-pill);
            background: rgba(15, 17, 26, 0.65);
            backdrop-filter: blur(28px) saturate(200%);
            -webkit-backdrop-filter: blur(28px) saturate(200%);
            border: 1px solid var(--glass-border);
            border-top: 1px solid var(--glass-border-light);
            box-shadow: 0 20px 40px -15px rgba(0, 0, 0, 0.7);
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 21px;
            font-weight: 800;
            letter-spacing: -0.5px;
            color: #fff;
        }
        .brand-icon {
            width: 38px;
            height: 38px;
            border-radius: 12px;
            background: linear-gradient(135deg, #6366f1, #ec4899);
            display: grid;
            place-items: center;
            font-size: 17px;
            box-shadow: 0 8px 20px -4px rgba(99, 102, 241, 0.5);
        }
        .brand span span {
            background: linear-gradient(135deg, #a5b4fc, #f472b6);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 9px 18px;
            border-radius: var(--radius-pill);
            font-size: 13.5px;
            font-weight: 500;
            color: var(--text-muted);
            transition: var(--transition-smooth);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            color: #fff;
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .search-glass {
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid var(--glass-border);
            border-radius: var(--radius-pill);
            padding: 0 16px;
            min-width: 220px;
            transition: var(--transition-smooth);
        }
        .search-glass:focus-within {
            background: rgba(255, 255, 255, 0.08);
            border-color: rgba(99, 102, 241, 0.5);
            box-shadow: 0 0 20px rgba(99, 102, 241, 0.25);
        }
        .search-glass input {
            padding: 9px 6px;
            width: 100%;
            font-size: 13px;
            color: #fff;
        }
        .search-glass input::placeholder {
            color: var(--text-dim);
        }
        .search-glass button {
            color: var(--text-muted);
            cursor: pointer;
            transition: var(--transition-smooth);
        }
        .search-glass button:hover {
            color: #fff;
        }

        .icon-btn {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid var(--glass-border);
            display: grid;
            place-items: center;
            color: var(--text-muted);
            font-size: 15px;
            cursor: pointer;
            transition: var(--transition-smooth);
        }
        .icon-btn:hover {
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            transform: scale(1.08);
        }
        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: linear-gradient(135deg, #f43f5e, #fb7185);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            box-shadow: 0 2px 10px rgba(244, 63, 94, 0.5);
            transition: transform 0.3s var(--ease-butter);
        }

        .mobile-toggle {
            display: none;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--glass-border);
            color: #fff;
            font-size: 16px;
            place-items: center;
            cursor: pointer;
        }

        #mobileMenu {
            display: none;
            margin-top: 12px;
            padding: 16px;
            border-radius: 20px;
            background: rgba(15, 17, 26, 0.85);
            backdrop-filter: blur(28px);
            border: 1px solid var(--glass-border);
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
            padding: 12px 18px;
            border-radius: var(--radius-sm);
            color: var(--text-muted);
            font-weight: 500;
        }
        #mobileMenu ul li a:hover {
            color: #fff;
            background: rgba(255, 255, 255, 0.08);
        }

        /* ========== HERO ========== */
        .hero-tile {
            position: relative;
            padding: 84px 64px;
            overflow: hidden;
            margin-top: 16px;
        }
        .hero-tile::after {
            content: '';
            position: absolute;
            top: -100px;
            right: -100px;
            width: 450px;
            height: 450px;
            background: radial-gradient(circle, rgba(99, 102, 241, 0.25) 0%, transparent 70%);
            border-radius: 50%;
            pointer-events: none;
        }
        .hero-pill {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 18px;
            border-radius: var(--radius-pill);
            background: rgba(99, 102, 241, 0.12);
            border: 1px solid rgba(99, 102, 241, 0.3);
            font-size: 13px;
            font-weight: 600;
            color: #a5b4fc;
            margin-bottom: 24px;
        }
        .hero-tile h1 {
            font-size: 58px;
            font-weight: 800;
            line-height: 1.1;
            letter-spacing: -1.5px;
            max-width: 680px;
            margin-bottom: 20px;
        }
        .hero-tile h1 .gradient-text {
            background: linear-gradient(135deg, #ffffff 40%, #a5b4fc 70%, #f472b6 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .hero-tile p {
            font-size: 17px;
            color: var(--text-muted);
            max-width: 520px;
            margin-bottom: 36px;
            line-height: 1.7;
        }
        .hero-actions {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        /* ========== SECTION HEADERS ========== */
        .section {
            padding: 64px 0 24px;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            margin-bottom: 36px;
            gap: 16px;
            flex-wrap: wrap;
        }
        .section-header .tagline {
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            color: #818cf8;
            margin-bottom: 6px;
            display: block;
        }
        .section-header h2 {
            font-size: 32px;
            font-weight: 700;
            letter-spacing: -0.6px;
            color: #fff;
        }
        .section-header p {
            font-size: 14.5px;
            color: var(--text-muted);
            margin-top: 4px;
        }
        .section-header .view-all {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            font-size: 14px;
            font-weight: 600;
            color: #a5b4fc;
            padding: 8px 18px;
            border-radius: var(--radius-pill);
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid var(--glass-border);
            transition: var(--transition-smooth);
        }
        .section-header .view-all:hover {
            color: #fff;
            background: rgba(255, 255, 255, 0.08);
            border-color: var(--glass-border-light);
            transform: translateX(4px);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-tile {
            padding: 28px 16px;
            text-align: center;
            cursor: pointer;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 14px;
        }
        .cat-tile:hover {
            transform: translateY(-8px);
        }
        .cat-tile .icon-frame {
            width: 58px;
            height: 58px;
            border-radius: 18px;
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid var(--glass-border-light);
            display: grid;
            place-items: center;
            font-size: 20px;
            color: #a5b4fc;
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
            transition: var(--transition-smooth);
        }
        .cat-tile:hover .icon-frame {
            background: linear-gradient(135deg, rgba(99, 102, 241, 0.3), rgba(236, 72, 153, 0.3));
            color: #fff;
            transform: scale(1.1);
            box-shadow: 0 12px 24px -6px rgba(99, 102, 241, 0.4);
        }
        .cat-tile h4 {
            font-size: 15px;
            font-weight: 600;
            color: #fff;
        }
        .cat-tile .count {
            font-size: 12px;
            color: var(--text-dim);
            font-weight: 500;
        }

        /* ========== PRODUCTS GRID ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }
        .product-tile {
            display: flex;
            flex-direction: column;
            overflow: hidden;
            position: relative;
        }
        .product-tile:hover {
            transform: translateY(-8px);
        }
        .product-tile .img-frame {
            position: relative;
            aspect-ratio: 1 / 1;
            border-radius: 18px;
            margin: 10px;
            overflow: hidden;
            background: #020408;
        }
        .product-tile .img-frame img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s var(--ease-butter);
        }
        .product-tile:hover .img-frame img {
            transform: scale(1.08);
        }
        .product-tile .badge-pill {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 4px 12px;
            border-radius: var(--radius-pill);
            background: rgba(15, 17, 26, 0.7);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.15);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.5px;
            color: #fff;
        }
        .product-tile .badge-pill.sale {
            background: rgba(244, 63, 94, 0.35);
            border-color: rgba(244, 63, 94, 0.5);
            color: #fecdd3;
        }
        .product-tile .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(15, 17, 26, 0.6);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.12);
            display: grid;
            place-items: center;
            color: var(--text-muted);
            font-size: 15px;
            cursor: pointer;
            transition: var(--transition-smooth);
        }
        .product-tile .wish-btn:hover,
        .product-tile .wish-btn.active {
            color: #f43f5e;
            background: rgba(255, 255, 255, 0.15);
            transform: scale(1.12);
        }
        .product-tile .body {
            padding: 14px 20px;
            display: flex;
            flex-direction: column;
            gap: 6px;
            flex: 1;
        }
        .product-tile .category-tag {
            font-size: 11.5px;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            color: #818cf8;
            font-weight: 600;
        }
        .product-tile h5 {
            font-size: 16px;
            font-weight: 600;
            color: #fff;
            line-height: 1.4;
        }
        .product-tile .price-row {
            display: flex;
            align-items: baseline;
            gap: 10px;
            margin-top: 4px;
        }
        .product-tile .price {
            font-size: 20px;
            font-weight: 700;
            color: #fff;
        }
        .product-tile .old-price {
            font-size: 14px;
            color: var(--text-dim);
            text-decoration: line-through;
        }
        .product-tile .rating {
            font-size: 13px;
            color: var(--accent-amber);
            display: flex;
            align-items: center;
            gap: 4px;
        }
        .product-tile .rating span {
            color: var(--text-dim);
            font-size: 12px;
        }
        .product-tile .footer {
            padding: 0 20px 20px;
        }
        .product-tile .footer .add-btn {
            width: 100%;
            padding: 12px;
            border-radius: var(--radius-pill);
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--glass-border-light);
            color: #fff;
            font-weight: 600;
            font-size: 13.5px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition-smooth);
        }
        .product-tile .footer .add-btn:hover {
            background: linear-gradient(135deg, #6366f1, #8b5cf6);
            border-color: transparent;
            box-shadow: 0 10px 24px -5px rgba(99, 102, 241, 0.45);
            transform: translateY(-2px);
        }
        .product-tile .footer .add-btn.added {
            background: #10b981;
            border-color: transparent;
        }

        /* ========== DEAL SPOTLIGHT ========== */
        .deal-tile {
            display: flex;
            overflow: hidden;
        }
        .deal-tile .deal-img {
            flex: 0 0 46%;
            position: relative;
            background: #000;
        }
        .deal-tile .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-tile .deal-content {
            flex: 1;
            padding: 54px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-tile .deal-content .tag {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 5px 14px;
            border-radius: var(--radius-pill);
            background: rgba(245, 158, 11, 0.12);
            border: 1px solid rgba(245, 158, 11, 0.3);
            color: #fbbf24;
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 16px;
            align-self: flex-start;
        }
        .deal-tile .deal-content h3 {
            font-size: 38px;
            font-weight: 700;
            line-height: 1.15;
            color: #fff;
            margin-bottom: 12px;
        }
        .deal-tile .deal-content .desc {
            color: var(--text-muted);
            font-size: 15px;
            margin-bottom: 24px;
            max-width: 500px;
        }
        .deal-tile .deal-content .price-big {
            font-size: 36px;
            font-weight: 800;
            color: #fff;
        }
        .deal-tile .deal-content .price-big .old {
            font-size: 20px;
            font-weight: 400;
            color: var(--text-dim);
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-tile .deal-content .stock {
            font-size: 13.5px;
            color: var(--text-muted);
            margin: 10px 0 24px;
        }
        .deal-tile .deal-content .stock strong {
            color: #f43f5e;
        }

        /* Frosted Timer Capsules */
        .timer-grid {
            display: flex;
            gap: 12px;
            margin-bottom: 30px;
        }
        .timer-capsule {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid var(--glass-border-light);
            border-radius: 16px;
            padding: 12px 16px;
            min-width: 70px;
            text-align: center;
            backdrop-filter: blur(10px);
        }
        .timer-capsule .num {
            font-size: 28px;
            font-weight: 700;
            color: #fff;
            line-height: 1;
        }
        .timer-capsule .label {
            font-size: 11px;
            color: var(--text-dim);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-top: 4px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 24px;
            scroll-snap-type: x mandatory;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 6px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--glass-border-light);
            border-radius: var(--radius-pill);
        }
        .testimonial-tile {
            flex: 0 0 360px;
            padding: 30px;
            scroll-snap-align: start;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .testimonial-tile .stars {
            color: var(--accent-amber);
            font-size: 14px;
            letter-spacing: 2px;
            margin-bottom: 14px;
        }
        .testimonial-tile blockquote {
            font-size: 15px;
            color: #e2e8f0;
            line-height: 1.6;
            margin-bottom: 24px;
            font-weight: 400;
        }
        .testimonial-tile .author {
            display: flex;
            align-items: center;
            gap: 14px;
        }
        .testimonial-tile .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            border: 1px solid var(--glass-border-light);
            object-fit: cover;
        }
        .testimonial-tile .author .name {
            font-size: 14.5px;
            font-weight: 600;
            color: #fff;
        }
        .testimonial-tile .author .role {
            font-size: 12px;
            color: var(--text-dim);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-tile {
            padding: 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
            position: relative;
            overflow: hidden;
        }
        .newsletter-tile .text h3 {
            font-size: 32px;
            font-weight: 700;
            color: #fff;
            margin-bottom: 8px;
        }
        .newsletter-tile .text p {
            color: var(--text-muted);
            font-size: 15px;
        }
        .newsletter-tile form {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 480px;
        }
        .newsletter-tile form input {
            flex: 1;
            min-width: 230px;
            padding: 14px 22px;
            border-radius: var(--radius-pill);
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid var(--glass-border-light);
            color: #fff;
            font-size: 14px;
            backdrop-filter: blur(12px);
            transition: var(--transition-smooth);
        }
        .newsletter-tile form input:focus {
            background: rgba(255, 255, 255, 0.08);
            border-color: #818cf8;
            box-shadow: 0 0 25px rgba(99, 102, 241, 0.25);
        }
        #newsletterMsg {
            width: 100%;
            font-size: 13.5px;
            margin-top: 6px;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 60px;
            padding: 50px 0 30px;
            border-top: 1px solid var(--glass-border);
            position: relative;
            z-index: 1;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }
        .footer-grid .brand-col p {
            font-size: 14px;
            color: var(--text-muted);
            margin: 14px 0 20px;
            max-width: 320px;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
        }
        .footer-grid .brand-col .socials a {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid var(--glass-border);
            display: grid;
            place-items: center;
            color: var(--text-muted);
            transition: var(--transition-smooth);
        }
        .footer-grid .brand-col .socials a:hover {
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            transform: translateY(-2px);
        }
        .footer-grid .col h5 {
            font-size: 14px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            color: #fff;
            margin-bottom: 16px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .footer-grid .col ul li a {
            font-size: 14px;
            color: var(--text-muted);
            transition: var(--transition-smooth);
        }
        .footer-grid .col ul li a:hover {
            color: #fff;
            padding-left: 4px;
        }
        .footer-bottom {
            text-align: center;
            border-top: 1px solid var(--glass-border);
            padding-top: 24px;
            font-size: 13px;
            color: var(--text-dim);
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1100px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 900px) {
            .hero-tile h1 { font-size: 42px; }
            .hero-tile { padding: 48px 32px; }
            .deal-tile { flex-direction: column; }
            .deal-tile .deal-img { flex: 0 0 280px; }
            .deal-tile .deal-content { padding: 36px; }
            .footer-grid { grid-template-columns: 1fr 1fr; }
            .newsletter-tile { padding: 40px 30px; }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
            .search-glass { min-width: 140px; }
            .footer-grid { grid-template-columns: 1fr; gap: 28px; }
        }
        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
            .hero-tile h1 { font-size: 34px; }
            .deal-tile .deal-content h3 { font-size: 28px; }
            .timer-capsule { min-width: 54px; padding: 8px 10px; }
            .timer-capsule .num { font-size: 22px; }
        }
    </style>
</head>

<body>

    <!-- Backing Blurred Orbs -->
    <div class="ambient-canvas" aria-hidden="true">
        <div class="ambient-orb orb-1"></div>
        <div class="ambient-orb orb-2"></div>
        <div class="ambient-orb orb-3"></div>
    </div>

    <!-- ===== FROSTED HEADER ===== -->
    <header>
        <div class="container">
            <div class="header-glass">
                <div style="display:flex;align-items:center;gap:12px;">
                    <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle Navigation">
                        <i class="fas fa-bars"></i>
                    </button>
                    <a class="brand" href="#">
                        <div class="brand-icon"><i class="fas fa-cube"></i></div>
                        <span>Nexus<span>Aura</span></span>
                    </a>
                </div>

                <nav class="main-nav" id="mainNav" aria-label="Main Navigation">
                    <ul>
                        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                        <li><a href="#products"><i class="fas fa-bolt"></i> Trending</a></li>
                        <li><a href="#deals"><i class="fas fa-sparkles"></i> Spotlight</a></li>
                        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    </ul>
                </nav>

                <div class="header-actions">
                    <div class="search-glass" role="search">
                        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                        <button id="searchBtn" aria-label="Submit Search"><i class="fas fa-search"></i></button>
                    </div>
                    <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>

            <!-- Mobile Menu -->
            <div id="mobileMenu">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-bolt"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-sparkles"></i> Spotlight</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN CONTENT ===== -->
    <main>

        <!-- HERO TILE -->
        <div class="container">
            <section class="glass-tile hero-tile" aria-label="Hero Spotlight">
                <div class="hero-pill"><i class="fas fa-sparkles"></i> Fluid Glass Edition 2026</div>
                <h1>
                    Next-Gen Essentials, <br>
                    <span class="gradient-text">Purely Refracted.</span>
                </h1>
                <p>Immerse yourself in precision-crafted technology and lifestyle hardware designed with seamless speed, zero friction, and butter-smooth delivery.</p>
                <div class="hero-actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Explore Catalog</button>
                    <button class="btn btn-glass" id="exploreDeals"><i class="fas fa-bolt"></i> Flash Deals</button>
                </div>
            </section>
        </div>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <span class="tagline">Directory</span>
                        <h2 id="cat-title">Browse Departments</h2>
                        <p>Explore curated essentials through translucent glass tiles</p>
                    </div>
                    <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <span class="tagline">Curated Catalog</span>
                        <h2 id="prod-title">Trending Hardware</h2>
                        <p>Our community's most sought-after devices and apparel</p>
                    </div>
                    <a href="#" class="view-all">Full Inventory <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- SPOTLIGHT DEAL -->
        <section class="section" id="deals" aria-labelledby="deal-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <span class="tagline">Time-Locked Exclusive</span>
                        <h2 id="deal-title">⚡ Flash Refraction</h2>
                        <p>Dynamic price reduction with real-time stock countdown</p>
                    </div>
                </div>
                <div class="glass-tile deal-tile">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2 Space Gray" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited Hardware Reserve</span>
                        <h3>MacBook Air M2 Liquid Retina</h3>
                        <p class="desc">Ultra-light unified architecture engineered for silent, thermal-efficient computing with exceptional battery longevity.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Inventory alert: Only <strong>12 units</strong> remain in queue</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-capsule">
                                <div class="num" id="dealDays">00</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-capsule">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-capsule">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-capsule">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-cart-plus"></i> Claim This Hardware</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <span class="tagline">Feedback</span>
                        <h2 id="test-title">Community Transmissions</h2>
                        <p>Verified purchase accounts and genuine impressions</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="glass-tile newsletter-tile">
                    <div class="text">
                        <h3 id="news-title">Stay Connected to the Mesh</h3>
                        <p>Direct dispatches on firmware updates, private sales, and drop archives.</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email..." aria-label="Email" required />
                        <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== GLASS FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <a class="brand" href="#">
                        <div class="brand-icon"><i class="fas fa-cube"></i></div>
                        <span>Nexus<span>Aura</span></span>
                    </a>
                    <p>Designed for fluidity, transparency, and high-performance modern retail interactions.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="GitHub"><i class="fab fa-github"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Architecture</h5>
                    <ul>
                        <li><a href="#">Engineered Glass</a></li>
                        <li><a href="#">Hardware Pipeline</a></li>
                        <li><a href="#">Sustainability Report</a></li>
                        <li><a href="#">Changelog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Terminal</h5>
                    <ul>
                        <li><a href="#">Live Support</a></li>
                        <li><a href="#">Freight Tracker</a></li>
                        <li><a href="#">Hassle-Free Returns</a></li>
                        <li><a href="#">Documentation</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Protocol</h5>
                    <ul>
                        <li><a href="#">Privacy Framework</a></li>
                        <li><a href="#">Service Terms</a></li>
                        <li><a href="#">Cookie Policies</a></li>
                        <li><a href="#">Security Audit</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusAura. Precision Glassmorphic Interface.
            </div>
        </div>
    </footer>

    <!-- ===== JAVASCRIPT ===== -->
    <script>
        const CATEGORIES = [
            { id: 'smartphones', name: 'Smartphones', icon: 'fa-mobile-screen-button', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'audio', name: 'Acoustics', icon: 'fa-headphones', count: 31 },
            { id: 'wearables', name: 'Wearables', icon: 'fa-clock', count: 29 },
            { id: 'optics', name: 'Optics', icon: 'fa-camera', count: 14 },
            { id: 'apparel', name: 'Lifestyle', icon: 'fa-shirt', count: 42 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max Titan', price: 1099, oldPrice: 1199, rating: 5, reviews: 148, badge: 'Flagship',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14" Space', price: 1999, rating: 5, reviews: 92, badge: 'Pro',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Ultra Carbon', price: 349, oldPrice: 399, rating: 5, reviews: 210, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Wearables' },
            { id: 4, title: 'Air Max 270 Translucent', price: 150, rating: 4, reviews: 63, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Lifestyle' },
            { id: 5, title: 'Sony Alpha 7 IV Mirrorless', price: 2499, rating: 5, reviews: 45, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Optics' },
            { id: 6, title: 'Chanel No. 5 Glass Flacon', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Lifestyle' },
            { id: 7, title: 'Apex Weatherproof Pack', price: 79, oldPrice: 99, rating: 4, reviews: 78, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Lifestyle' },
            { id: 8, title: 'Sony WH-1000XM5 Studio', price: 399, rating: 5, reviews: 165, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Acoustics' }
        ];

        const TESTIMONIALS = [
            {
                name: 'Ava Martin',
                role: 'Hardware Architect',
                avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
                text: 'The glass UI feels effortless and silky smooth. Ordering was instantaneous and product quality was pristine.',
                stars: 5
            },
            {
                name: 'Michael Lee',
                role: 'Creative Technologist',
                avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
                text: 'Best shopping experience I have had in years. The tracking updates and zero-friction checkout set a standard.',
                stars: 5
            },
            {
                name: 'Sophia Chen',
                role: 'Visual Designer',
                avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
                text: 'Subtle specular highlights and smooth transitions make browsing feel tactile and remarkably satisfying.',
                stars: 5
            },
            {
                name: 'James Wilson',
                role: 'Systems Engineer',
                avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                text: 'Acquired the M2 deal seamlessly. Delivered in vacuum-sealed safe packaging ahead of estimated arrival.',
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
                el.className = 'glass-tile cat-tile';
                el.innerHTML = `
                    <div class="icon-frame"><i class="fas ${cat.icon}"></i></div>
                    <div>
                        <h4>${cat.name}</h4>
                        <div class="count">${cat.count} items</div>
                    </div>
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
                    <div class="glass-tile" style="grid-column:1/-1;text-align:center;padding:50px;color:var(--text-muted);">
                        <i class="fas fa-ghost" style="font-size:32px;color:#818cf8;margin-bottom:12px;display:block;"></i>
                        No hardware found matching your query.
                    </div>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'glass-tile product-tile';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge-pill ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-frame">
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
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add to Queue</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Wishlist interaction
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

            // Add to cart interaction
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
                el.className = 'glass-tile testimonial-tile';
                el.innerHTML = `
                    <div>
                        <div class="stars">${stars}</div>
                        <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    </div>
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
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 250);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
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
            this.innerHTML = '<i class="fas fa-check"></i> Queued in Cart';
            this.style.background = '#10b981';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid dispatch address.';
                newsletterMsg.style.color = '#f87171';
                return;
            }
            newsletterMsg.textContent = '⚡ Connected: Dispatch queue confirmed.';
            newsletterMsg.style.color = '#34d399';
            newsletterEmail.value = '';
            setTimeout(() => newsletterMsg.textContent = '', 3800);
        });

        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Hardware Queue contains ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
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
