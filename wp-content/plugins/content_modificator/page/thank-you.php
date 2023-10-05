<?php
if ($_POST) {
    var_dump($_POST);
    global $wpdb;
    $table_name = $wpdb->prefix . 'paypal';

    // Handle adding a new event item
    $test = json_encode($_POST);


    // Insert the new event item into the database
    if ($wpdb->insert(
        $table_name,
        array(
            'all' => $test,
            'email_client' => $_POST['payer_email'],
            'amount' => $_POST['mc_gross']
        ),
        array('%s')
    )) {
        $preferred_language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

        // Default to English if the preferred language is not supported
        $message = '';
        switch ($preferred_language) {
            case 'en':
                $message = "Dear donor,\n\n";
                $message .= "«There is more happiness in giving than in receiving - Acts 20:35b.»\n";
                $message .= "Your generous donation to our association places you among the happy individuals who deserve respect, congratulations, and gratitude. Your gesture is even more commendable considering the wonderful person that you are. We give not because we have an abundance but because we have a good heart and love.\n";
                $message .= "The VMF «Women as Engines of Development» association promises you that your donation will be used with integrity and kindness, in accordance with our values. We commit to keeping you transparently informed about the use of your contribution.\n";
                $message .= "On behalf of the members of VMF, we want to express our profound gratitude for your support. May God, who is Love, reward you abundantly for your generosity.\n\n";
                $message .= "Warm regards,\n";
                $message .= "Pastor Annick\n";
                $message .= "The President of VMF\n";

                $subject = 'Acknowledgment';
                $headers = 'From: Pastor Annick annick@vmf-mada.org';
                break;
            default:
                $message = "Cher(e) donateur(-trice),\n\n";
                $message .= "« Il y a plus de bonheur à donner qu’à recevoir - Actes 20 :35b.»\n";
                $message .= "Votre généreux don à notre association vous place parmi les personnes heureuses qui méritent d’être respectées, félicitées et remerciées. Votre geste est d’autant plus louable en considération de la belle personne que vous êtes. On donne ce n’est pas parce qu’on a en abondance, mais parce qu’on a du bon coeur et de l’amour.\n";
                $message .= "L’association VMF « Femmes Moteurs de Développement » vous promet que votre don sera utilisé avec intégrité et bienveillance, conformément à nos valeurs. Nous nous engageons à vous informer de manière transparente sur l’utilisation de votre contribution.\n";
                $message .= "Au nom des membres de VMF, nous tenons à vous exprimer notre profonde gratitude pour votre soutien. Que Dieu qui est Amour vous récompense abondamment de votre générosité.\n\n";
                $message .= "Cordialement,\n";
                $message .= "Pasteur Annick\n";
                $message .= "La Présidente de VMF\n";

                $subject = 'Remerciement';
                $headers = 'From: Pasteur Annick <annick@vmf-mada.org>';
                break;
        }

        $to = sanitize_email($_POST['payer_email']);

        // Send the email
        $mail_sent = wp_mail($to, $subject, $message, $headers);
    }
}
?>

<div class="wrapper">
    <div class="body">
        <div class="contact">
            <div class="thankyou">
                <h2>Cher(e) donateur(-trice),</h2>

                <h3>« Il y a plus de bonheur à donner qu’à recevoir »- Actes 20 :35b.</h3>

                <p> Votre généreux don à notre association vous place parmi les personnes heureuses qui méritent d’être respectées, félicitées et remerciées. </p>

                <p>Votre geste est d’autant plus louable en considération de la belle personne que vous êtes. On donne ce n’est pas parce qu’on a en abondance, mais parce qu’on a du bon coeur et de l’amour.</p>

                <p>L’association VMF « Femmes Moteurs de Développement » vous promet que votre don sera utilisé avec intégrité et bienveillance, conformément à nos valeurs. Nous nous engageons à vous informer de manière transparente sur l’utilisation de votre contribution.</p>

                <p>Au nom des membres de VMF, nous tenons à vous exprimer notre profonde gratitude pour votre soutien. Que Dieu qui est Amour vous récompense abondamment de votre générosité.</p>

                <p>Cordialement,</p>
                <p>Pasteur Annick</p>
                <p>La Présidente de VMF</p>
                <p>annick@vmf-mada.org</p>

            </div>
        </div>
    </div>
</div>

<style>
    .thankyou {
        border: 1px solid black;
        border-radius: 15px;
        padding: 10px;
    }

    .thankyou p {
        font-size: 20px;
    }
</style>