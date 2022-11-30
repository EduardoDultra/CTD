select jogos-xdh;

 CREATE table  jogos (
 jogos_id int NOT null auto_increment PRIMARY KEY,
 nome varchar(150),
 descricao text,
 ano_lancamento date,
 nota decimal(2,1),
 preco decimal(10,2)
  );
   
 CREATE TABLE generos (
 generos_id int NOT NULL auto_increment PRIMARY KEY,
 nome varchar(100),
 descricao text,
 destaques varchar(150)
 );
 
 alter table generos
 change nome nome_generos varchar(100);
     
 CREATE TABLE desenvolvedora (
 desenvolvedora_id int NOT NULL auto_increment PRIMARY KEY,
 nome varchar(100),
 descricao text,
 nota decimal(2,1),
 mais_vendidos varchar(150),
 jogos_desenvolvedora varchar(150),
	FOREIGN KEY (desenvolvedora_id)
	REFERENCES jogos (jogos_id)
); 

alter table desenvolvedora
change nome nome_desenvolvedora varchar(100);

set foreign_key_checks=0;

alter table desenvolvedora
drop jogos_desenvolvedora;
    
create table catalogo_de_jogos (
catalogo_id int not null auto_increment PRIMARY KEY,
jogo_nome varchar(100),
generos_id int,
jogos_id int,    
desenvolvedora_id int,    
FOREIGN KEY (generos_id)
REFERENCES generos (generos_id),    
FOREIGN KEY (jogos_id)
REFERENCES jogos (jogos_id),     
FOREIGN KEY (desenvolvedora_id)
references desenvolvedora (desenvolvedora_id)
);
  
alter table catalogo_de_jogos
drop jogo_nome;
  
alter table jogos
add classificacao_etaria int;
  
alter table jogos
modify ano_lancamento char (4);
alter table jogos
modify classificacao_etaria varchar (5);
alter table jogos
change nome nome_jogos varchar(100);
  
