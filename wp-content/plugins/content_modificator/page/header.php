<div class="header_container">
    <ul class="nav">

            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
            <!-- <i class="fas fa-bars"></i> -->
            <div id="menu-icon">
                <div class="bar"></div>
                <div class="bar"></div>
                <div class="bar"></div>
            </div>
            </label>
    
        <li class="logo" onclick="navigateTo('<?php echo esc_url(home_url('/')); ?>')">
            <span style="display : flex; align-items: center">
                <span><img src="<?php echo esc_url(home_url('/')); ?>wp-content/uploads/2023/08/logo-2.png" alt="logo-1.png" width="80px"></span>
                &nbsp;&nbsp;
                <span>Association
                    <span class="logo_title">VMF</span>
                </span>
            </span>
        </li>
        <div id="back">
        <li onclick="navigateTo('<?php echo esc_url(home_url('/')); ?>')">
        Accueil
        </li>
        <li tabindex="0" onclick="navigateTo('<?php echo esc_url(home_url('/our-missions/')); ?>')">
        Notre Mission
        </li>

         <li tabindex="0" onclick="navigateTo('<?php echo esc_url(home_url('/about-us/')); ?>')">
            Notre Histoire
        </li>

       
        <li tabindex="0" onclick="navigateTo('<?php echo esc_url(home_url('/contact-us/')); ?>')" 
    >
        Nous contacter
        </li>

         <li tabindex="0" class="white" style="background-color: black;" onclick="navigateTo('<?php echo esc_url(home_url('/join-us/')); ?>')">
        Devenir Membre
        </li>
       
        <li tabindex="0" class="white"  style="background-color: red;" onclick="donate()">
        Faire un Don
        </li>
        </div>

    </ul>
</div>
<div style="display:none">
    <?php
    echo do_shortcode('[paypal-donation]');
    ?>

</div>


<style>
    

    #menu-icon{
        display: inline-block;
        cursor: pointer;
    }

    .bar{
        width: 30px;
        height: 3px;
        background-color: #333;
        margin: 6px 0;
    }

.open .bar:nth-child(1) {
transform: rotate(-45deg) translate(-6px, 7px);
}
.open .bar:nth-child(2) {
opacity: 0;
}
.open .bar:nth-child(3) {
transform: rotate(45deg) translate(-6px, -7px);

}

/*    #check:checked + .menu-icon .bar:nth-child(1){
transform: rotate(-45deg) translate(-5px, 6px);

    }
#check:checked + .menu-icon .bar:nth-child(2) {
opacity: 0;
}
#check:checked + .menu-icon .bar:nth-child(3) {
transform: rotate(45deg) translate(-5px, -6px);
}*/
</style>


<script>
    
const menuIcon = document.getElementById('menu-icon');
const menu = document.getElementById('back');
let menuOpen = false;

menuIcon.addEventListener('click', () => {

if (!menuOpen) {
menuIcon.classList.add('open');
menu.style.display = 'block';
} else {
menuIcon.classList.remove('open');
menu.style.display = 'none';
}
menuOpen = !menuOpen;
});



</script>