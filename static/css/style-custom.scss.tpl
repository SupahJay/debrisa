@import url('https://fonts.googleapis.com/css2?family=Work+Sans&display=swap');

$primary:  #A08C68;

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