<h2><?= $title ?></h2><br>
<?php
require_once('TwitterAPIExchange.php');

$settings = array(
    'oauth_access_token' => "925214792767492096-LAHD5o8SJAnv1v2jEXaAs9vXPKwv7SK",
    'oauth_access_token_secret' => "1r0bqJhx6LKo7So2tibHkUwxwPBsZn6I2Ob1PttRdfZnN",
    'consumer_key' => "tNM4gwT3JNVbYsA0GbWTZy6Sw",
    'consumer_secret' => "UdoybCFB5k3weQcRmj0l4VZB1hx6dwR81VUFxgyT8FfcA3k3oT"
);

$requestMethod = 'GET';
$url = 'https://api.twitter.com/1.1/statuses/user_timeline.json';
$getfield = '?screen_name=Citypopdasaobi';

$twitter = new TwitterAPIExchange($settings);
$response = json_decode($twitter->setGetfield($getfield)
    ->buildOauth($url, $requestMethod)
    ->performRequest(), $assoc = TRUE);


foreach ($response as $key) {
    $profilepic = $key['user']['profile_image_url'];
    echo '<img src=' . $profilepic . '></img>';
    echo " Updated by @" . $key['user']['screen_name'];
    echo " at " . $key['created_at'] . "</br> </br>";
    echo "Tweet : " . "</br>" . $key['text'] . "</br>";
    echo "<hr>";
}
?>