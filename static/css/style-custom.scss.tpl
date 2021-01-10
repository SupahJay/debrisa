@import url('https://fonts.googleapis.com/css2?family=Work+Sans&display=swap');

$primary:  #A08C68;
$secondary: #A08C68;
$main-green: #4E6548;

*, body{
    font-family: 'Poppins', sans-serif;
}
.section-topbar{
    background: $primary;
    color: white;
    padding: 6px 0;
    .top-item{
        font-size: 12px;
    }
}
.utilities-container{
    .subutility-list {
        top: 40px;
    }
}
.section-instafeed-home{
    margin: 0;
}
.head-light {
    .js-search-form{
        .form-control{
            color: black;
            border:0;
        }
        .form-group{
            display: flex;
            align-items: center;
        }
        .search-input-submit{
            position: relative;
            top: inherit;
            right: inherit;
            display: flex;
            text-transform: inherit;
            font-size: 14px;
            color: black;
            svg{
                font-size: 1.5em;
                fill: black;
                margin: 0 0 0 5PX;
            }
            &:hover{
                color: black;
                opacity: 1;
            }
        }
        .search-input{
            border-bottom: 1px solid black;
            border-radius: 0;
        }
    }
    .nav-row{
        border: 0;
        margin-top: 20px;
    }
}
.utilities-container{
    margin: 0;
    .utilities-item{
        width: inherit;
        padding: 0;
        margin: 0 10px;
        svg{
            font-size: 1.6em;
            fill: black;
        }
    }
}
.utility-head {
    span.cart-widget-amount{
        top: -8px;
        right: -11px;
    }
}
.nav-desktop{
    ul.nav-desktop-list{
        border-bottom: 1px solid $main-green;
        li.nav-item{
            padding: 0 30px;
            a.nav-list-link {
                color: black;
                text-transform: uppercase;
                span svg{
                    fill: black;
                }
            }
        }
        ul.desktop-list-subitems{
            display: flex;
            justify-content: space-between;
            li.nav-item{
                .container{
                    max-width: inherit;
                    width: inherit;
                }
            }
        }
    }
}
.breadcrumbs {
    .divider{
        font-size: 16px;
        opacity: 1;
    }
}
.section-banners-home{
    margin: 0;
}
.section-featured-home{
    margin: 0 !important;
    .container{
        position: relative;
    }
    .h1{
        text-transform: uppercase;
    }
    .js-item-product{
        margin: 0;
        /* caso as imagens sejam ajustadas, aumentar ou remover esse estilo */
        .item-image{
            max-height: 350px;
        }
        .item-description{
            border: 0;
            a{
                color: rgba(0,0,0,1);
            }
            .js-item-name{
                font-size: 16px;
                text-transform: lowercase;
            }
        }
        .item-price-container{
            .item-price{
                color: black;
            }
        }
        .labels{
            .label.label-accent{
                background: transparent !important;
                border-radius:0 !important;
                padding: 0;
                position: absolute;
                top: -5px;
                left: 15px;
                span{
                    position: absolute;
                    top: 8px;
                    left: 12px;
                    font-weight: 500;
                }
            }
        }
    }
    .item-product:hover .item-description {
        border-bottom: 0;
    }
    .item-actions{
        .item-buy-open, .js-addtocart{
            border-radius: 0;
            background: $secondary;
            height: 38px;
            font-size: 14px;
        }
        .btn-secondary{
            border-radius: 0;
            border: 1px solid $secondary;
            color: $secondary;
            font-size: 14px;
            height: 38px;
            .svg-icon-primary{
                display: none;
            }
        }
    }
    .swiper-button-prev{
        left: 0;
        border: 0;
    }
    .swiper-button-next{
        right: 0;
        border: 0;
    }
}
.js-product-table{
    /* caso as imagens sejam ajustadas, aumentar ou remover esse estilo */
    .item-image{
        max-height: 350px;
    }
    .item-description{
        border: 0;
    }
    .item-price-container{
        .item-price{
            color: black;
        }
    }
    .item-product:hover {
        .item-description{
            border: 0;
        }
    }
    .item-actions{
        .item-buy-open, .js-addtocart{
            border-radius: 0;
            background: $secondary;
            height: 38px;
        }
        .btn-secondary{
            border-radius: 0;
            border: 1px solid $secondary;
            color: $secondary;
            height: 38px;
            .svg-icon-primary{
                display: none;
            }
        }
    }
}
.section-banners-home{
    .textbanner-image-background{
        object-fit: fill;
    }
    .textbanner-image{
        transition: transform .2s; /* Animation */
        &:hover{
            transform: scale(1.03);
        }
    }
}
.section-newsletter-home.bg-primary{
    background-color:#A08C68!important;
    padding: 60px 0;
    h3.h1 {
        font-family: Poppins;
        font-style: normal;
        font-weight: 500;
        font-size: 28px;
        line-height: 42px;
        margin-bottom: 3px!important;
    }
    p {
        font-family: Poppins;
        font-style: normal;
        font-weight: normal;
        font-size: 16px;
        line-height: 24px;
    }
}