insert into jogos (nome_jogos,descricao,ano_lancamento,nota,preco,classificacao_etaria)
values
('Grand Theft Auto V', 'Quando um malandro de rua, um ladrão de bancos aposentado e um psicopata aterrorizante se veem encrencados, eles precisam realizar uma série de golpes ousados para sobreviver em uma cidade onde não podem confiar em ninguém, nem mesmo um no outro. A história decorre na cidade fictícia de Los Santos e Blaine County, no estado de San Andreas e seus arredores. ', 2013, 9.1, 199.9, '18'),
('Red Dead Redemption', 'América, 1899. O fim da era do oeste selvagem começou quando os homens da lei caçam as últimas gangues criminosas que restam. Aqueles que não se renderem serão mortos. Depois de um assalto dar muito errado na cidade de Blackwater, Arthur Morgan e a gangue de Van der Linde são forçados a fugir. Com agentes federais e os melhores caçadores de recompensas da nação se aglomerando em seus calcanhares, a gangue deve roubar e lutar pelo coração dos Estados Unidos para sobreviver. À medida que algumas ameaças prometem separar a gangue, Arthur precisa escolher entre seus próprios ideais e a lealdade à gangue que o criou. ', 2010, 9.3, 249.9, '18'),
('God of War', 'Muitos anos se passaram desde que Kratos teve sua vingança contra os deuses do Olimpo. Agora vivendo com seu filho no mundo dos deuses e monstros nórdicos, ele deve ensina-lo a sobreviver. Como um mentor e protetor para ele, Kratos deve dominar a raiva que o impulsionou por muitos anos. Nesta nova história, Kratos enfrentará um novo panteão de criaturas, monstros e deuses. ', 2018, 9.4, 99.9, '18'),
('Super Mario 64', 'Super Mario 64 foi um dos primeiros jogos do Nintendo 64 e o carro-chefe do console, impulsionando a venda do videogame. Foi o primeiro jogo desenvolvido em três dimensões da série Mario e, apesar de não ser o primeiro jogo em 3D da história, Super Mario 64 revolucionou o gênero, da mesma maneira que Super Mario Bros. ditou a regra para os jogos de plataforma em duas dimensões. ', 1996, 9.2, 199.9, 'Livre'),
('Metal Gear Solid 3: Snake Eater', 'Metal Gear Solid 3: Snake Eater é um jogo de espionagem lançado em 2004 pela Konami. Enquanto os jogos anteriores da série se passavam em ambiente urbano, Snake Eater adota uma ambientação em uma floresta soviética dos anos 1960, com as armadilhas semi-futurísticas de alta tecnologia dos antigos jogos Metal Gear Solid sendo substituídas pela natureza. O foco de sua jogabilidade ainda permanece na furtividade e infiltração, além de também manter o senso de humor autoreferenciado tradicional da série.', 2004, 9.5, 199.9, 'Livre'),
('The Last of Us', 'O que parecia ser um simples fungo tornou-se um pesadelo. Antes algo que atingia apenas pequenos insetos, o fungo passou a se alastrar aos humanos, se acomodando em seus cérebros e fazendo com que perdessem a razão, ficando extremamente violentos e insanos. Vinte anos depois da primeira infecção, o mundo está totalmente mudado. Pessoas vivem em cidades devastadas e fechadas, tentando garantir sua própria sobrevivência em meio a escassez de comida, água e medicamentos. Quanto mais tempo se passava, mais os fungos se desenvolviam nos infectados, criando verdadeiras aberrações e cada vez mais mortais. Um verdadeiro cenário pós-apocalíptico aguarda Joel e Ellie. Joel é um homem que viveu o começo de todo este pesadelo, agora calejado pela vida de sobrevivência contra os infectados. Ellie é uma garota de 16 anos que nasceu neste mundo já devastado e desconhece muito do que fora antes. Agora ambos devem partir em busca de uma pista da possível cura para a infecção, a grande esperança de toda a humanidade. ', 2013, 9.4, 159.9, '18'),
('PUBG', 'O jogador é inserido em um grande mapa onde o último a sobreviver sai vitorioso. A partida começa com o seu personagem caindo de paraquedas em uma ilha e deve buscar os recursos para vencer a rodada. ', 2016, 7.2, 89.9, '16'),
('Fortnite', 'A Tempestade chegou sem aviso. 98% da população mundial sumiu... Depois vieram os monstros. Lidere os Heróis remanescentes do mundo na luta para conter a Tempestade. Construa fortalezas enormes, crie armas exóticas, encontre tesouros e aprimore seus Heróis. Enfrente a Tempestade junto com quatro aliados on-line. ', 2017, 7.3, 89.9, '12'),
('Age of Empires II', 'The Age of Kings é ambientado na Idade Média e contém 13 civilizações jogáveis. Jogadores focam em coletar recursos, com os quais eles usam para construir vilas, criar tropas, e finalmente destruir seus inimigos. Possui também cinco campanhas históricas, que coloca o jogador a se especializar em condições históricas.', 1999, 8.6, 199.9, 'Livre'),
('Street Fighter 2', 'Street Fighter II é um jogo de luta competitivo, lançado originalmente para as máquinas arcade em 1991. É o segundo jogo da série e a sequela do jogo original, lançado em 1987. É atribuído ao sucesso de Street Fighter II a popularização dos jogos de luta durante a década de 1990, inspirando outros produtores a criarem as suas próprias séries, popularizando o gênero e começando o renascimento da indústria de máquinas arcade, algo que não se via desde os dias de Pac-Man.', 1991, 9.2, 199.9, 'Livre'),
('World of Warcraft', 'World of Warcraft é um jogo online em que jogadores de todo o planeta assumem papéis de heróis fantásticos para explorar um mundo virtual repleto de magia, mistério e aventuras sem limites. ', 2004, 8.2, 249.9, '12'),
('League of Legends', 'League of Legends (LoL) é um jogo do gênero multiplayer online battle arena desenvolvido pela Riot Games para PC. League of Legends foi bem recebido desde o seu lançamento e sua popularidade cresceu ao decorrer dos anos. Em julho de 2012, League of Legends foi o jogo mais jogado para computador na América do Norte e Europa. Até janeiro de 2014, mais de 67 milhões de pessoas jogavam League of Legends por mês, 27 milhões por dia e mais de 7,5 milhões durante o horário de pico. League of Legends tem um cenário competitivo grande e ativo. ', 2009, 6.8, 49.9, 'Livre'),
('Super Mario World', 'Super Mario World é um jogo de plataforma produzido pela Nintendo. Como nos jogos anteriores da série, o roteiro envolve Mario atravessando terras distintas numa jornada para resgatar a Princesa Peach, que foi capturada por Bowser. ', 1990, 9.6, 129.9, 'Livre'),
('Super Mario Bros 3', 'Neste jogo, o Reino dos Cogumelos está passando por um longo período de paz graças aos esforços dos irmãos Mario e Luigi. Entretanto, o reino forma uma entrada para o Mundo dos Cogumelos onde as coisas não vão bem. Bowser enviou seus sete filhos para este mundo para que eles fizessem as travessuras que quisessem. Lá, eles roubaram os cetros mágicos reais de cada país daquele mundo e transformaram os seus reis em animais. Para fazer com que tudo volte ao normal, Mario e Luigi devem recuperar os cetros mágicos e fazer com que os reis voltem ao normal. Para isso, eles contarão com a ajuda da Princesa Peach, que se comunica com eles através de cartas. ', 1988, 9.1, 99.9, 'Livre'),
('The Elder Scrolls V: Skyrim', 'The Elder Scrolls V: Skyrim, quinto game da série de RPG medieval da Bethesda, se passa 200 anos após os eventos de Oblivion. Uma guerra civil se instalou após o assassinato de um dos reis, enquanto o deus Alduin, em forma de dragão, surge para destruir o mundo. O jogador deve derrotá-lo e impedir a destruição de Skyrim. Além de uma nova e poderosa engine, que promete gráficos excelentes, o jogo vem com melhorias na interface e um sistema de combate aperfeiçoado. ', 2011, 9.2, 99.9, '18'),
('The Witcher 3', 'The Witcher 3: Wild Hunt é o terceiro capítulo da saga de Geralt of Rivia, baseado no livro do famoso escritor polonês Andrzej Sapkowski. The Witcher 3 se passa logo após os fatos do segundo jogo da série, onde Geralt já é um temido e conhecido guerreiro na terra de Nilfgaard. Neste cenário ele é perseguido pela Wild Hunt, uma ordem de cavaleiros fantasmagóricos, que farão de tudo para abater o lendário Witcher.', 2015, 9.5, 249.9, '16'),
('Dark Souls III', 'Com o fogo se apagando e o mundo caindo em ruínas, você precisa se aventurar em um universo repleto de inimigos e ambientes colossais. Jogadores entrarão em um mundo de trevas e atmosfera épica, com uma jogabilidade mais ágil e combates mais intensos.', 2016, 9.2, 99.9, '14'),
('The Legend of Zelda: Ocarina of Time', 'O jogador controla o herói característico da franquia, Link, na terra de Hyrule. Link é enviado numa aventura para impedir Ganondorf, Rei da tribo dos Gerudo, de obter a Triforce, uma relíquia sagrada que garante os desejos de seu portador. ', 1998, 9.6, 199.9, 'Livre'),
('Minecraft', ' Minecraft é um jogo de construção e sobrevivência em mundo aberto, na qual os jogadores interajem com vários tipos de blocos num ambiente tridimensional. Neste ambiente, jogadores constroem estruturas criativas em vários modos de jogo. ', 2009, 8.5, 89.9, 'Livre');
 
 select * from jogos;
 
 insert into generos (nome_generos,descricao,destaques)
 value
 ('Ação e aventura', 'Um jogo de ação-aventura é um jogo eletrônico que combina conceitos dos gêneros de jogo de aventura e jogos de ação. Por ser um gênero misto e bem inclusivo, este talvez seja o mais amplo e diverso gênero em jogos eletrônicos. O primeiro jogo deste gênero foi Adventure (1979), lançado para Atari 2600.', 'God of War, Red Dead Redemption II, GTA V, Uncharted'),
