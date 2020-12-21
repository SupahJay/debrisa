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
            svg{
                font-size: 1.5em;
                fill: black;
                margin: 0 0 0 5PX;
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
        border-bottom: 2px solid $main-green;
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
    }
}
.section-featured-home{
    .h1{
        text-transform: uppercase;
    }
    .js-item-product{
        .item-price-container{
            .item-price{
                color: black;
            }
        }
    }
    .item-description{
        border: 0;
    }
    .item-product:hover .item-description {
        border-bottom: 0;
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
            .svg-icon-primary{
                display: none;
            }
        }
    }
}
.js-product-table{
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
    }
    a{
        color:white;
        font-family: Poppins;
        font-style: normal;
        font-weight: normal;
        font-size: 12px;
        line-height: 18px;
    }
    .footer-social{
        display: none;    
    }
}