.labels{
    .label.label-accent{
        background: transparent !important;
        border-radius:0 !important;
        padding: 0;
        position: absolute;
        top: -5px;
        left: 15px;
        span{
            position: absolute;
            top: 8px;
            left: 12px;
            font-weight: 500;
        }
    }
}

.category-body{
    .title-category{
        font-weight: normal;
    }
}

.newsletter-input-group {
    display: flex;
    margin: auto;
    margin-top: 28px;
    max-width: 530px;
    input#email {
        border-radius: 0;
        border: solid 1px #acacac;
        height: 42px;
    }
    input#email::placeholder {
        font-family: Work Sans;
        font-size: 14px;
        line-height: 16px;
        color: #ACACAC;
    }
    input.btn.newsletter-btn {
        font-family: Work Sans;
        font-style: normal;
        font-weight: 600;
        font-size: 14px;
        line-height: 16px;
        text-align: center;
        background:black;
        color:white;
        width: 150px;
        margin-left:12px;
    }
    .form-group{
        margin-bottom:0
    }
}
.section-instafeed-home{
    text-align: center;
    line-height: 0;
    margin: 2px 0;
    .insta-titles {
        height: 100%;
        display: flex;
        justify-content: center;
        flex-direction: column;
        .instafeed-title{
            margin-bottom: 0;
        }
        .instafeed-user{
            font-family: Work Sans;
            font-weight: normal;
            font-size: 28px;
            line-height: 33px;
            margin-bottom: 0;
        }
        h4.sub-title {
            font-family: Work Sans;
            font-style: normal;
            font-weight: normal;
            font-size: 16px;
            line-height: 19px;
            text-transform: lowercase;
            color: #6B6B6B;
            margin-bottom: 0;
        }
    }
}
.section-products-related{
    h3.h1{
        font-size: 28px;
        margin:0 0 20px;
        font-weight:400;
    }
    /* caso as imagens sejam ajustadas, aumentar ou remover esse estilo */
    .item-image{
        max-height: 350px;
    }
    .item-description{
        .item-name{
            font-size: 16px;
            text-transform: lowercase;
        }
        .item-price-container{
            .item-price{
                color: black;
            }
        }
    }
    .item-actions{
        .js-addtocart, .item-buy-open{
            border-radius: 0;
            background: $secondary;
            height: 38px;
        }
        .btn-secondary{
            border-radius: 0;
            border: 1px solid $secondary;
            color: $secondary;
            height: 38px;
            .svg-icon-primary{
                display: none;
            }
        }
    }
    .swiper-button-prev, .swiper-button-next{
        border: 0;
    }
}
.section-single-product{
    .breadcrumbs {
        text-align: left;
    }
    .page-header{
        margin: 0 0 15px;
    }
    .labels{
        display: none;
    }
    .price-container{
        .js-price-display{
            color: black;
        }
    }
    .svg-icon-accent{
        fill: black;
    }
    .text-accent{
        color: black;
    }
    a#btn-installments{
        color: black;
    }
    .form-quantity{
        height: 44px;
    }
    .js-product-name{
        text-align: left;
        font-size: 26px;
        font-weight: 400;
    }
    .js-prod-submit-form{
        background: black;
        border-radius: 0;
    }
    .product-description{
        h2{
            display: none;
        }
    }
}
.card-img, .alert, .form-control, .form-select, .form-quantity, .modal, .btn-default, .box-rounded-small, .box{
    border-radius: 0;
}
.banner-innterna{
    margin: -30px 0 20px;
    position: relative;
}
.abas-internas-header{
    .container{
        padding: 0;
    }
    .page-header{
        h1.h2{
            text-align: left !important;
            font-size: 26px;
            font-weight: 400;
            margin: 30px 0 0;
        }
    } 
}
.page-header{
    h2{
        text-align: left;
    }
}

footer{
    background: black;
    color: white;
    margin: 0;
    h4.h3{
        font-family: Poppins;
        font-style: normal;
        font-weight: 500;
        font-size: 14px;
        line-height: 21px;
        text-transform: uppercase;
    }
    a{
        color:white;
        font-family: Poppins;
        font-style: normal;
        font-weight: normal;
        font-size: 12px;
        line-height: 18px;
        &:hover{
            color: white;
        }
    }
    .contact-info{
        .contact-item{
            font-size: 12px;
            padding: 0;
            a{
                color: white;
            }
        }
    }
    .footer-social{
        display: none;    
    }
    .footer-lega{
        background: #181818;
    }
}