('Aventura', 'Jogos de aventura, também conhecidos como adventures, são jogos eletrônicos cuja ênfase é focada no enredo e não na parte gráfica ou na ação', 'Super Mario, Metal Gear Solid'),
('Ação e aventura', 'Um jogo de ação-aventura é um jogo eletrônico que combina conceitos dos gêneros de jogo de aventura e jogos de ação. Por ser um gênero misto e bem inclusivo, este talvez seja o mais amplo e diverso gênero em jogos eletrônicos. O primeiro jogo deste gênero foi Adventure (1979), lançado para Atari 2600.', 'God of War, Red Dead Redemption II, GTA V, Uncharted'),
('Battle Royale', 'Battle royale (em tradução literal: batalha real) é um gênero de jogo eletrônico que mistura elementos de exploração, sobrevivência, e procura de equipamentos e de armas, encontrados em um jogo de sobrevivência com a jogabilidade encontrada em um jogo de último sobrevivente.', 'PUBG, Fortnite'),
('Estratégia em tempo real', 'Jogo de estratégia é uma categoria de jogo (sejam de tabuleiro, de cartas, de videogames ou de computador), em que a habilidade dos jogadores em tomar decisões estratégicas supera a sorte como fator de determinação do vencedor.', 'Age of Empires II'),
('Luta', 'Jogo eletrônico de luta é um gênero de videogame baseado em combate corpo a corpo entre um número limitado de personagens, em um estágio em que os limites são fixos.', 'Street Fighter 2'),
('MMORPG', 'Um jogo de interpretação de personagens online e em massa para multi-jogadores (Massive Multiplayer Online Role-Playing Game - MMORPG) é um tipo de jogo on-line que suporta uma quantidade muito grande de jogadores simultâneos', 'World of Warcraft'),
('MOBA', 'Arena de batalha multijogador em linha (em inglês: multiplayer online battle arena — MOBA — também conhecido como action real-time strategy) é um gênero de jogos eletrônicos derivado dos jogos de estratégia em tempo real, semelhante ao jogo Defense of the Ancients (um cenário personalizado ao jogo Warcraft III).', 'League of Legends'),
('Plataforma', 'Jogo eletrônico de plataforma é um gênero de jogos eletrônicos em que o jogador corre e pula entre plataformas e obstáculos, enfrentando inimigos e coletando objetos bônus. O gênero tem seu surgimento no início dos anos 80',  'Super Mario Bros., Sonic the Hedgehog, Donkey Kong, Metal Slug, Crash Bandicoot, Prince of Persia, Castlevania, Metroid, Contra '),
('RPG de ação', 'RPG eletrônico de ação (ou simplesmente RPG de ação, do inglês Action Role Playing Game - ARPG) formam um subgênero vagamente definido do RPG eletrônico (RPG de vídeo-game), que incorporam elementos de jogos de ação em tempo real ou ação-aventura ao gênero RPG, em que o jogador tem controle direto dos personagens, similar ao tipo hack and slash (corpo a corpo) e ao tiro, em vez de sistemas de combate baseados em turnos ou menus.', 'The Elder Scrolls V: Skyrim, The Witcher 3, Dark Souls III, The Legend of Zelda: Ocarina of Time'),
('Sandbox e Sobrevivência', 'A jogabilidade não-linear é um elemento de jogos eletrônicos caracterizada pela maior liberdade dada ao jogador quanto aos seus objetivos, como desafios que podem ser completados em um número de sequências alternativas ou um level design mais aberto e com maior senso de exploração. Um jogo não-linear permite múltiplas ações e possibilidades, enquanto um jogo focado em linearidade proverá uma sequência mais restrita de desafios.', 'Minecraft');

