<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Bazaar — Raw Village Santha & Artisanal Crafts</title>

    <!-- Rustic Village Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kalam:wght@400;700&family=Yatra+One&family=Rozha+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== RAW EARTHEN & RUSTIC VILLAGE PALETTE ========== */
        :root {
            --mud-dark: #3a2213;
            --mud-medium: #593922;
            --clay-terracotta: #b84f2d;
            --clay-light: #d97443;
            --turmeric: #d48b16;
            --turmeric-light: #f7d279;
            --raw-linen: #f4ecdc;
            --card-parchment: #fdfaf3;
            --soot-black: #1f140d;
            --leaf-green: #3d5924;
            --jute-rope: #a8885a;
            --border-rough: 3px solid var(--mud-dark);
            --wood-shadow: 4px 5px 0px var(--mud-dark);
            --wood-shadow-lg: 7px 8px 0px var(--mud-dark);
            --container: 1200px;
        }

        /* ========== BASE & JUTE WEAVE CANVAS ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'Kalam', cursive, sans-serif;
            background-color: var(--raw-linen);
            /* Raw burlap/khadi sack cross-weave texture */
            background-image: 
                repeating-linear-gradient(0deg, rgba(74, 43, 22, 0.05) 0px, rgba(74, 43, 22, 0.05) 1px, transparent 1px, transparent 12px),
                repeating-linear-gradient(90deg, rgba(74, 43, 22, 0.05) 0px, rgba(74, 43, 22, 0.05) 1px, transparent 1px, transparent 12px);
            color: var(--mud-dark);
            line-height: 1.55;
            -webkit-font-smoothing: antialiased;
        }

        h1, h2, h3, h4, .village-title {
            font-family: 'Yatra One', cursive;
            letter-spacing: 0.5px;
            color: var(--mud-dark);
            font-weight: 400;
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

        /* Clay Town Announcement Strip */
        .town-crier-strip {
            background: var(--clay-terracotta);
            color: #fff;
            border-bottom: 3px solid var(--soot-black);
            padding: 8px 12px;
            font-size: 14px;
            text-align: center;
            font-weight: 700;
            letter-spacing: 0.8px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
        }
        .town-crier-strip i {
            color: var(--turmeric-light);
        }

        /* Hand-carved Wooden Button Styles */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 10px 24px;
            border: var(--border-rough);
            border-radius: 6px 16px 4px 18px;
            font-size: 16px;
            font-weight: 700;
            cursor: pointer;
            box-shadow: var(--wood-shadow);
            transition: transform 0.1s ease, box-shadow 0.1s ease;
        }
        .btn:hover {
            transform: translate(-2px, -2px);
            box-shadow: 6px 7px 0px var(--mud-dark);
        }
        .btn:active {
            transform: translate(2px, 2px);
            box-shadow: 2px 2px 0px var(--mud-dark);
        }
        .btn-terracotta {
            background: var(--clay-terracotta);
            color: #fff;
        }
        .btn-turmeric {
            background: var(--turmeric);
            color: var(--soot-black);
        }
        .btn-burlap {
            background: #e8dbbe;
            color: var(--mud-dark);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: #ede1cb;
            border-bottom: 4px solid var(--mud-dark);
            box-shadow: 0 4px 12px rgba(58, 34, 19, 0.15);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            gap: 16px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 26px;
            padding: 4px 12px;
            background: #fdf6e6;
            border: var(--border-rough);
            border-radius: 4px 14px 6px 18px;
            box-shadow: var(--wood-shadow);
            transform: rotate(-1deg);
        }
        .brand i {
            color: var(--clay-terracotta);
            font-size: 24px;
        }
        .brand span span {
            color: var(--clay-terracotta);
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 6px 14px;
            border: 2px dashed transparent;
            font-size: 16px;
            font-weight: 700;
            border-radius: 8px;
            transition: all 0.2s;
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            border-color: var(--mud-dark);
            background: #dfcfb2;
            transform: rotate(1deg);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .search-wrap {
            display: flex;
            align-items: center;
            background: #fdfaf3;
            border: var(--border-rough);
            border-radius: 8px 18px 6px 14px;
            padding: 0 10px;
            box-shadow: 2px 3px 0px var(--mud-dark);
            min-width: 210px;
        }
        .search-wrap input {
            padding: 8px 6px;
            width: 100%;
            font-size: 15px;
            font-weight: 600;
            color: var(--mud-dark);
        }
        .search-wrap input::placeholder {
            color: var(--jute-rope);
        }
        .search-wrap button {
            color: var(--mud-dark);
            font-size: 16px;
            cursor: pointer;
            padding: 6px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            border-radius: 8px 14px 6px 12px;
            border: var(--border-rough);
            background: #fdfaf3;
            box-shadow: 2px 3px 0px var(--mud-dark);
            display: grid;
            place-items: center;
            color: var(--mud-dark);
            font-size: 17px;
            cursor: pointer;
            transition: transform 0.1s ease;
        }
        .icon-btn:hover {
            background: var(--turmeric-light);
            transform: translate(-2px, -2px);
        }
        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--clay-terracotta);
            color: #fff;
            font-size: 12px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            border: 2px solid var(--mud-dark);
            display: grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border: var(--border-rough);
            background: var(--turmeric);
            border-radius: 6px;
            font-size: 18px;
            cursor: pointer;
        }

        #mobileMenu {
            display: none;
            background: #eedcb9;
            border-bottom: 3px solid var(--mud-dark);
            padding: 14px;
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
            gap: 10px;
            padding: 10px 14px;
            border: 2px solid var(--mud-dark);
            background: #fcf6e7;
            font-weight: 700;
        }

        /* ========== HERO BANNER: CLAY HUT CHOPAL ========== */
        .hero-banner {
            position: relative;
            background: #4a2816;
            background-image: radial-gradient(#63361e 15%, transparent 16%), radial-gradient(#3a1e0f 15%, transparent 16%);
            background-size: 24px 24px;
            background-position: 0 0, 12px 12px;
            color: #fff;
            border: 4px solid var(--mud-dark);
            border-radius: 12px 28px 10px 32px;
            margin: 28px auto 0;
            padding: 60px 48px;
            box-shadow: var(--wood-shadow-lg);
            overflow: hidden;
        }
        .hero-banner::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 12px;
            background: repeating-linear-gradient(45deg, var(--turmeric), var(--turmeric) 15px, var(--clay-terracotta) 15px, var(--clay-terracotta) 30px);
            border-bottom: 2px solid var(--soot-black);
        }
        .hero-banner .badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: var(--turmeric);
            color: var(--soot-black);
            border: 2px solid var(--soot-black);
            border-radius: 4px 12px 4px 10px;
            padding: 4px 14px;
            font-size: 14px;
            font-weight: 700;
            box-shadow: 2px 2px 0px var(--soot-black);
            margin-bottom: 18px;
            transform: rotate(-1deg);
        }
        .hero-banner h1 {
            font-size: 50px;
            color: #f7e6c4;
            line-height: 1.15;
            text-shadow: 3px 4px 0px #1a0f08;
            margin-bottom: 16px;
        }
        .hero-banner p {
            font-size: 18px;
            max-width: 580px;
            color: #edd1aa;
            margin-bottom: 28px;
            line-height: 1.6;
        }
        .hero-actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* ========== SECTIONS ========== */
        .section {
            padding: 50px 0 20px;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            border-bottom: 3px dashed var(--mud-dark);
            padding-bottom: 12px;
            margin-bottom: 32px;
            gap: 16px;
            flex-wrap: wrap;
        }
        .section-header h2 {
            font-size: 32px;
            display: inline-block;
            background: #ede1cb;
            border: 2px solid var(--mud-dark);
            border-radius: 4px 12px 3px 10px;
            padding: 2px 14px;
            box-shadow: 3px 3px 0px var(--mud-dark);
        }
        .section-header p {
            font-size: 15px;
            color: var(--mud-medium);
            margin-top: 6px;
            font-weight: 600;
        }
        .section-header .view-all {
            font-weight: 700;
            font-size: 15px;
            color: var(--clay-terracotta);
            border-bottom: 2px solid var(--clay-terracotta);
            transition: all 0.2s;
        }
        .section-header .view-all:hover {
            color: var(--mud-dark);
            border-bottom-color: var(--mud-dark);
            letter-spacing: 0.5px;
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--card-parchment);
            border: var(--border-rough);
            border-radius: 8px 18px 6px 14px;
            padding: 22px 12px;
            text-align: center;
            box-shadow: var(--wood-shadow);
            cursor: pointer;
            transition: all 0.15s ease;
        }
        .cat-card:hover {
            transform: translate(-3px, -3px);
            box-shadow: 6px 7px 0px var(--mud-dark);
            background: #fff4d9;
        }
        .cat-card .icon-wrap {
            width: 54px;
            height: 54px;
            border: 2px solid var(--mud-dark);
            background: #eedcb9;
            border-radius: 50% 45% 55% 48%;
            display: grid;
            place-items: center;
            font-size: 22px;
            color: var(--clay-terracotta);
            margin: 0 auto 12px;
            box-shadow: 2px 2px 0px var(--mud-dark);
        }
        .cat-card h4 {
            font-size: 16px;
            color: var(--mud-dark);
            margin-bottom: 2px;
        }
        .cat-card .count {
            font-size: 13px;
            font-weight: 700;
            color: var(--jute-rope);
        }

        /* ========== PRODUCTS (TERRACOTTA & KHADI TILES) ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }
        .product-card {
            background: var(--card-parchment);
            border: var(--border-rough);
            border-radius: 10px 22px 8px 24px;
            box-shadow: var(--wood-shadow);
            display: flex;
            flex-direction: column;
            position: relative;
            overflow: hidden;
            transition: transform 0.15s ease, box-shadow 0.15s ease;
        }
        .product-card:hover {
            transform: translate(-3px, -3px);
            box-shadow: 6px 8px 0px var(--mud-dark);
        }
        .product-card .img-wrap {
            position: relative;
            background: #dfceb1;
            aspect-ratio: 1 / 1;
            border-bottom: 3px solid var(--mud-dark);
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: sepia(18%) contrast(102%);
        }
        .product-card .badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background: var(--turmeric);
            color: var(--soot-black);
            border: 2px solid var(--mud-dark);
            border-radius: 4px 10px 4px 8px;
            padding: 2px 10px;
            font-size: 12px;
            font-weight: 700;
            box-shadow: 2px 2px 0px var(--mud-dark);
        }
        .product-card .badge.sale {
            background: var(--clay-terracotta);
            color: #fff;
        }
        .product-card .wish-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 34px;
            height: 34px;
            background: #fff;
            border: 2px solid var(--mud-dark);
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 15px;
            color: var(--mud-dark);
            cursor: pointer;
            box-shadow: 2px 2px 0px var(--mud-dark);
            transition: all 0.1s;
        }
        .product-card .wish-btn:hover,
        .product-card .wish-btn.active {
            background: var(--clay-terracotta);
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
            font-size: 12px;
            font-weight: 700;
            color: var(--clay-terracotta);
            text-transform: uppercase;
        }
        .product-card .body h5 {
            font-size: 17px;
            color: var(--mud-dark);
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
            color: var(--clay-terracotta);
        }
        .product-card .body .old-price {
            font-size: 14px;
            color: var(--jute-rope);
            text-decoration: line-through;
        }
        .product-card .body .rating {
            font-size: 13px;
            color: var(--turmeric);
            display: flex;
            align-items: center;
            gap: 4px;
        }
        .product-card .body .rating span {
            color: var(--mud-medium);
            font-weight: 700;
            font-size: 12px;
        }
        .product-card .footer {
            padding: 0 16px 16px;
        }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 10px;
            background: #eedcb9;
            border: var(--border-rough);
            border-radius: 6px 14px 4px 12px;
            color: var(--mud-dark);
            font-size: 15px;
            font-weight: 700;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            box-shadow: 2px 3px 0px var(--mud-dark);
            transition: all 0.1s;
        }
        .product-card .footer .add-btn:hover {
            background: var(--clay-terracotta);
            color: #fff;
            transform: translate(-2px, -2px);
            box-shadow: 4px 4px 0px var(--mud-dark);
        }
        .product-card .footer .add-btn.added {
            background: var(--leaf-green);
            color: #fff;
        }

        /* ========== DEAL: CHALKBOARD & CLAY POT ========== */
        .deal-wrap {
            display: flex;
            background: #fbf5e8;
            border: var(--border-rough);
            border-radius: 14px 32px 10px 30px;
            box-shadow: var(--wood-shadow-lg);
            overflow: hidden;
        }
        .deal-wrap .deal-img {
            flex: 0 0 45%;
            background: #dfcbaf;
            border-right: 3px solid var(--mud-dark);
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: sepia(20%);
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
            background: var(--clay-terracotta);
            color: #fff;
            border: 2px solid var(--mud-dark);
            border-radius: 4px 10px;
            padding: 4px 12px;
            font-size: 13px;
            font-weight: 700;
            box-shadow: 2px 2px 0px var(--mud-dark);
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 36px;
            margin-bottom: 8px;
        }
        .deal-wrap .deal-content .desc {
            font-size: 16px;
            color: var(--mud-medium);
            margin-bottom: 18px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 34px;
            font-weight: 700;
            color: var(--clay-terracotta);
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            color: var(--jute-rope);
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            margin: 6px 0 18px;
            font-weight: 700;
        }
        .deal-wrap .deal-content .stock strong {
            background: var(--turmeric-light);
            padding: 2px 8px;
            border: 1px solid var(--mud-dark);
            border-radius: 4px;
        }

        /* Chalkboard / Wooden Timer */
        .timer-grid {
            display: flex;
            gap: 12px;
            margin-bottom: 24px;
        }
        .timer-box {
            background: #2b1a11;
            color: #f7e6c4;
            border: 2px solid var(--mud-dark);
            border-radius: 6px 12px 4px 10px;
            padding: 8px 14px;
            min-width: 64px;
            text-align: center;
            box-shadow: 2px 3px 0px var(--mud-dark);
        }
        .timer-box .num {
            font-family: 'Yatra One', cursive;
            font-size: 28px;
            line-height: 1.1;
            color: var(--turmeric);
        }
        .timer-box .label {
            font-size: 11px;
            text-transform: uppercase;
            color: #d1b897;
        }

        /* ========== TESTIMONIALS (VILLAGE CHOPAL CHATS) ========== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 10px 4px 24px;
            scroll-snap-type: x mandatory;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 8px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--mud-medium);
            border-radius: 4px;
        }
        .testimonial-card {
            flex: 0 0 340px;
            background: #fbf5e8;
            border: var(--border-rough);
            border-radius: 10px 24px 8px 20px;
            box-shadow: var(--wood-shadow);
            padding: 24px;
            scroll-snap-align: start;
        }
        .testimonial-card .stars {
            color: var(--turmeric);
            font-size: 15px;
            margin-bottom: 8px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            color: var(--mud-dark);
            line-height: 1.6;
            margin-bottom: 16px;
            font-style: italic;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
            border-top: 2px dashed var(--jute-rope);
            padding-top: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            border: 2px solid var(--mud-dark);
            object-fit: cover;
        }
        .testimonial-card .author .name {
            font-family: 'Yatra One', cursive;
            font-size: 16px;
        }
        .testimonial-card .author .role {
            font-size: 12px;
            color: var(--mud-medium);
        }

        /* ========== NEWSLETTER: DANDORA / CHAUCHAL POST ========== */
        .newsletter-wrap {
            background: #462615;
            color: #fff;
            border: var(--border-rough);
            border-radius: 14px 34px 10px 30px;
            padding: 44px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
            flex-wrap: wrap;
            box-shadow: var(--wood-shadow-lg);
            position: relative;
        }
        .newsletter-wrap .text h3 {
            font-size: 32px;
            color: #f7e6c4;
            margin-bottom: 6px;
        }
        .newsletter-wrap .text p {
            color: #dfceb1;
            font-size: 16px;
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
            padding: 12px 18px;
            background: #fdfaf3;
            border: var(--border-rough);
            border-radius: 6px 16px 4px 12px;
            font-size: 15px;
            font-weight: 700;
            color: var(--mud-dark);
        }
        .newsletter-wrap form input::placeholder {
            color: var(--jute-rope);
        }
        #newsletterMsg {
            width: 100%;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 700;
            color: var(--turmeric-light);
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 50px;
            background: #eedcb9;
            border-top: 4px solid var(--mud-dark);
            padding: 46px 0 26px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 36px;
            margin-bottom: 32px;
        }
        .footer-grid .brand-col p {
            font-size: 14px;
            color: var(--mud-medium);
            margin: 12px 0 16px;
            font-weight: 600;
            max-width: 310px;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
        }
        .footer-grid .brand-col .socials a {
            width: 38px;
            height: 38px;
            border: 2px solid var(--mud-dark);
            background: #fdfaf3;
            border-radius: 6px 12px 4px 10px;
            display: grid;
            place-items: center;
            color: var(--mud-dark);
            box-shadow: 2px 2px 0px var(--mud-dark);
            transition: all 0.1s;
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--turmeric);
            transform: translate(-2px, -2px);
        }
        .footer-grid .col h5 {
            font-family: 'Yatra One', cursive;
            font-size: 18px;
            margin-bottom: 12px;
            color: var(--mud-dark);
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .footer-grid .col ul li a {
            font-size: 15px;
            color: var(--mud-medium);
            font-weight: 700;
            transition: color 0.15s;
        }
        .footer-grid .col ul li a:hover {
            color: var(--clay-terracotta);
            padding-left: 4px;
        }
        .footer-bottom {
            text-align: center;
            border-top: 2px dashed var(--mud-dark);
            padding-top: 20px;
            font-size: 14px;
            color: var(--mud-medium);
            font-weight: 700;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1100px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 900px) {
            .hero-banner h1 { font-size: 38px; }
            .hero-banner { padding: 40px 24px; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { flex: 0 0 260px; border-right: none; border-bottom: 3px solid var(--mud-dark); }
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
            .hero-banner h1 { font-size: 30px; }
            .deal-wrap .deal-content h3 { font-size: 26px; }
            .timer-box { min-width: 50px; padding: 6px 8px; }
            .timer-box .num { font-size: 22px; }
        }
    </style>
</head>

<body>

    <!-- Village Announcement Ribbon -->
    <div class="town-crier-strip">
        <i class="fas fa-bullhorn"></i>
        <span>WEEKLY VILLAGE SANTHA: 100% PURE ARTISAN HANDCRAFTS • NATURAL HARVEST PRODUCTS • FREE RUSTIC JUTE TOTE BAG</span>
        <i class="fas fa-bullhorn"></i>
    </div>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-seedling"></i>
                    <span>Palle<span>Bazaar</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-campground"></i> Chaupal</a></li>
                    <li><a href="#categories"><i class="fas fa-wheat-awn"></i> Harvest</a></li>
                    <li><a href="#products"><i class="fas fa-fire-flame-curved"></i> Fresh Crafts</a></li>
                    <li><a href="#deals"><i class="fas fa-tags"></i> Basti Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-comments"></i> Panchayat Talk</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search village bazaar..." aria-label="Search items" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Artisan Account" aria-label="Account"><i class="fas fa-user-gear"></i></button>
                    <button class="icon-btn" title="Saved items" aria-label="Wishlist"><i class="fas fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Jute Basket" aria-label="Cart">
                            <i class="fas fa-basket-shopping"></i>
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
                    <li><a href="#"><i class="fas fa-campground"></i> Chaupal</a></li>
                    <li><a href="#categories"><i class="fas fa-wheat-awn"></i> Harvest</a></li>
                    <li><a href="#products"><i class="fas fa-fire-flame-curved"></i> Fresh Crafts</a></li>
                    <li><a href="#deals"><i class="fas fa-tags"></i> Basti Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-comments"></i> Panchayat Talk</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- VILLAGE CHAUPAL HERO BANNER -->
        <div class="container">
            <section class="hero-banner" aria-label="Village marketplace banner">
                <div class="badge"><i class="fas fa-sun"></i> Direct From Rural Potteries &amp; Weavers</div>
                <h1>PURE EARTHEN ROOTS, <br>HANDMADE HONESTY.</h1>
                <p>No plastics, no mass factories. Discover sun-baked clay vessels, handloom khadi fabrics, organic forest spices, and hand-beaten brass bells straight from village artisans.</p>
                <div class="hero-actions">
                    <button class="btn btn-terracotta" id="shopNow"><i class="fas fa-arrow-right"></i> Explore Bazaar</button>
                    <button class="btn btn-turmeric" id="exploreDeals"><i class="fas fa-hourglass-half"></i> Today's Haat Deal</button>
                </div>
            </section>
        </div>

        <!-- DEPARTMENTS / SECTIONS -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="cat-title">Village Mandi</h2>
                        <p>Browse by traditional rural craft and natural farm produce</p>
                    </div>
                    <a href="#" class="view-all">All Mandi Stalls <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="prod-title">Fresh From The Kiln &amp; Loom</h2>
                        <p>Authentic handmade wares shaped by generational heritage</p>
                    </div>
                    <a href="#" class="view-all">View All Products <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DAILY HAAT DEAL -->
        <section class="section" id="deals" aria-labelledby="deal-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="deal-title">🌾 Special Haat Spotlight</h2>
                        <p>Limited batch artisan pottery from rural clay-workers</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1610701596007-11502861dcfa?auto=format&fit=crop&w=900&q=80" alt="Handcrafted Red Clay Pot Set" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-fire"></i> Sun-Baked Clay Set</span>
                        <h3>Handcrafted Red Clay Cooking Matka &amp; Bowls</h3>
                        <p class="desc">Natural unglazed porous terracotta fired with husk. Retains alkaline nutrients, enhances natural flavours, and brings authentic earthy aroma to home-cooked meals.</p>
                        <div>
                            <span class="price-big">₹850 <span class="old">₹1,200</span></span>
                        </div>
                        <p class="stock">Artisan kiln capacity: Only <strong>14 pots</strong> remaining today</p>
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
                        <button class="btn btn-terracotta" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-basket-shopping"></i> Put In Jute Basket</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- PANCHAYAT REVIEWS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="test-title">Panchayat &amp; Patron Words</h2>
                        <p>Honest feedback from people supporting rural village artisans</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- DANDORA ANNOUNCEMENT DISPATCH -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Hear The Village Dandora</h3>
                        <p>Get notified when organic winter harvests and new clay batches arrive.</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email letter..." aria-label="Email" required />
                        <button class="btn btn-turmeric" id="subscribeBtn"><i class="fas fa-drum"></i> Join Haat</button>
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
                        <i class="fas fa-seedling"></i>
                        <span>Palle<span>Bazaar</span></span>
                    </a>
                    <p>Preserving ancestral craftsmanship, hand-crushed harvests, and rural dignity with zero middlemen.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Gram Mandi</h5>
                    <ul>
                        <li><a href="#">About Rural Artisans</a></li>
                        <li><a href="#">Potter Cooperatives</a></li>
                        <li><a href="#">Loom Guilds</a></li>
                        <li><a href="#">Organic Certification</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support Desk</h5>
                    <ul>
                        <li><a href="#">Clay Care Instructions</a></li>
                        <li><a href="#">Village Transport Tracking</a></li>
                        <li><a href="#">Hassle-Free Replacement</a></li>
                        <li><a href="#">Contact Gram Sevak</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Fair Trade</h5>
                    <ul>
                        <li><a href="#">Artisan Wage Promise</a></li>
                        <li><a href="#">Plastic-Free Shipping</a></li>
                        <li><a href="#">Privacy Protocol</a></li>
                        <li><a href="#">Terms of Basti</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> PalleBazaar. Celebrating Village Life, Pure Earth &amp; Generational Hands.
            </div>
        </div>
    </footer>

    <!-- ===== JAVASCRIPT ===== -->
    <script>
        const CATEGORIES = [
            { id: 'terracotta', name: 'Clay & Terracotta', icon: 'fa-jar', count: 28 },
            { id: 'khadi', name: 'Handloom Khadi', icon: 'fa-shirt', count: 34 },
            { id: 'spices', name: 'Stone-Ground Spices', icon: 'fa-mortar-pestle', count: 19 },
            { id: 'brass', name: 'Brass & Copper Urns', icon: 'fa-bell', count: 22 },
            { id: 'wood', name: 'Neem Wood Utensils', icon: 'fa-tree', count: 17 },
            { id: 'bamboo', name: 'Bamboo Baskets', icon: 'fa-basket-shopping', count: 25 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'Unglazed Red Clay Water Matka (5L)', price: 450, oldPrice: 600, rating: 5, reviews: 112, badge: 'Kiln Fired',
                img: 'https://images.unsplash.com/photo-1578749556568-bc2c40e68b61?auto=format&fit=crop&w=600&q=80',
                category: 'Clay & Terracotta' },
            { id: 2, title: 'Hand-Spun Khadi Cotton Dupatta', price: 680, rating: 5, reviews: 74, badge: 'Handloom',
                img: 'https://images.unsplash.com/photo-1609357605129-26f69add5d6e?auto=format&fit=crop&w=600&q=80',
                category: 'Handloom Khadi' },
            { id: 3, title: 'Cast Pure Brass Pooja Diya Bell Set', price: 950, oldPrice: 1200, rating: 5, reviews: 88, badge: 'Artisan',
                img: 'https://images.unsplash.com/photo-1606293926075-69a00dbfde81?auto=format&fit=crop&w=600&q=80',
                category: 'Brass & Copper Urns' },
            { id: 4, title: 'Raw Wild Forest Honey (500g Jar)', price: 380, rating: 5, reviews: 145, badge: 'Wild Harvest',
                img: 'https://images.unsplash.com/photo-1587049352846-4a222e784d38?auto=format&fit=crop&w=600&q=80',
                category: 'Stone-Ground Spices' },
            { id: 5, title: 'Hand-Carved Neem Wood Ladle Set', price: 299, rating: 4, reviews: 52, badge: 'Organic',
                img: 'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?auto=format&fit=crop&w=600&q=80',
                category: 'Neem Wood Utensils' },
            { id: 6, title: 'Natural Cane Storage Tokri Basket', price: 340, rating: 5, reviews: 90, badge: 'Eco-Friendly',
                img: 'https://images.unsplash.com/photo-1590736969955-71cc94801759?auto=format&fit=crop&w=600&q=80',
                category: 'Bamboo Baskets' },
            { id: 7, title: 'Cold-Pressed Groundnut Oil (1 Litre)', price: 260, oldPrice: 320, rating: 5, reviews: 130, badge: 'Wood Ghani',
                img: 'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?auto=format&fit=crop&w=600&q=80',
                category: 'Stone-Ground Spices' },
            { id: 8, title: 'Village Raw Leather Mojari Jutti', price: 790, rating: 4, reviews: 63, badge: 'Handmade',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Handloom Khadi' }
        ];

        const TESTIMONIALS = [
            {
                name: 'Ramanaiah Garu',
                role: 'Village Elder & Organic Farmer',
                avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                text: 'The red clay water pot keeps drinking water naturally chilled and fragrant. Reminded me of my childhood home in the fields.',
                stars: 5
            },
            {
                name: 'Lakshmi Devi',
                role: 'Handloom Enthusiast',
                avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
                text: 'The khadi weave is soft, breathable, and honest. Real respect to the rural weavers keeping our Indian roots alive.',
                stars: 5
            },
            {
                name: 'Srinivas Murthy',
                role: 'Home Cook & Food Lover',
                avatar: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80',
                text: 'Cooking dal and rice in terracotta handi completely transformed the taste. Clean straw packaging with zero plastic.',
                stars: 5
            }
        ];

        let cartCount = 0;

        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const testimonialsList = document.getElementById('testimonialsList');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} Wares</div>
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
                    <div style="grid-column:1/-1;text-align:center;padding:40px;background:#eedcb9;border:3px dashed var(--mud-dark);border-radius:12px;">
                        <i class="fas fa-basket-shopping" style="font-size:32px;color:var(--clay-terracotta);margin-bottom:10px;display:block;"></i>
                        No village wares found matching your search.
                    </div>`;
                return;
            }

            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">₹${p.oldPrice}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));

                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Save to favorites"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">₹${p.price}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews} reviews)</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Put in Basket</button>
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

            // Add to Cart
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
                '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
            }[s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.4)';
            setTimeout(() => cartCountEl.style.transform = '', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> In Jute Basket!';
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
            const target = new Date(now.getTime() + (36 * 60 + 40) * 60 * 1000);

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
            this.innerHTML = '<i class="fas fa-check"></i> Added to Basket!';
            this.style.background = 'var(--leaf-green)';
            this.style.color = '#fff';
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
                newsletterMsg.textContent = 'Please enter a valid postal email.';
                newsletterMsg.style.color = '#ff9980';
                return;
            }
            newsletterMsg.textContent = '🌾 Ram Ram! You are now subscribed to our village dispatch.';
            newsletterMsg.style.color = '#f7d279';
            newsletterEmail.value = '';
            setTimeout(() => newsletterMsg.textContent = '', 3800);
        });

        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🧺 Your Jute Basket holds ${cartCount} artisan item${cartCount !== 1 ? 's' : ''}.`);
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
