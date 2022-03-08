<?php $c = '"card ' . $classes . '"' ?>

<article class=<?= $c ?>>
    <div class="author">
        <img src=<?= $img ?> alt="author profile picture">
        <div class="author-details">
            <span><?= $author ?></span>
            <span>Verified Graduate</span>
        </div>
    </div>

    <div class="card-container">
        <h1>
            <?= $title ?>
        </h1>
        <p>
            <?= $desc ?>
        </p>
    </div>
</article>