select * from generos;

select * from desenvolvedora;

insert into desenvolvedora (nome_desenvolvedora,descricao,nota,mais_vendidos)
value ('Rockstar Games', 'Rockstar Games, Inc. é uma produtora e publicadora de jogos eletrônicos fundada em 1994. Conhecida por ter criado grandes nomes dos jogos eletrônicos, a Rockstar é criadora das famosas séries Grand Theft Auto, Red Dead, Midnight Club, Bully, Max Payne e Manhunt.', 9.3, 'Grand Theft Auto V,  Red Dead Redemption 2'),
('Bethesda Game Studios', 'A Bethesda Softworks LLC é um braço de publicação norte-americano de jogos eletrônicos sediada em Rockville, Maryland, como subsidiária do Xbox Game Studios desde 2020. Foi fundada em junho de 1986 por Christopher Weaver como uma divisão da Media Technology e em 1999 tornou-se uma subsidiária da ZeniMax Media.', 8, 'Fallout 4, Fallout 76, The Elder Scrolls V'),
('Blizzard Entertainment', 'Blizzard Entertainment é uma editora e desenvolvedora de videojogos americana tendo sua sede na cidade de Irvine, California. A companhia é uma subsidiária da Activision Blizzard e foi fundada em 8 de fevereiro de 1991, sob o nome de Silicon & Synapse, por Michael Morhaime, Frank Pearce e Allen Adham.', 8.5, 'World of Warcraft, Overwatch, Diablo III, StarCraft'),
('Capcom', 'Capcom Co., Ltd. é uma desenvolvedora e publicadora japonesa de jogos eletrônicos sediada em Osaka. Ela é conhecida por ter criado franquias multimilionárias, tais como Resident Evil, Street Fighter, Mega Man, Devil May Cry, Dino Crisis e Onimusha. Sua sede principal está situada em Chuo-ku, Osaka.', 8.7, 'Resident Evil 4, Ōkami, Resident Evil 2, Resident Evil Village, Street Fighter '),
('CD Projekt', 'A CD Projekt S.A. é uma desenvolvedora e publicadora de jogos eletrônicos polonesa sediada em Varsóvia, Mazóvia. A companhia foi fundada em maio de 1994 por Marcin Iwiński e Michał Kiciński.', 9, 'Cyberpunk 2077, The Witcher 3: Wild Hunt, Gwent: The Witcher...'),
('Ensemble Studios', 'Ensemble Studios foi uma desenvolvedora de jogos eletrônicos americana. Foi fundada por Tony Goodman em 1994 e incorporada no ano seguinte. Ela pegou emprestado o nome da Ensemble Corporation, uma empresa de consultoria fundada por Goodman em 1990.', 8, 'Halo Wars, Age of Empires, Age of Mythology'),
('Epic Games', 'A Epic Games, Inc., anteriormente chamada de Potomac Computer Systems e Epic MegaGames, é uma desenvolvedora norte-americana de jogos eletrônicos e softwares sediada em Cary, Carolina do Norte. Foi fundada em 1991 por Tim Sweeney e originalmente ficava localizada na cidade de Potomac em Maryland.', 8.2, 'Fortnite, Unreal, Battle Breakers, Fall Guys'),
('FromSoftware', 'FromSoftware, Inc. é uma desenvolvedora e publicadora japonesa de jogos eletrônicos sediada em Tóquio. É uma subsidiária da Kadokawa Corporation e foi fundada em novembro de 1986.', 9, 'Elden Ring, Bloodborne, Sekiro: Shadows Die Twice, Dark Souls III'),
('Konami', 'Konami Holdings Corporation é uma empresa pública japonesa desenvolvedora e distribuidora de jogos eletrônicos, brinquedos, animes, cromos, tokusatsus e máquinas de caça-níqueis.', 8.9, 'Metal Gear Solid, Silent Hill, Teenage Mutant Ninja , Super Bomber'),
('Krafton', 'Krafton Inc., é uma empresa sul-coreana que desenvolve e distribui videogames com sede em Bundang-gu, Seongnam. Fundada por Chang Byung-gyu em Seul em março de 2007, a empresa é conhecida por ter desenvolvido TERA, PlayerUnknown Battlegrounds e PUBG: NEW STATE, este último 2 por meio de sua subsidiária: PUBG Studios.', 8.5, 'PUBG: New State, Thunder Tier One, PUBG Mobile'),
('Mojang Studios', 'Mojang Studios é uma subsidiária da Xbox Game Studios, sediada em Estocolmo, Suécia, conhecida principalmente pela criação e desenvolvimento de Minecraft. Foi fundada por Markus Persson, Jakob Porser e Carl Manneh em 2009.', 7.5, 'Minecraft'),
('Naughty Dog', 'A Naughty Dog, LLC é uma desenvolvedora norte-americana de jogos eletrônicos sediada em Santa Mônica, Califórnia. Foi fundada em setembro de 1984 pelos então estudantes colegiais Andy Gavin e Jason Rubin como JAM Software, sendo renomeada para seu nome atual alguns anos depois em 1989.', 9.2, 'The Last of Us, The Last of Us Part II, Uncharted 4, Uncharted 2'),
('Riot Games', 'A Riot Games, Inc. é uma desenvolvedora, editora e organizadora de torneios de esportes eletrônicos americana com sede em West Los Angeles, Califórnia.', 8.2, 'League of Legends, Valorant, Legends of Runeterra'),
('Santa Monica Studio', 'Santa Monica Studio é uma desenvolvedora norte-americana de jogos eletrônicos sediada em Los Angeles, Califórnia. O estúdio foi fundado em 1999 por Allan Becker e estava originalmente localizado em Santa Mônica, Califórnia, até se mudar para Playa Vista em 2014', 9.2, 'Saga God of War');

insert into catalogo_de_jogos (generos_id,jogos_id,desenvolvedora_id)
value 
(95, 103590, 69),
(185, 104050, 75),
(89, 124300, 31),
(95, 106540, 100),
(170, 103256, 111),
(150, 124656, 89),
(95, 110230, 201),
(101, 121354, 45),
(150, 156410, 110),
(78, 241032, 199),
(102, 541230, 125),
(120, 214651, 51),
(101, 512310, 51),
(81, 112303, 51),
(81, 123456, 51),
(95, 214561, 51),
(185, 105848, 121),
(120, 103584, 98),
(120, 105846, 98),
(120, 204564, 87);

select * from catalogo_de_jogos;

/*select c.jogos_id, j.nome_jogos, nota count(jogos_id) as QtdJogos
from catalogo_de_jogos c
inner join jogos j
on c.jogos_id = j.nome_jogos;
