<div class="header_container">
    <ul class="nav">
        <li class="logo" onclick="navigateTo('<?php echo esc_url(home_url('/')); ?>')" data-tooltip="Accueil">
            <span style="display : flex; align-items: center">
                <span><img src="https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png" alt="logo-1.png" width="40px"></span>
                &nbsp;&nbsp;
                <span>Association
                    <span class="logo_title">VMF</span>
                </span>
            </span>
        </li>
        <li tabindex="0" onclick="navigateTo('<?php echo esc_url(home_url('/')); ?>')" data-tooltip="Accueil">
            <i data-feather="home"></i>
        </li>
        <li tabindex="0" onclick="navigateTo('<?php echo esc_url(home_url('/our-missions/')); ?>')" data-tooltip="Mission">
            <i data-feather="activity"></i>
        </li>
        <li tabindex="0" onclick="navigateTo('<?php echo esc_url(home_url('/join-us/')); ?>')" data-tooltip="Rejoindre">
            <i data-feather="user-plus"></i>
        </li>
        <li tabindex="0" onclick="navigateTo('<?php echo esc_url(home_url('/contact-us/')); ?>')" data-tooltip="Contact">
            <i data-feather="mail"></i>
        </li>
        <li tabindex="0" onclick="navigateTo('<?php echo esc_url(home_url('/about-us/')); ?>')" data-tooltip="A Propos">
            <i data-feather="info"></i>
        </li>
        <li tabindex="0" onclick="donate()" data-tooltip="Donation">
            <i data-feather="dollar-sign"></i>
        </li>
    </ul>
</div>
<div style="display:none">
    <?php
    echo do_shortcode('[paypal-donation]');
    ?>

</div>