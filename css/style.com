*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: inherit; }

html {
  box-sizing: border-box;
  font-size: 62.5%; }
  @media only screen and (max-width: 75em) {
    html {
      font-size: 50%; } }

body {
  font-family: "Nunito", sans-serif;
  font-weight: 300;
  color: #6D5D4B; }

.container {
  display: grid;
  grid-template-rows: 80vh min-content 40vw repeat(3, min-content);
  grid-template-columns: [sidebar-start] 8rem [sidebar-end full-start] minmax(6rem, 1fr) [center-start] repeat(8, [col-start] minmax(min-content, 14rem) [col-end]) [center-end] minmax(6rem, 1fr) [full-end]; }
  @media only screen and (max-width: 62.5em) {
    .container {
      grid-template-rows: 6rem 80vh min-content 40vw repeat(3, min-content);
      grid-template-columns: [full-start] minmax(6rem, 1fr) [center-start] repeat(8, [col-start] minmax(min-content, 14rem) [col-end]) [center-end] minmax(6rem, 1fr) [full-end]; } }
  @media only screen and (max-width: 50em) {
    .container {
      grid-template-rows: 6rem calc(100vh - 6rem); } }

.mb-sm {
  margin-bottom: 2rem; }

.mb-md {
  margin-bottom: 3rem; }

.mb-lg {
  margin-bottom: 4rem; }

.heading-1, .heading-2, .heading-3, .heading-4 {
  font-family: "Josefin Sans", sans-serif;
  font-weight: 400; }

.heading-1 {
  font-size: 4.5rem;
  color: #f9f7f6;
  line-height: 1; }

.heading-2 {
  font-size: 4rem;
  font-style: italic; }
  .heading-2--light {
    color: #f9f7f6; }
  .heading-2--dark {
    color: #54483A; }

.heading-3 {
  font-size: 1.6rem;
  color: #c69963;
  text-transform: uppercase; }

.heading-4 {
  font-size: 1.9rem; }
  .heading-4--light {
    color: #f9f7f6; }
  .heading-4--dark {
    color: #54483A; }

.btn {
  color: #fff;
  background-color: #c69963;
  border: none;
  border-radius: 0;
  font-size: 1.5rem;
  font-family: "Josefin Sans", sans-serif;
  text-transform: uppercase;
  padding: 1.8rem 3rem;
  cursor: pointer;
  transition: all .2s; }
  .btn:hover {
    background-color: #B28451; }

.sidebar {
  background-color: #c69963;
  grid-column: sidebar-start / sidebar-end;
  grid-row: 1 / -1;
  display: flex;
  justify-content: center; }
  @media only screen and (max-width: 62.5em) {
    .sidebar {
      grid-column: 1 / -1;
      grid-row: 1 / 2;
      justify-content: flex-end;
      align-items: center; } }

.nav-btn {
  border: none;
  border-radius: 0;
  margin-top: 4rem;
  background-color: #fff;
  height: 2px;
  width: 4.5rem; }
  .nav-btn::before, .nav-btn::after {
    background-color: #fff;
    height: 2px;
    width: 4.5rem;
    content: "";
    display: block; }
  .nav-btn::before {
    transform: translateY(-1.5rem); }
  .nav-btn::after {
    transform: translateY(1.3rem); }
  @media only screen and (max-width: 62.5em) {
    .nav-btn {
      margin-top: 0;
      margin-right: 3rem; }
      .nav-btn::before {
        transform: translateY(-1.2rem); }
      .nav-btn::after {
        transform: translateY(1rem); } }

.header {
  background-color: #54483A;
  background-image: linear-gradient(rgba(16, 29, 44, 0.93), rgba(16, 29, 44, 0.93)), url(../img/hero.jpeg);
  background-position: center;
  background-size: cover;
  grid-column: full-start / col-end 6;
  padding: 8rem;
  padding-top: 4rem;
  display: grid;
  grid-template-rows: 1fr min-content minmax(6rem, min-content) 1fr;
  grid-template-columns: minmax(min-content, max-content);
  grid-row-gap: 1.5rem;
  justify-content: center; }
  @media only screen and (max-width: 50em) {
    .header {
      grid-column: full-start / full-end; } }
  @media only screen and (max-width: 37.5rem) {
    .header {
      padding: 5rem; } }
  .header__logo {
    height: 3rem;
    justify-self: center; }
  .header__btn {
    align-self: start;
    justify-self: start; }
  .header__seenon-text {
    font-size: 1.5rem;
    color: #aaa;
    display: grid;
    grid-template-columns: 1fr max-content 1fr;
    grid-column-gap: 1.5rem;
    align-items: center; }
    .header__seenon-text::before, .header__seenon-text::after {
      content: "";
      display: block;
      height: 1px;
      background-color: currentColor; }
  .header__seenon-logos {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-column-gap: 3rem;
    justify-items: center;
    align-items: center; }
    .header__seenon-logos img {
      max-height: 2.5rem;
      max-width: 100%;
      filter: brightness(70%); }

.realtors {
  background-color: #101d2c;
  grid-column: col-start 7 / full-end;
  padding: 3rem;
  display: grid;
  justify-content: center;
  align-content: center;
  justify-items: center;
  grid-row-gap: 2rem; }
  @media only screen and (max-width: 50em) {
    .realtors {
      grid-column: full-start / full-end; } }
  .realtors__list {
    display: grid;
    grid-template-columns: min-content max-content;
    grid-column-gap: 2rem;
    grid-row-gap: 5vh;
    align-items: center; }
    @media only screen and (max-width: 50em) {
      .realtors__list {
        grid-template-columns: repeat(3, min-content max-content); } }
    @media only screen and (max-width: 37.5rem) {
      .realtors__list {
        grid-template-columns: min-content max-content; } }
  .realtors__img {
    width: 7rem;
    border-radius: 50%;
    display: block; }
  .realtors__sold {
    text-transform: uppercase;
    color: #aaa;
    margin-top: -3px; }

.features {
  grid-column: center-start / center-end;
  margin: 15rem 0;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
  grid-gap: 6rem;
  align-items: start; }

.feature {
  display: grid;
  grid-template-columns: min-content 1fr;
  grid-row-gap: 1.5rem;
  grid-column-gap: 2.5rem; }
  .feature__icon {
    fill: #c69963;
    width: 4.5rem;
    height: 4.5rem;
    grid-row: 1 / span 2;
    transform: translateY(-1rem); }
  .feature__text {
    font-size: 1.7rem; }

.story__pictures {
  background-color: #c69963;
  grid-column: full-start / col-end 4;
  background-image: linear-gradient(rgba(198, 153, 99, 0.5), rgba(198, 153, 99, 0.5)), url(../img/back.jpg);
  background-size: cover;
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  grid-template-rows: repeat(6, 1fr);
  align-items: center; }
  @media only screen and (max-width: 50em) {
    .story__pictures {
      grid-column: full-start / full-end;
      padding: 6rem; } }

.story__img--1 {
  width: 100%;
  grid-column: 2 / 6;
  grid-row: 2 / 6;
  box-shadow: 0 2rem 5rem rgba(0, 0, 0, 0.1); }
  @media only screen and (max-width: 50em) {
    .story__img--1 {
      grid-column: 1 / 5;
      grid-row: 1 / -1; } }

.story__img--2 {
  width: 115%;
  grid-column: 4 / 7;
  grid-row: 4 / 6;
  z-index: 10;
  box-shadow: 0 2rem 5rem rgba(0, 0, 0, 0.2); }
  @media only screen and (max-width: 50em) {
    .story__img--2 {
      grid-row: 1 / -1;
      width: 100%; } }

.story__content {
  background-color: #f9f7f6;
  grid-column: col-start 5 / full-end;
  padding: 6rem 8vw;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-start; }
  @media only screen and (max-width: 50em) {
    .story__content {
      grid-column: 1 / -1;
      grid-row: 5 / 6; } }

.story__text {
  font-size: 1.5rem;
  margin-bottom: 4rem;
  font-style: italic; }

.homes {
  grid-column: center-start / center-end;
  margin: 15rem 0;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
  grid-gap: 7rem; }

.home {
  background-color: #f9f7f6;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-row-gap: 3.5rem;
  border-radius: 2px; }
  .home__img {
    width: 100%;
    grid-column: 1 / -1;
    grid-row: 1 / 2; }
  .home__like {
    grid-column: 2 / 3;
    grid-row: 1 / 2;
    fill: #c69963;
    width: 2.5rem;
    height: 2.5rem;
    justify-self: end;
    margin: 1rem; }
  .home__name {
    grid-column: 1 / -1;
    grid-row: 1 / 2;
    width: 80%;
    font-family: "Josefin Sans", sans-serif;
    font-size: 1.6rem;
    background-color: #101d2c;
    color: #fff;
    padding: 1.25rem;
    text-align: center;
    justify-self: center;
    align-self: end;
    transform: translateY(50%); }
  .home__location, .home__rooms {
    margin-top: 2.5rem; }
  .home__location, .home__rooms, .home__area, .home__price {
    font-size: 1.5rem;
    margin-left: 2rem;
    display: flex;
    align-items: center; }
    .home__location svg, .home__rooms svg, .home__area svg, .home__price svg {
      fill: #c69963;
      width: 2rem;
      height: 2rem;
      margin-right: 1rem; }
  .home__btn {
    grid-column: 1 / -1; }

.gallery {
  background-color: #f9f7f6;
  grid-column: full-start / full-end;
  display: grid;
  grid-template-columns: repeat(8, 1fr);
  grid-template-rows: repeat(7, 5vw);
  grid-gap: 1.5rem;
  padding: 1.5rem; }
  .gallery__item--1 {
    grid-column: 1 / span 2;
    grid-row: 1 / 3; }
  .gallery__item--2 {
    grid-column: 3 / span 3;
    grid-row: 1 / 4; }
  .gallery__item--3 {
    grid-column: 6 / span 1;
    grid-row: 1 / 3; }
  .gallery__item--4 {
    grid-column: 7 / span 2;
    grid-row: 1 / 3; }
  .gallery__item--5 {
    grid-column: 1 / span 2;
    grid-row: 3 / 6; }
  .gallery__item--6 {
    grid-column: 3 / span 2;
    grid-row: 4 / 6; }
  .gallery__item--7 {
    grid-column: 5 / span 1;
    grid-row: 4 / 5; }
  .gallery__item--8 {
    grid-column: 6 / span 2;
    grid-row: 3 / 5; }
  .gallery__item--9 {
    grid-column: 8 / span 1;
    grid-row: 3 / 6; }
  .gallery__item--10 {
    grid-column: 1 / span 1;
    grid-row: 6 / 8; }
  .gallery__item--11 {
    grid-column: 2 / span 2;
    grid-row: 6 / 8; }
  .gallery__item--12 {
    grid-column: 4 / span 1;
    grid-row: 6 / 8; }
  .gallery__item--13 {
    grid-column: 5 / span 3;
    grid-row: 5 / 8; }
  .gallery__item--14 {
    grid-column: 8 / span 1;
    grid-row: 6 / 8; }
  .gallery__img {
    width: 100%;
    height: 100%;
    object-fit: cover; }

.footer {
  background-color: #101d2c;
  grid-column: full-start / full-end;
  padding: 8rem; }

.nav {
  list-style: none;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(15rem, 1fr));
  grid-gap: 2rem; }
  .nav__link:link, .nav__link:visited {
    text-decoration: none;
    text-align: center;
    color: #fff;
    font-size: 1.4rem;
    font-family: "Josefin Sans", sans-serif;
    text-transform: uppercase;
    padding: 1.5rem;
    display: block;
    transition: all .2s; }
  .nav__link:hover, .nav__link:active {
    background-color: rgba(255, 255, 255, 0.05); }

.copyright {
  font-size: 1.2rem;
  color: #f9f7f6;
  margin-top: 6rem;
  text-align: center; }
