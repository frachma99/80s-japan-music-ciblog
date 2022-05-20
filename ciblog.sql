-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2020 pada 17.20
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(4, 'Idol', '2020-04-13 07:07:21'),
(5, 'Citypop', '2020-04-13 07:07:46'),
(6, 'Rock Band', '2020-04-13 07:07:59'),
(7, 'Solo', '2020-04-13 08:13:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 18, 'tes', 'testestes@yahoo.com', 'ini cuma tes', '2020-04-13 06:21:53'),
(2, 18, 'Febri Rachmawati ', 'febri.rachma99@gmail.com', 'ini komen doang bos', '2020-04-13 06:44:30'),
(3, 24, 'ned', 'ned@ned.com', 'tes tes', '2020-04-14 12:47:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(19, 4, 1, 'Minako Honda - Oneway Generation', 'Minako-Honda-Oneway-Generation', '<p>Still somewhat wary of <em>&quot;1986-nen no Marilyn&quot;</em><strong>（1986年のマリリン）</strong>which was one of her earlier releases but looking at <strong>her 9th single</strong>, <em>&quot;Oneway Generation&quot;</em> from <strong>February 1987</strong>, I was pleasantly surprised that she sounded a bit more stable on TV...I will have to listen to the original recorded version someday. And of course, the refrain has been the one meme of <strong>Minako </strong>that has stayed in my head all these years.<br />\r\nWritten by <strong>Yasushi Akimoto（秋元康）</strong>and composed by <strong>Kyohei Tsutsumi（筒美京平）</strong>, <em>&quot;Oneway Generation&quot;</em> has an inspiring message about those young folks who might be feeling stuck in terms of what to do for their future: just plod ahead with those dreams and not listen to any negativity. Mind you, passing those university entrance exams is one big wall, though. The single managed to get as high as <strong>No. 2 on Oricon</strong> and became <strong>the 23rd-ranked single of the year.</strong></p>\r\n\r\n<p><em>&quot;Oneway Generation&quot; </em>was also the theme song for the <strong>TBS </strong>serial <em>&quot;Papa wa Newscaster&quot;</em><strong> (パパはニュースキャスター...Papa is a Newscaster)</strong> starring <strong>Masakazu Tamura（田村正和）</strong>who would take on a far more iconic <a href=\"http://kayokyokuplus.blogspot.ca/2012/11/yusuke-honma-theme-from-ninzaburo.html\">role </a>in the next decade.</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n', 'onewaygen.jpg', '2020-04-13 07:08:40'),
(20, 4, 1, 'Akina Nakamori - Variation', 'Akina-Nakamori-Variation', '<p>OK, now as such, I think today is an appropriate day for me to present <strong>Akina-chan&#39;s 2nd album</strong> <em>&quot;Variation ~ Hensoukyoku&quot;</em>, and as was the case with <strong>her debut album</strong>, <em><a href=\"https://kayokyokuplus.blogspot.com/2016/12/akina-nakamori-prologue.html\">&quot;Prologue ~ Jomaku&quot;</a></em><strong>（プロローグ〈序幕〉）</strong>, that latter Japanese term is just the translation of the former word. <strong>&quot;Variation&quot;</strong> was released in late <strong>October 1982</strong>, a little less than 4 months after <strong>&quot;Prologue&quot;</strong>, and as the title for the 2nd album would have it, it&#39;s been praised by a book called <em>&quot;Hotwax Presents Kayo Kyoku Meikyoku Meiban Guide 1980s&quot;</em><strong>（Hotwax presents 歌謡曲 名曲名盤ガイド 1980&#39;s...Hotwax presents Famous Songs and Recordings Guide 1980s ）</strong>for having some more variation in the song stylings due to the different songwriters at work here along with the singer&#39;s progress in her abilities.<br />\r\n<br />\r\nThree of the tracks have already been covered in <em>&quot;Kayo Kyoku Plus&quot;,</em> the hit single teen rock <em><a href=\"https://kayokyokuplus.blogspot.com/2012/08/akina-nakamori-shojo.html\">&quot;Shojo A&quot;</a></em><strong>（少女Ａ）</strong>, the <strong>City Pop</strong> <em><a href=\"https://kayokyokuplus.blogspot.com/2015/10/akina-nakamori-yokohama-ku-ma-akuma.html\">&quot;Yokohama A-KU-MA&quot;</a></em><strong>（ヨコハマA・KU・MA）</strong>and another urban contemporary tune <em><a href=\"https://kayokyokuplus.blogspot.com/2018/10/akina-nakamori-aishuu-majutsu.html\">&quot;Aishuu Majutsu&quot;</a></em><strong>（哀愁魔術）</strong>.</p>\r\n\r\n<p><em>&quot;Variation&quot;</em> is book-ended by some dramatic strings by <strong>Kei Wakakusa</strong> (<strong>若草恵</strong>...who helped arranged the album along with <strong>Mitsuo Hagita/萩田光雄</strong>), and the album then starts off with the wild and woolly <em>&quot;Cancel!&quot;</em><strong>（キャンセル！）</strong>which has some similarity to <em>&quot;Shojo A&quot;</em> in that it&#39;s got that teen rock sensibility with the fast beat and the wailing guitar. Composed by <strong>Kazuhiko Izu（伊豆一彦）</strong>, the lyrics are provided by <strong>Masao Urino（売野雅勇）</strong>, the same guy behind <strong>&quot;Shojo A&quot;</strong>, as <strong>Akina </strong>plans to drop a phony of a beau like an anchor.<br />\r\n<br />\r\nThe following track is <em>&quot;Moroi Gogo&quot;</em><strong>（脆い午後...Sentimental Afternoon）</strong>has a couple taking a secret trip to <strong>Kyoto</strong>. It&#39;s a wistful mid-tempo song characterized by those strings that seemed to have accompanied many an <strong>Akina </strong>number in the early days of her <em>aidoru </em>career. The strings could be jagged or, as it is in <strong>&quot;Moroi Gogo&quot;</strong> more sweeping to fit the more vulnerable side of the singer here</p>\r\n\r\n<p>The strings take on even more character in<em> &quot;Sakihokoru Hana ni...&quot;</em><strong>（咲きほこる花に&hellip;&hellip;To the Flowers in Full Bloom）</strong>as they start off sounding more like late <strong>Beatles</strong>, but then remind me of some of the <strong>Fashion Music</strong> that <strong>Chika Ueda（上田知華）</strong>helped create at around the same time. However, words and music were actually provided by <strong>Etsuko and Takao Kisugi（来生えつこ・来生たかお）</strong>...which then made me go <strong>&quot;Ahhh...<em>naruhodo</em>&quot;</strong> since whenever the Kisugi sister-brother combination get together to create music, it&#39;s always of pretty refined quality. It seems like the entire song is devoted to the beauty of flora, so there is that overwhelming image of having a cup of tea in a high-class shop with a window view of one of the great gardens in <strong>Japan</strong>.</p>\r\n\r\n<p>From that tea shop in a well-manicured garden, we head off to <strong>Tokyo Disneyland</strong> or some beach paradise via <em>&quot;Meruhen Location&quot;</em><strong>（メルヘン・ロケーション...Fairy Tale Location）</strong>to join a couple on a date. It&#39;s an <em>aidoru </em>tune with that touch of <strong>Resort Pop</strong>, and even some <strong>country twang</strong> near the end as the lucky pair enjoy each other and their travels to fantasy land. As was the case with&nbsp;<em>&quot;Yokohama A-KU-MA&quot;</em>, <strong>Tsuzuru Nakasato（中里綴）</strong>was the lyricist while <strong>Noboru Mimuro（三室のぼる）</strong>was the composer.</p>\r\n\r\n<p><br />\r\n<em>&quot;Dai Nana Kan ~ Septieme Sense&quot;</em><strong>（第七感（セッティエーム・サンス）...The 7th Sense）</strong>at <strong>30:33</strong> above in the full album is <strong>Akina </strong>being happy and coy in the embrace of some saxophone-led <strong>City Pop</strong>. <strong>Mayumi Shinozuka（篠塚満由美）</strong>and <strong>Yoshitaka Minami（南佳孝）</strong>created this light shuffle of a song with a bit of <strong>Latin </strong>which seems to have the lass walking through an autumn forest as she perhaps considers her options about shedding one guy for another. The fact that one of Shinozuka&#39;s lyrics repeats Akina getting pelted with a shower of autumn leaves hints that change is in the forecast.</p>\r\n\r\n<p>The rock feeling and the wailing guitar are back for <em>&quot;x3 (Bye-Bye) Lullaby&quot;</em><strong>（X3 (バイバイ) ララバイ）</strong>, and usually when it does, it means that <strong>Akina </strong>is in trouble. In this case, she&#39;s just been dumped near a <strong>Yokohama </strong>interchange, but the tough one simply brushes the cad away like dust and basically sings a big kiss-off. The tandem of <strong>Yukinojo Mori（森雪之丞）</strong>and <strong>Yasuo Kosugi（小杉保夫）</strong>, who were also behind <em>&quot;Aishuu Majutsu&quot;</em>, worked on this one. Strangely enough, the verses sound similar to <strong>the Manhattan Transfer&#39;s</strong> <em>&quot;Twilight Zone&quot;</em> from <strong>the late 1970s.</strong> For me, I especially like Akina&#39;s delivery here...very sultry and sweet.</p>\r\n\r\n<p>The finale is <em>&quot;Catastrophe Amagasa&quot;</em><strong>（カタストロフィの雨傘...Catastrophe Umbrella）</strong>which has a style reminiscent of <strong>a French pop ballad from the 1960s</strong> and <strong>a contemporary <em>kayo </em>ballad by Mariko Takahashi（高橋真梨子）</strong>. <strong>Shinozuka </strong>from <em>&quot;Dai Nana Kan&quot;</em> is back to write the lyrics as <strong>Akina </strong>sings about taking a rainy walk soon after the end of a relationship. She&#39;s taking it relatively well considering that the title includes the word <em><strong>catastrophe </strong></em>(which was kindly explained in the liner notes in terms of what it means...I&#39;m not even sure whether the word is still known now in Japanese <em>katakana</em>), and as <strong>Tsunehiro Izumi&#39;s（和泉常寛）</strong>melody hints, tomorrow is another day. There is always hope for the future.<br />\r\n<br />\r\nI mentioned about the <strong>Queen Bee</strong> theory in the article for <em>&quot;Prologue&quot;</em> when it comes to <strong>Nakamori&#39;s </strong>upbringing in music, so I wonder with all of these songwriting talents involved in <em>&quot;Variation&quot;</em>, whether there was a sign that the then-teen <em>aidoru </em>was being seen as a potential superstar so all of the genres were being thrown at her as a challenge. Those powers-that-be then should take a bow since all of the types of music featured in the album did appear in bulk in the rest of <strong>Akina&#39;s </strong>discography going right to the end of <strong>the 20th century</strong>. Perhaps then, <strong>&quot;Variation&quot; </strong>might be seen as an even more seminal release.<br />\r\n<br />\r\n<em>&quot;Variation&quot;</em> hit <strong>the top spot on Oricon</strong> as <strong>Nakamori&#39;s first No. 1 album</strong> and it stayed there for a total of three weeks according to <em>&quot;ALBUM CHART-BOOK COMPLETE EDITION 1970 〜 2005&quot;</em>, a part of <strong>Oricon&#39;s </strong>marketing promotion. It hung out on the charts for <strong>29 weeks</strong> and ended up as <strong>the 8th-ranked album for 1983</strong>, selling around <strong>440,000 LPs and 300,000 tapes</strong>.</p>\r\n', 'variation.jpg', '2020-04-13 07:14:25'),
(21, 7, 1, 'Akira Terao - Reflections', 'Akira-Terao-Reflections', '<p><strong>Akira Terao（寺尾聡）</strong> has had a long and varied career since he started as a bassist with the <strong>Group Sounds</strong> band, <strong>The Savage</strong>, in <strong>1965</strong>. He&#39;s now known mostly as a dramatic actor and commercial pitchman. Somewhere in between the two endpoints, he starred for a few years as a detective in the police drama <em>&quot;Seibu Keisatsu&quot;</em>(<strong>西部警察....West Division Police</strong>) between <strong>1979 and 1982</strong>. And in <strong>1981</strong>, he became something that I&#39;m fairly sure even he hadn&#39;t bargained for: a music superstar.<br />\r\nOn <strong>April 5 1981</strong>, his second of his solo original albums was launched called <em>&quot;Reflections&quot;</em>. The cover had him in zipped-up jacket and jeans, smoking a ciggie whose end somehow traced out <strong>&quot;Love&quot;</strong>. Aside from the &quot;Love&quot;, it was a pretty <em>shibui </em>(<strong>渋い....ruggedly cool</strong>) image. <strong>Terao </strong>composed all of the songs which he sang in a low crooning rumble with a nighttime <strong>City Pop </strong>arrangement; reminiscent of the neighbourhood in which his detective character <strong>Takeshi Matsuda</strong> patrolled.<br />\r\n<br />\r\n<em>&quot;Reflections&quot; </em>became <strong>the No. 1 album of the year</strong> and sold <strong>1.6 million discs</strong>. And it occupied <strong>the No. 1 weekly position from April 13 to June 29</strong>. In a year where <em>aidoru </em>were popping up like rabbits, this was no mean feat. <strong>And three of the songs ranked in the Top 100</strong>.</p>\r\n\r\n<p>The most famous track on the album is <em>&quot;Ruby no Yubiwa&quot;</em>(<strong>ルビーの指輪.....A Ruby Ring</strong>), a song of lost love. The opening notes with the guitar are famous, and the entire song dares to be played in a hotel-top bar over a whiskey-on-the-rocks. This song itself also covered itself in glory as it became <strong>the No. 1 single of the year</strong>, won 3 prizes at the year-end <strong>Japan Record Awards,</strong> and got <strong>Terao </strong>his first appearance at <strong>the Kohaku Utagassen</strong>; he would appear a second time in <strong>2007 </strong>to play an updated version of <strong>&quot;Ruby no Yubiwa&quot;</strong>.</p>\r\n', 'reflection.jpg', '2020-04-13 08:16:07'),
(22, 6, 1, 'Anzen Chitai - Wine Red no Kokoro', 'Anzen-Chitai-Wine-Red-no-Kokoro', '<p>I&#39;d seen <strong>Anzen Chitai （安全地帯）</strong>for the first time on a video performing this atmospheric song....their signature song. It&#39;s classic Anzen Chitai....relentless electric guitars backing the near-operatic voice of <strong>Koji Tamaki（玉置浩二）</strong>. And Tamaki stood out as this dark mysterious type who kinda reminded me of a Japanese saturnine version of <strong>David Bowie as The Thin White Duke </strong>(yeah, maybe I&#39;m reaching here but just humor me). Talent and model-level looks....what more could you want for a leader of a band?<br />\r\n<br />\r\n<em>&quot;Wine-Red no Kokoro&quot;</em>(<strong>Wine-Red Heart</strong>) was a go-to song at my old <em>karaoke</em> haunt of <strong>Kuri </strong>in <strong>Yorkville </strong>back in my university days in the mid-80s; Yorkville is a fancy quarter in downtown <strong>Toronto</strong>. Someone was always singing it at least once every visit...along with a lot of their later hits. And their 4th single was indeed a hit....it was their first <strong>No. 1 </strong>after it was released in late <strong>1983 </strong>and eventually became the 2nd-ranked single for <strong>1984</strong>. It was included on their second album, <em>&quot;Anzen Chitai II&quot;</em>, released in <strong>May 1984</strong>.</p>\r\n', 'winered.jpg', '2020-04-13 08:38:36'),
(23, 5, 1, 'Takako Mamiya - Love Trip', 'Takako-Mamiya-Love-Trip', '<p>A mystery for me...and for anyone who reads this. I came across this album, <em>&quot;Love Trip&quot;</em><strong> (1982)</strong> through the auspices of <em>&quot;Japanese City Pop&quot;</em>. Furthermore, I found just one song by <strong>Takako Mamiya （間宮貴子）</strong> on <strong>YouTube</strong>, and I&#39;m not even sure if it&#39;s been uploaded in its entirety. <em>&quot;Mayonaka no Joke&quot;</em>(<strong>真夜中のジョーク...Midnight Joke</strong>) is a pretty decent <strong>City Pop</strong> tune. But despite looking throughout the Net, I haven&#39;t been able to find any more information about this singer. Would like to track it down someday, but I&#39;ve got a feeling that this could be one of the rarest of the rare. <strong>(April 15, 2017: Obviously since my original comments, things have improved on this front...as long as the powers-that-be don&#39;t take it down. And I hope they don&#39;t. I still consider the album a very rare find.)</strong></p>\r\n\r\n<p><em>&quot;Mayonaka no Joke&quot; </em>was written by lyricist <strong>Ichiko Takehana（竹花いち子）</strong>and composed by&nbsp;<strong>Hiroyuki Nanba（難波弘之）</strong>. Takehana apparently has her own foodie <a href=\"http://takehanaichiko.com/\">blog</a></p>\r\n', 'lovetrip.jpg', '2020-04-13 08:50:52'),
(24, 6, 1, 'Southern All Stars - Tiny Bubbles ', 'Southern-All-Stars-Tiny-Bubbles', '<p><em>Tiny Bubbles</em> captures Southern All Stars at the moment right before they became one of the most famed and influential Japanese acts ever. Despite a few brushes with chart-topping success a few years before this 1980 LP, this album marked the beginning of one of the most stunning success stories the country has ever seen. <em>Tiny Bubbles</em> went straight to the top of the Oricon&hellip;as did 15 subsequent full-lengths. They&rsquo;ve had more than 40 singles land on the top-selling list and haven&rsquo;t relented in three decades. HMV named them the most influential Japanese act ever. It&rsquo;s a monster of a resume, and it was this album that marked the beginning of a dynasty.</p>\r\n\r\n<p>Which is kind of surprising considering just how weird Southern All Stars sound on their third album. As the cat-centric art indicates, this six-piece weren&rsquo;t afraid to indulge in a joke or two to the point of actually being labeled a &ldquo;novelty act&rdquo; earlier in their career (there decision to do interviews dressed in ridiculous costumes didn&rsquo;t help to deflect this claim). <em>Tiny Bubbles</em> may not be a crazy piece of experimental art, but SAS jump from balladry to reggae-tinged to outright Broadway musical. It can be a confusing listen, and that&rsquo;s coming from the year 2010 when this sort of genre ho-scotch should feel way less weird. It wouldn&rsquo;t be shocking to see such an all-over the place album top the charts or even result in the band responsible having a respectable career. Transforming them into maybe the greatest J-Pop group ever, though, is a surprise.</p>\r\n\r\n<p>The key is that, for all the costume changes, Southern All Stars sound consistently good the entire time. It&rsquo;s the secret to <em>Tiny Bubbles&rsquo;</em> and the group&rsquo;s continued success, the ability to push J-Pop into stranger places all while sounding completely normal. Take the second track here, SAS take on 70s R&amp;B. Despite cheesy keyboards and baffling lyrics about a &ldquo;tobacco road sexy virgin&rdquo; (which might only shock an English speaker, it likely left Japanese listeners unfazed. Clunky pop English still sneaks into songs today), the band manages to keep everything catchy thanks to a laid-back pace and lovely female backup singing. Lead-off track &ldquo;ふたりだけのパーティ&rdquo; imitates Billy Joel but never comes off like a Piano Man rip-off, while &ldquo;恋するマンスリーデイ&rdquo; attempts reggae. On the latter, SAS avoid falling for the trap countless J-Poppers after stumbled into&hellip;if you are only dipping your toes into the style, don&rsquo;t try to make a reggae song but rather a J-Pop interpretation of a reggae song.</p>\r\n\r\n<p>Though the band also takes some side roads into the outright strange. Compared to the rest of the album&rsquo;s chilled-out tone, the Broadway glitz of &ldquo;Hey! Ryudo!&rdquo; completely jars especially on repeat listens. It&rsquo;s an honest-to-goodness stab at musical theater, complete with ragtime horns and a tap dancing interlude (seriously). Imagine someone trying to turn Frank Sinatra&rsquo;s life into a musical, and Japan tried to create a version of it as well. This song would be prominently featured on the soundtrack. Less record-scratch inducing but weird all the same is the two takes on the title track, a Nashville-meets-Hawaii number that one ups Don Ho.</p>\r\n\r\n<p>Not to imply <em>Tiny Bubbles</em> is just six goofballs playing around with genre. For all the side roads, Southern All Stars staying power comes from solid pop songwriting ability and it&rsquo;s on full display here. The lead track, in all its Joel-ness, is the most thunderous track here and shows SAS could flex some muscle when they wanted. &ldquo;私はピアノ&rdquo; finds lone-female member Yuko Hara tackling a hybrid bossa-disco pop standard and her excellent voice conquers the song. Later in 1980, Mizue Takada covered the song and made it a smash. The LP&rsquo;s absolute highlight though ends up being late cut &ldquo;C調言葉に御用心.&rdquo; Opening with a rising guitar line not far removed from something Bruce Springsteen might have tinkered with during the time, SAS bring in simple piano, percussion and strings to create a dreamy bed of a song. Keisuke Kuwata&rsquo;s vocals&hellip;more on those in a second&hellip;work wonders on this relatively sedate track, his sweetest performance on the album. Mostly though, it&rsquo;s the guitars which add a note of triumph to the whole affair.</p>\r\n\r\n<p>The most critical element of SAS introduced to a larger audience on <em>Tiny Bubbles</em> is Kuwata&rsquo;s singing style. It&rsquo;s a throaty, twisty thing capable of drawing out lyrics and also shooting them out at rapid-fire, like a burned out lounge singer who tries pop. The scattered ballads on this LP would be boring if sung by anyone else&hellip;hell, the one delivered by Hiroshi Matsuda is boring&hellip;but in Kuwata&rsquo;s hands they become fascinating feats of vocal gymnastics. It&rsquo;s both the most unorthodox part of Southern All Stars but also the part responsible for them truly standing out. Kuwata shines on <em>Tiny Bubbles</em>.</p>\r\n\r\n<p>Southern All Stars climbed even higher in the decades to come, but that journey started here. <em>Tiny Bubbles</em> is a strange, catchy album that probably showed a lot of future J-Pop stars not to be afraid of trying out far-flung styles. It&rsquo;s a weird one, but also the perfect showcase of all the little oddities that turned SAS into what they are today.</p>\r\n\r\n<p>&quot;</p>\r\n', 'tinybubbles.jpg', '2020-04-13 08:55:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(5, 'Febri Rachmawati', '15151', 'febri.rachma99@gmail.com', 'febri.rachma99', '1', '2020-04-14 06:20:58'),
(6, 'a', '1', 'andecaandeci1999@gmail.com', 'a', 'enc_password', '2020-04-14 07:14:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
