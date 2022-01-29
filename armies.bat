@echo off
REM ___________________________________________________________________________________________________________________________
set loyal=5
set unloyal=0
set total=5
set armour=1
set swords=0
set bows=0
set arrows=0
set shields=0
set gold=30
set food=30
set grit=1
set location=0
set beasthealth=10
set beaststrength=1
set surrounded=0
set loop=1
set foodprice=1
set armourprice=9
set swordprice=2
set bowprice=4
set tempprice=0
set cottage=1
set spider=1
set spidertame=0
set beastdisplay1=     ('__') -roar
set beastdisplay2=  (        )
set beastdisplay3=   I I I I      
set beastvictory=winwoodbeast
set armydisplay1=O     O O    O
set armydisplay2=I i i l l i ili i i i i i 
set armyvictory=winraiders
set otherarmypopulation=21
set otherarmygrit=1
set surrenderdirect=1
set postseige=winminitown
set trooploss=0
set redirectLoss=displayarmy
set traderRedirect=townchoices
set seigeTime=0
set newrand=0
set pounds=0
set tempnum=0
set tempnum2=0
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I              II
set hunt4=                  .  
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
set animaly=0
set dmaredirect=options
set plural=s
color 40
echo DISCLAIMER
echo Real war is not a game.
echo This game is not real war.
pause
echo Do you want to enter a code to skip part of the game?
CHOICE /c yn
goto code%ERRORLEVEL%
:code1
set /p code="enter the code "
IF %code% == Eli (
set location=10
) 
:code2
cls
color 27
echo You begin your conquest in a forest with a loyal army of %loyal% warriors.
echo Your goal is to get to the north castles by advancing.
pause
goto options
:options
color 07
set dmaredirect=optionsb
goto displaymyarmy
:optionsb
cls
set /a total=%loyal%+%unloyal%
set /a tempnum=%total%*2+1
If %food% LSS %tempnum% (
echo Warning! Food is running out.
)
if %food% LSS 1 (
echo you starved
pause
goto dead
)
If %loyal% LSS %unloyal% (
goto rebellion
)
echo 1-take a census and check resources
echo 2-map
echo 3-train army
echo 4-dismiss unloyal soldiers
echo 5-ADVANCE!
If %location% GTR 0 (
echo 6-BACKTRACK!
)
CHOICE /c 123456
goto answer%ERRORLEVEL%
:answer1
cls
echo You have %loyal% loyal soldiers.
echo You have %unloyal% unloyal soldiers.
echo You have %swords% swords.
echo You have %bows% large bows.
echo You have %arrows% arrows.
echo You have %shields% shields.
echo Your troops are wearing level %armour% armour.
echo YOU HAVE %food% POUNDS OF FOOD.
echo YOU HAVE %gold% GOLD.
pause
goto options
:answer2
cls
echo _____________________________________________________________________________
echo I                        richton  HH   North  HH    HH                      I
echo I ``````````       PLAINS   n      HH  Castles    HH      HH                I
echo I```````````````                             HH     HH     HHH              I
echo I````sea``````````  Royal Army     ##########################H  Uncharted   I
echo I```````````````     iiiiiiii      # f f f f f f f f f f f f# H   Lands     I
echo I```````````` ~~                  #f f f f f f  Field  f f f# H             I
echo I```````       ~~      Here be  #f f f  f f  f f f   f f f f# H             I
echo I                ~~    dragons # f f  f f  f f f  f f f  f  # HH Big Wall I I
echo I                  ~~      X  ###############################  HH         V I
echo I             n     n ~~      Minitown  n   Y                    HHHHHHHHHHHI
echo I         West Town      ~~     n  n  n   Y      Y   Y      Y         Y     I
echo I       n               n ~river  n           Y                 Y     Y     I
echo I    n          n          ~~      Y   Y     THE FOREST   Y                 I
echo I       n                 n  ~~  Y                Y             Y BEAST     I
echo I                             Y ~~          Y   }O{ spider         TERRITORYI
echo I        Y           Y             ~~~               cave    Y      ('__')  I
echo I              Y                 Y    ~~~~ ~~   Y             Y   (       ) I
echo I__________________________________________________________________I_I I I__I
pause
goto options
:answer3
set dmaredirect=answerb3
goto displaymyarmy
:answerb3
echo How rigorous do you want the training to be?
set /a tempnum=%total%/4
echo 1: easy (%tempnum% food)
set /a tempnum=%total%/3
echo 2: challenging (%tempnum% food)
set /a tempnum=%total%
echo 3: grueling (%tempnum% food)
set /a loop=1
CHOICE /c 123
goto r%ERRORLEVEL%
:r1
cls
echo.
echo %myarmydisplay%
echo jumping jacks
timeout>nul 1
cls
echo %myarmydisplay%
echo.
echo jumping jacks
timeout>nul 0
set /a loop=%loop%+1
if %loop% GTR 5 (
set /a loop=1
set /a tempnum=%total%/4
set /a food=%food%-tempnum
set /a grit=%grit%+1
goto options
) else (
goto r1
)
:r2
cls
echo.
echo %myarmydisplay%
echo extreme jumping jacks
timeout>nul 0
cls
echo %myarmydisplay%
echo.
echo extreme jumping jacks
timeout>nul 0
set /a loop=%loop%+1
if %loop% GTR 20 (
set /a loop=1
set /a tempnum=%total%/3
set /a food=%food%-%tempnum%
set /a grit=%grit%+2
goto options
) else (
goto r2
)
:r3
cls
echo %myarmydisplay%                       
timeout>nul 0
cls
echo    %myarmydisplay%                    
timeout>nul 0
cls
echo        %myarmydisplay%                
timeout>nul 0
cls
echo            %myarmydisplay%            
timeout>nul 0
cls
echo                %myarmydisplay%        
timeout>nul 0
cls
echo                  %myarmydisplay%      
timeout>nul 0
cls
echo                      %myarmydisplay%  
timeout>nul 0
cls
echo                        %myarmydisplay%
timeout>nul 0
cls
echo                      %myarmydisplay%  
timeout>nul 0
cls
echo                   %myarmydisplay%      
timeout>nul 0
cls
echo                %myarmydisplay%        
timeout>nul 0
cls
echo            %myarmydisplay%            
timeout>nul 0
cls
echo        %myarmydisplay%                
timeout>nul 0
cls
echo    %myarmydisplay%                    
timeout>nul 0
cls
echo %myarmydisplay%                        
timeout>nul 0
set /a loop=%loop%+1
if %loop%==4 (
set /a loop=1
set /a tempnum=%total%
set /a food=%food%-%tempnum%
set /a grit=%grit%+5
goto options
) else (
goto r3
)
:answer4
cls
if %unloyal%==0 (
echo You have no unloyal soldiers.
pause
) else (
echo You all can go home!
echo %unloyal% soldiers quit.
set /a unloyal=0
pause
echo All unloyal soldiers left.
pause
)
goto options
:answer5
set /a food=%food%-%total%
set /a location=%location%+1
goto S%location%
:answer6
set /a food=%food%-%total%
set /a location=%location%-1
cls
goto S%location%
:S0
echo You cannot travel south any further.
set /a location=%location%+1
pause
goto options
:S1
set /a beasthealth=10
set /a beaststrength=1
echo You come across a large beast!
pause
cls
echo 1:fight
echo There is no other choice!
set beastdisplay1=     ('__') -roar
set beastdisplay2=  (        )
set beastdisplay3=   I I I I       
set beastvictory=winwoodbeast
CHOICE /c 1
cls
echo%beastdisplay1%
echo%beastdisplay2%
echo%beastdisplay3%
echo Behold the fearsome beast!
pause
goto yourturn
:yourturn
set dmaredirect=yourturnb
goto displaymyarmy
:yourturnb
if %total% LSS 1 (
echo All your soldiers are gone.
pause
goto death
)
cls
echo%beastdisplay1%
echo%beastdisplay2%
echo%beastdisplay3% health: %beasthealth%
echo ---------------------------------
echo %myarmydisplay% health: %grit%
echo Your turn
echo 1: Surround
echo 2: Sneak up
echo 3: Attack
CHOICE /c 123
goto a%ERRORLEVEL%
:a1
set /a surrounded=1
echo You've surrounded the beast
goto beastturn
:a2
set /a tempnum=%random% %%3 +1
if %tempnum%==1 (
echo The beast was surprised!
set /a beasthealth=%beasthealth%-%total%*2
) else (
echo The beast anticipated your attack.
goto beastturn
)
goto a4
:a3
set /a beasthealth=%beasthealth%-%total%
if %spidertame%==1 (
set /a beasthealth=%beasthealth%-5
echo Your spider hurt the beast.
)
goto a4
:a4
if %beasthealth% LSS 1 (
goto %beastvictory%
) else (
echo You wounded the beast! The beast has %beasthealth% health left.
)
goto beastturn
:beastturn
echo The beast prepares to strike!
pause
if %beasthealth% LSS 3 (
goto beastrun
)
if %beaststrength% GTR 1 (
set plural=s
) else (
set plural=
)
if %grit% LSS 2 (
set /a total=%total%-%beaststrength%
set /a loyal=%loyal%-%beaststrength%
echo The beast ate %beaststrength% soldier%plural%
pause
goto yourturn
) else (
set /a grit=%grit%-%beaststrength%
echo The beast wounded your soldiers.
pause
goto yourturn
)
:beastrun
if %surrounded%==1 (
echo The beast tried to run, but you had it surrounded.
pause
goto yourturn
) else (
echo The beast ran away like a whimpering dog! Your army was disappointed.
pause
goto options
)
:S2
:woods
cls
echo 0 O    0  O 0    0
echo I I    I  I I    I
echo You are in the woods.
echo 1:hunt
echo 2:forage
echo 3:continue
CHOICE /c 123
goto woods%ERRORLEVEL%
:woods1
goto huntintro
:woods2
set /a tempnum=%RANDOM% %%3 +1
goto forage%tempnum%
:forage1
cls
echo You find 5 lbs of black berries.
set /a food=%food%+5
pause
goto options
:forage2
cls
echo You find 18 lbs of pink, foul smelling berries
echo 1: eat them
echo 2: find a squirrel to feed them to
echo 3: ignore
CHOICE /c 123
goto poison%ERRORLEVEL%
:poison1
echo You all eat the berries.
pause
echo Ten minutes later, you drop dead. 
echo Please try again.
pause
goto death
:poison2
echo You can't find any squirrels.
pause
goto forage2
:poison3
goto options
:forage3
cls
set /a tempnum=%total%*3
echo You find %tempnum% lbs of pigweed.
echo 1:eat
echo 2:don't eat
CHOICE /c 12
if %ERRORLEVEL%==1 (
set /a food=%food%+%tempnum%
echo The leaves are bland but edible.
pause
goto options
) else (
goto options
)
:woods3
echo You continued marching.
pause
goto options
:S3
If %cottage%==0 (
goto cottagegone
)
echo You see a small cottage...
echo 1: Enter
echo 2: Ignore
echo 3: Set on fire
CHOICE /c 123
goto cottage%ERRORLEVEL%
:cottagegone
echo A cottage was once here.
pause
goto options
:cottage1
cls
echo You see a strange man and a counter full of different knick-knacks.
pause
set traderRedirect=options
:thetrader
cls
echo  ('_') -May I interest you in a trade?
echo (     )
echo  L    L
CHOICE /c yn
GOTO trade%ERRORLEVEL%
:trade1
cls
set /a tempprice=%swordprice%*2
echo  ('_') -Great. Choose an item to buy.
echo (     )
echo  L   L
echo You have %gold% gold
echo 1: 20 food for %foodprice% gold
echo 2: Good armour for %armourprice% gold
echo 3: 2 swords for %tempprice% gold
echo 4: 80 arrows for 3 gold
echo 5: 9 bows  for 10 gold
CHOICE /c 12345
goto buy%ERRORLEVEL%
:buy1
echo You asked for food.
if %gold% LSS %foodprice% (
echo not enough gold
pause
goto %traderRedirect%
) else (
set /a food=%food%+20
set /a gold=%gold%-%foodprice%
echo The trader took your money
timeout>nul 1
echo You recieved food.
timeout>nul 1
echo THANK YOU FOR TRADING
pause
goto thetrader
)
:buy2
echo You asked for the armour.
if %gold% LSS %armourprice% (
echo not enough gold
pause
goto options
) else (
set /a armour=5
set /a gold=%gold%-%armour%
echo The trader took your money
timeout>nul 1
echo You recieved a bunch of shiny level 5 chestplates.
timeout>nul 1
echo THANK YOU FOR TRADING
pause
goto thetrader
)
:buy3
echo You asked for the swords.
set /a tempprice=%swordprice%*2
if %gold% LSS %tempprice% (
echo not enough gold
pause
goto options
) else (
set /a swords=%swords%+2
set /a gold=%gold%-%tempprice%
echo The trader took your money
timeout>nul 1
echo You recieved two swords.
timeout>nul 1
echo THANK YOU FOR TRADING
pause
goto thetrader
)
:buy4
echo You asked for the arrows
if %gold% LSS 3 (
echo not enough gold
pause
goto options
) else (
set /a arrows=%arrows%+79
set /a gold=%gold%-3
echo The trader took your money
timeout>nul 1
echo You recieved 79 arrows.
timeout>nul 1
echo THANK YOU FOR TRADING
pause
goto thetrader
)
:buy5
echo You asked for the bows.
if %gold% LSS %bowprice% (
echo not enough gold
pause
goto options
) else (
set /a bows=%bows%+8
set /a gold=%gold%-%bowprice%
echo The trader took your money
timeout>nul 1
echo The trader gave you the bows.
timeout>nul 1
echo THANK YOU FOR TRADING
pause
goto thetrader
)
:trade2
cls
echo ______ you   army
echo I    I  i    %myarmydisplay%
echo You left and returned to your army.
pause
goto options
:cottage2
goto options
:cottage3
set /a cottage=0
echo NMNNMM
echo l````l
echo The cottage burned to the ground.
echo Your soldiers were slightly disturbed.
if %loyal% GTR 1 (
set /a loyal=%loyal%-1
set /a unloyal=%unloyal%+1
)
pause
goto options
:S4
cls
echo While wandering through the woods, you find a strange cave.
echo 1: go inside
echo 2: go away
CHOICE /c 12
goto hole%ERRORLEVEL%%
:hole1
echo You climb into the cave, with your troops following behind.
echo _   _
timeout>nul 1
echo  _   _
timeout>nul 1
echo   _   _
timeout>nul 1
echo    _   _
timeout>nul 1
echo ____________________________________________________
echo You are at the bottom of the hole. There are cobwebs on the walls. Further down the tunnel you see a glimmer of metal.
echo 1:go in deeper
echo 2:leave
CHOICE /c 12
goto holeb%ERRORLEVEL%
:holeb1
cls
echo As you walk down the tunnel, the cobwebs are more noticeable.
timeout>nul 2
echo Ahead of you, you can see a chamber full of gold, armour, and weapons.
timeout>nul 2
echo You finally emerge Strangely enough, there is no spider in sight.
pause
cls
echo You here a shuffle on the ceiling. 
pause
cls
echo %spider%
If %spider%==0 (
goto nospider
)
goto spiderpeople
:spiderintro
echo.
echo          }O{---What's up. I'm a huge spider!
echo.
pause
cls
echo.
echo          }O{---If you can answer three riddles, I'll join your army. 
echo                Otherwise, I'll eat you.
echo.
:spiderchoice
echo 1: answer riddles
echo 2: fight
echo 3: run
CHOICE /c 123
GOTO spider%ERRORLEVEL%
:spider1
cls
set /p riddlea1="}O{---The itsy bitsy spider climbed up the water ..."
if %riddlea1%==spout (
goto riddle2
) else (
echo.
echo          }O{---YOU'RE WRONG!
echo.
pause
goto spider2
)
:riddle2
cls
set /p riddlea2="}O{---I live in a hole, my breath smells like chicken, and I have trouble making riddles. I am a ..."
if %riddlea2%==spider (
cls
echo.
echo          }O{---Wow! You're good.
echo.
pause
goto riddle3
) else (
cls
echo.
echo          }O{---YOU'RE WRONG! I'm clearly not a %riddlea2%!
echo.
pause
goto spider2
)
:riddle3
cls
set /p riddlea3="}O{---If there's just fuzz where your hamster was, it's probably because of ..."
if %riddlea3%==tarantulas (
cls
echo.
echo          }O{---Oh man! You did it. Now I'm in your army.
echo.
set /a spidertame=1
set /a spider=0
pause
cls
echo i  i i i i i i
echo i i i i i i i i ii i  i       }O{
echo i i  i i i i i i i
echo Your army now has a spider!
pause
goto options
) else (
cls
echo.
echo          }O{---YOU'RE WRONG!
echo.
pause
goto spider2
)
:spider2
set beastdisplay1=.
set beastdisplay2= }O{ 
set beastdisplay3=.
set beastvictory=winspider
set surrounded=0
set /a beasthealth=20
set /a beaststrength=5
goto yourturn
:spider3
echo The ground is too sticky to exit swiftly.
pause
goto spiderchoice
:nospider
echo A spider once lived inside this hole.
pause
goto options
:holeb2
goto options
:hole2
goto woods
:S5
echo You hear something rustle in the foilage.
echo The troops worry if they are prepared to face whatever danger might befall them.
pause
goto woods
:S6
cls
echo ('o') ('o') ('o')
echo (( )) (( )) (( ))
echo You encounter an army of attack spiders!
pause
set armydisplay1= ('o') ('o') ('o')
set armydisplay2= (( )) (( )) (( ))
set armyvictory=winraiders
set otherarmypopulation=30
set otherarmygrit=5
set surrenderdirect=opponentsteals
goto displayarmy
:opponentsteals
cls
echo  HHH
echo ('o')
echo (( ))
IF %spidertame%==1 (
goto spidertranslate
) ELSE (
echo HISS! HISS! HIIIISSSS!
pause
cls
echo The spiders took your food. They spared your troops and crawled into the forest.
set /a food=0
pause
goto woods
)
:spidertranslate
echo King spider speaks spiderese, but luckily your spider can translate
pause
cls
echo  HHH    }        {
echo ('o')    }('__'){-He says:
echo (( ))   }        {
pause>nul 1
echo Thou hast surrendered to me...
pause>nul 1
echo so I shall spare thee...
pause>nul 1
echo but the one thing I request
pause>nul 1
echo is that thou leavest our woods forever!
pause
goto options
:displayarmy
set dmaredirect=displayarmyb
goto displaymyarmy
:displayarmyb
cls
echo %armydisplay1%
echo %armydisplay2%
echo.
echo %myarmydisplay%
echo Your soldiers' morale level is %grit%.
echo You have %swords% swords.
echo You have %total% soldiers.
echo Their soldiers' morale level is %otherarmygrit%
echo They have %otherarmypopulation% soldiers.
echo They all have swords.
if %grit% LSS 2 (
echo Warning! Your soldiers lost their morale!
)
if %swords% LSS %total% (
echo Warning! Your soldiers don't all have swords!
)
echo ________________________________________________
echo Choices
echo 1: continue fighting
echo 2: retreat
echo 3: surrender
CHOICE /c 123
goto battle%ERRORLEVEL%
:battle1
goto fightperiod
:battle2
set redirectLoss=battleb2
set /a tempnum2=%grit%*4
set /a tempnum=%otherarmypopulation%/%tempnum2%
set /a trooploss=%tempnum%
goto losetroops
:battleb2
echo You and %total% of your troops managed to get away.
pause
:arrows
echo You are at a distance from the enemy. Would you like to shoot arrows at them?
echo 1: yes
echo 2: no
CHOICE /c 12
goto arrows%ERRORLEVEL%
:arrows1
if %total% LSS %bows% (
set /a otherarmypopulation=%otherarmypopulation%-%total%
set /a arrows=%arrows%-%total
) else (
set /a otherarmypopulation=%otherarmypopulation%-%bows%
set /a arrows=%arrows%-%bows%%
)
if %arrows% LSS 1 (
set /a otherarmypopulation=%otherarmypopulation%-%arrows%
echo Out of arrows
)
if %bows% LSS 1 (
echo You have no bows.
pause
)
goto otherarmycoronor
:arrows2
goto options
:battle3
echo %surrenderdirect%
goto %surrenderdirect%
echo The other army marches off with all of your belongings except for your food.
set /a gold=0
set /a swords=0
set /a armour=1
set /a shields=0
set /a bows=0
set /a arrows=0
pause
goto options
:fightperiod
IF %grit% LSS 2 (
set redirectLoss=fightperiodcntd
set /a trooploss=%otherarmypopulation%/%armour%
goto losetroops
) else ( 
set /a grit=%grit%-1
set redirectLoss=fightperiodcntd
set /a tempnum=%armour%*8
set /a trooploss=%otherarmypopulation%/%tempnum%
goto fightperiodcntd
)
:losetroops
set /a total=%total%-%trooploss%
set /a loyal=%loyal%-%trooploss%
if %loyal% LSS 1 (
set /a unloyal=%unloyal%+%loyal%
)
if %total% LSS 1 (
cls
echo All your soldiers have fallen.
echo      Please try again.
pause
goto death
)
goto %redirectLoss%
:fightperiodcntd
REM old code: set /a otherarmypopulation=%otherarmypopulation%-(%total%+%swords%)*(%grit%/2)
if %total% LSS %swords% (
goto fightperiodcntdb
) else (
goto fightperiodcntdc
)
:fightperiodcntdb
if %otherarmygrit% LSS 2 (
set /a otherarmypopulation=%otherarmypopulation%-%total%
) else (
set /a otherarmygrit=%otherarmygrit%-1
)
goto fightperiodcntdd
:fightperiodcntdc
if %otherarmygrit% LSS 2 (
set /a otherarmypopulation=%otherarmypopulation%-%swords%
) else (
set /a otherarmygrit=%otherarmygrit%-1
)
goto fightperiodcntdd
:fightperiodcntdd
set /a otherarmypopulation
if %spidertame%==1 (
set /a otherarmypopulation=%otherarmypopulation%-5
)
goto otherarmycoronor
:otherarmycoronor
if %otherarmypopulation% LSS 1 (
cls
echo You demolished the other army.
pause
goto options
)
if %otherarmypopulation% LSS %total% (
cls
echo The other army surrenders!
set /a unloyal=%otherarmypopulation%
echo You gained %otherarmypopulation% soldiers.
pause
goto options
)
goto displayarmy
:S7
echo You are at the edge of the woods.
echo You meet a hunter carrying home a large deer. 
echo Do you trade him 5 gold for 20 lbs of food?
echo 1: yes!
echo 2: bargain for price of 3 gold
echo 3: no.
CHOICE /c 123
GOTO hunter%ERRORLEVEL%
:hunter1
IF %gold% GTR 4 (
echo It's a deal!
set /a food=%food%+20
set /a gold=%gold%-5
) else (
echo You don't have enough gold.
)
pause
goto options
:hunter2
echo The hunter settles for a price of 4 gold.
echo 1: ok
echo 2: no
CHOICE /c 12
IF %ERRORLEVEL%==2 (goto options)
IF %gold% GTR 4 (
echo It's a deal!
set /a food=%food%+20
set /a gold=%gold%-4
) else (
echo You don't have enough gold.
)
pause
goto options
:hunter3
pause
goto options
:S8
echo You find a town of peasants. You and your troops decide to go in.
pause
:townchoices
cls
echo 1: convince villagers to join your army
echo 2: trade
echo 3: march on
CHOICE /c 123
goto town%ERRORLEVEL%
:town1
echo How do you want to convince the villagers to help you?
echo 1: ask them to take pity on you
echo 2: lay seige to the city (requires 15 soldiers)
echo 3: bribe them
CHOICE /c 123
goto persuasion%ERRORLEVEL%
:persuasion1
If %total% GTR 10 (
echo The villagers don't pity you.
pause
goto townchoices
) else (
echo 2 villagers took pity on you and joined your army.
set /a loyal=%loyal%+2
pause
goto options
)
:persuasion2
cls
If %total% LSS 15 (
echo You layed seige to the town, but you did not have enough troops.
pause
set /a troopLoss=12
set redirectLoss=options
goto losetroops
) else (
set postseige=winminitown
goto seige
)
:persuasion3
cls
set /p bribe="How much money are you willing to give the villagers?"
If %bribe% GTR %gold% (
echo You don't have that much gold.
goto persuasion3
)
If %bribe% GTR 12 (
set /a gold=%gold%-%bribe%
set /a bribe=%bribe%-12
set /a loyal=%loyal%+%bribe%
echo %bribe% villagers joined your army.
goto options
) else (
echo The villagers were not impressed.
pause
goto townchoices
)
:seige
echo Your troops station themselves at every entrance and exit to the city.
echo Nobody is allowed to leave.
:seigeday
cls
set /a seigeTime=%seigeTime%+1
echo The city has been under seige for %seigeTime% days.
echo You have %food% food.
echo The city hasn't surrendered yet.
echo Do you want to Keep going? (y/n)
CHOICE /c yn
If %ERRORLEVEL%==2 (
goto options
) else (
set /a food=%food%-%total%
goto calcsurrender
)
:calcsurrender
If %food% LSS 1 (
echo You starved while trying to lay seige to the town
pause
goto death
)
set /a newrand=%random% %%50 +1
if %seigeTime% GTR %newrand% (
goto postseige
) else (
goto seigeday
)
:postseige
goto %postseige%
:town2
set traderRedirect=townchoices
goto thetrader
:town3
goto options
:S9
echo You and your soldiers come to a large field of crops.
echo 1: steal food
echo 2: look for the farmer
echo 3: ignore
echo 4: set on fire
CHOICE /c 1234
goto farm%ERRORLEVEL%
:farm1
set /a food=%food%+200
echo You got 200 food.
pause
goto options
:farm2
echo You find a farm house on the edge of the field.
echo Leaving your troops, you walk up to the house and knock on the door.
timeout>nul 1
echo  __H__
echo  ('_') --Howdy! I'm farmer Brown.
echo l( I )l
echo   Z Z
pause
cls
echo  __H__
echo  ('_') --I'll sell you some of this crop for a cheap price of 1 gold for 10 lbs!
echo l( I )l
echo   Z Z
pause
cls
echo  __H__
echo  ('_') --How many 10-pound-bags of food do you want?
echo l( I )l
echo   Z Z
set /p pounds="Type your answer here"
If %pounds% LSS 0 (
echo Not today!
pause
goto options
)
If %pounds% GTR %gold% (
cls
echo  __H__
echo  ['_'] --Ha! You don't have that much gold.
echo l[ I ]l    Get out of this here house.
echo   Z Z
pause
goto options
) else (
set /a tempnum=%pounds%*10
set /a food=%food%+%tempnum%
set /a gold=%gold%-%pounds%
cls
echo  __H__
echo  ['_'] --Here y'are.
echo l[ I ]l
echo   Z Z
echo You received food.
pause
goto options
)
:farm3
goto options
:farm4
echo NN     N       N    N                 
echo NNNNN  NNN    N    NN  n   N              
echo f F f F f F f F f F f F f F f F f F f F
echo ---------------------------------------
echo The poorly illustrated field burns. 
echo Smoke billows out and is visible for miles.
pause
goto options
:S10
echo Your soldiers march across a barren prairy. 
echo You smell smoke in the air. Some of your soldiers claim to have seen movement in the grass.
pause
cls
echo (X_X)-Hello!
echo -(;)-
echo  ;;
echo You see a burnt looking skeleton.
pause
cls
echo (X_X)-Beware the dragon!
echo -(;)-
echo  ;;
pause
goto options
:S11
echo You come across a dragon!
echo growl-{I__I}_____
echo       {          }-
echo        Z-Z-----ZZ
set beastdisplay1= {I__I}_____
set beastdisplay2= {          }-
set beastdisplay3=  Z-Z-----ZZ
set beastvictory=winsmalldragon
set /a beasthealth=50
set /a beaststrength=10
pause
goto yourturn
:winminitown
cls
echo The town surrenders!
pause
echo What do you want to do?
echo 1: Make the villagers join your army
echo 2: Take their stuff
echo 3: All of the above
CHOICE /c 123
goto winminitown%ERRORLEVEL%
:winminitown1
set /a unloyal=%unloyal%+10
set /a loyal=%loyal%+10
echo You got 20 soldiers.
pause
goto options
:winminitown2
set /a gold=%gold%+100
set /a food=%food%+200
The townspeople gave you 100 gold and 200 food. The town now bears your name. 
pause
goto options
:winminitown3
set /a gold=%gold%+100
set /a food=%food%+200
set /a unloyal=%unloyal%+17
set /a loyal=%loyal%+3
echo You got 100 gold, 200 food, and 20 soldiers.
pause
goto options
:S12
echo You come across a group of 130 scouts from the north kingdom (the one you are trying to conquer)!
echo i  i i    i  i i i     i      i  i i 
set armydisplay1=.
set armydisplay2= i  i i    i  i i i     i      i  i i 
set armyvictory=winroyal
set otherarmypopulation=130
set otheramrygrit=25
set surrenderdirect=S15
pause
goto displayarmy
:scouts
echo The scouts escort you to the royal army.
pause
goto S15
:S13
echo You see a house at the bottom of a hill.
echo 1: enter
echo 2: ignore
echo 3: set on fire
CHOICE /c 123
goto hillhouse%ERRORLEVEL%
:hillhouse1
cls
echo  ("__")-You may come in.
echo (    )
echo I---LL
echo An old man sits hunched over in a corner.
pause
cls
echo  ("__")-I am the wiseman of the game.
echo (    )
echo I---LL
pause
cls
echo  ("__")-I offer you three choices.
echo (    )     Each has a price.
echo I---LL
echo 1: wisdom for time
echo 2: strength for food
echo 3: riches for companions
echo 4: I'm good!
CHOICE /c 1234
goto wiseman%ERRORLEVEL%
:wiseman1
cls
echo ("__")
echo ;(  );
echo  I  I
echo The man stands up.
pause
cls
echo ("__")-I will teach you the secrets of the game.
echo ;(  );
echo  I  I
pause
cls
echo ("__")-The most important thing in this game is "grit".
echo ;(  );   You can boost your grit level by training.
echo  I  I   With grit you are invincible against enemies.
pause
cls
echo ("__") -easy: 1 grit
echo ;(  );  challenging: 2 grit
echo  I  I   grueling: 5 grit
pause
cls
echo ("__")-Food is also important. Each soldier eats 1 lb of food when you advance.
echo ;(  ); A warning appears when you have only 1 or 2 turns left of food.
echo  I  I  
pause
cls
echo ("__")-In a hole lives a spider. The answers to his riddles are:
echo ;(  ); 1. spout   2. spider   3. tarantulas
echo  I  I
pause
cls
echo ("__")-Don't eat pink berries.
echo ;(  );
echo  I  I
pause
cls
echo ("__")-You need about 16 soldiers to lay seige to a town.
echo ;(  );
echo  I  I
pause
cls
echo ("__")-When your unloyal soldiers outnumber the loyal, they will 
echo ;(  );  turn on you.
echo  I  I
pause
cls
echo ("__")-Finally, you must train hard to defeat the royal army.
echo ;(  );  Do not retreat if they have many more soldiers than you
echo  I  I   or they will destroy you as you run from them.
pause
cls
echo You leave the house. The grass in front of you looks different.
pause
cls
echo   ('_')
echo  H(  )
echo   j j
echo.
echo ________________
echo A man on a jetpack flies past.
pause
cls
echo You really did trade in time for wisdom!
echo The kingdom of the past is completely gone.
pause
cls
echo After walking around for a while, you find a fountain memorial.
echo      Y
echo    _I_I_
echo ___I   I____
echo It says: In memory  of the foolish group of %total% soldiers who tried to
echo conquer the royal army of 1000 people but failed miserably.
pause
cls
echo You hear a noise behind you. It is the master of the game.
pause
echo  ("__")-Hello again. I didn't really want to send you into the future
echo  )(  )( forever. I just wanted you to see your fate if you attempt to 
echo   L  L  conquer the royal army too soon.
pause
cls
echo Suddenly, you are back outside the house on the hill.
echo You are back in the past.
pause
goto options
:wiseman2
cls
echo  ("__")-The strength I give will let you do marvelous things.
echo (    ) However, I fear you will not get very far with little food.
echo I---LL
set /a food=%total%*3
set /a grit=100000
set /a armour=100000
pause
goto options
:wiseman3
cls
echo  ("__")-I see you have chosen
echo (    )
echo I---LL
pause
cls
echo Your soldiers start to disappear before your eyes.
pause
echo In each one's place, a large sum of gold appears.
set /a tempnum=%total%*10000
set /a gold=%gold%+%tempnum%
set /a loyal=0
set /a unloyal=0
set /a total=0
pause
goto options
:wiseman4
cls
echo  ("__")-Well, then take this food.
echo (    )
echo I---LL
echo You got 20 lbs of food.
set /a food=%food%+20
pause
goto options
:hillhouse2
pause
goto options
:hillhouse3
cls
echo As the house burns, the door swings open and an old man steps out.
echo  ("__")-DARE YOU BURN DOWN MY HOUSE YOUNG FOOL?
echo  )(  )(  YOU SHALL SURELY PAY!
echo   L  L
echo 1: Give him some money.
echo 2: Attack him.
echo 3: Ignore.
CHOICE /c 123
cls
echo  ("__")-YOU SHALL NOT CALM ME!
echo  )(  )(PREPARE TO FACE MY WRATH!
echo   L  L
echo 1: run away
echo 2: face his wrath
CHOICE /c 12
echo An earthquake makes your troops fall to the ground.
pause
cls
echo They look up.
pause
cls
echo  (   (.)  (.)  )
echo (       J       )
echo  (    mmmmm    )
echo Behold the old man's wrath.
set /a beasthealth=1000
set /a beaststrength=1000
set beastdisplay1=  (   (.)  (.)  )
set beastdisplay2= (       J       )
set beastdisplay3=  (    mmmmm    )
set beastvictory=winwrath
pause
goto yourturn
:S14
echo You come to Richton.
echo This town lies between you and the royal army.
echo 1: lay seige
echo 2: turn around
echo 3: ask to pass through
CHOICE /c 123
goto %ERRORLEVEL%richton
:1richton
set postseige=winrichton
goto seige
:2richton
set /a location=%location%-1
goto options
:3richton
echo The town will not let you pass through
pause
cls
echo 1: lay seige
echo 2: turn around
CHOICE /c 12
goto %ERRORLEVEL%richton
:winrichton
echo The town surrenders!
echo Nobody wants to join your army.
echo 1: Make them!
echo 2: Just take their stuff
CHOICE /c 12
goto winrichton%ERRORLEVEL%
:winrichton1
echo You got 100 unloyal soldiers.
set /a unloyal=%unloyal%+100
:winrichton2
echo You got 200 gold, and a bunch of weapony stuff.
set /a gold=%gold%+200
set /a shields=%shields%%+80
set /a bows=%bows%+17
set /a arrows=%arrows%+34182
set /a swords=%swords%+122
pause
goto options
:S15
REM  123456789012345689012345678901234567890123456789012345678901234567890123456789012345678901234567890
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo Behold the royal army! (population 1,200)
pause
set armydisplay1= This army is way
set armydisplay2=too big to display.
set armyvictory=winroyal
set otherarmypopulation=1200
set otherarmygrit=30
set surrenderdirect=nomercy
goto displayarmy
:nomercy
cls
echo The Royal Army ignores your surrender and destroys you.
pause
goto death
:S16
echo You see a wall in the distance.
echo 1: approach
echo 2: backtrack
CHOICE /c 12
goto wall%ERRORLEVEL%
:wall1
set dmaredirect=wallb1
goto displaymyarmy
:wallb1
cls
echo      -   - -   -
echo  -   -    - -    -   - -  
echo %myarmydisplay%  -  -
echo The people in the wall are firing arrows at you!
pause
IF %shields% LSS %total% (
echo 5 soldiers were lost.
) else (
echo Your troops used shields to block the arrows.
)
pause
echo You are at the wall.
echo 1: dig a tunnel
CHOICE /c 1
goto tunnel%ERRORLEVEL%
:tunnel2
set postseige=royalhall
goto seige
:tunnel1
echo The troops start digging.
IF %total% LSS 5 (
echo The hole slowly gets bigger
pause
pause
echo Suddenly, boiling water pours down on your head.
echo Only one person is still digging.
pause
cls
pause
pause
pause
pause
echo The hole is big enough to fit inside. You are now able to dig more safely.
pause
cls
pause
pause
pause
pause
pause
pause
pause
pause
pause
pause
echo You emerge on the other side of the wall!
pause
goto royalhall
) ELSE (
cls
echo As your soldiers dig, boiling water falls down on them from above.
echo New ones move in and take their place digging.
pause
pause
echo Soon, you can squeeze through to the other side.
pause
goto royalhall
)
:wall2
echo You backtrack.
set /a location=15
pause
goto options
:royalhall
cls
echo Large palaces surround you. A clear path leads to the central palace.
echo As you walk towards the central palace, the vast gardens and castles seem deserted.
pause
echo Out of the palace comes a man holding a white flag.
echo    MMMMMM
echo   ('____')  HHHH
echo -(        )-l
echo    L    L
echo  "I don't know how, but you destroyed everything."
pause
cls
echo    MMMMMM
echo   ('____')  HHHH
echo -(        )-l
echo    L    L
echo "Listen, though. I've still got a lot of influence.
echo    If you join me, we can oppress a lot of peasants
echo    and double the taxes! With your army and my 
echo    leadership we can be unstopable!"
pause
cls
echo    MMMMMM
echo   ('____')  HHHH
echo -(        )-l
echo    L    L
echo "So, what do you say?"
echo 1: No way!
echo 2: Sure!
CHOICE /c 12
goto join%ERRORLEVEL%
:join1
cls
echo    MMMMMM
echo   ('____')  HHHH
echo -(        )-l
echo    L    L
echo "Oh, I see. Well, uh, if you let me free I'll tell you
echo where to find the secret gold."
echo 1: OK
echo 2: Nope
CHOICE /c 12
goto secretgold%ERRORLEVEL%
:join2
cls
echo    MMMMMM
echo   ('____')  HHHH
echo -(        )-l
echo    L    L
echo "I knew you'd see reason!"
echo The game ends here
goto end
:secretgold1
cls
echo    MMMMMM
echo   ('____')  HHHH
echo -(        )-l
echo    L    L
echo "The secret gold is in the-"
pause>nul 3
goto kingfree
:kingfree
cls
echo                          MMMMMM
echo                     === ('____')  HHHH
echo                  ===  -(        )-l
echo                   ===    Z    Z
echo "SMELL YOU LATER!"
:secretgold2
cls
echo    MMMMMM
echo   ('____')  HHHH
echo -(        )-l
echo    L    L
echo "Alright, you leave me no choice. I guess I'll have
echo bring out my giant dragon... Unless you'd be willing
echo to let me go."
echo 1: OK
echo 2: You're bluffing
CHOICE /c 12
IF %ERRORLEVEL%==2 (
goto royaldragon
) else (
goto kingfree
)
:royaldragon
cls
echo    MMMMMM
echo   ('____')  HHHH
echo -(        )-l
echo    L    L
echo "Okay, okay. But listen. Before you
echo throw me in jail, there's this guy
echo who I owe a lot of money. If you
echo take over, you'll have to pay it."
pause
cls
echo Suddenly, you see a man behind you. He seems familiar.
pause
cls
echo  ("__")-I see the king has been defeated at last.
echo  )(  )(   I will not force you to pay his debt, but
echo   L  L    I must warn you of the dangers of being king.
pause
cls
echo  ("__")-You see, as we speak, there is a troop of five
echo  )(  )(  soldiers in the woods, intent on destroying you
echo   L  L   for no purpose other than to win the game.
pause
cls
echo  ("__")
echo  )(  )( 
echo   L  L 
echo   end.
pause
goto end
REM
REM
REM
REM ---------------------------------------------------------------------------------------------------------------------------------------------
:winwoodbeast
set /a food=%food%+30
If %armour% LSS 2 (
set /a armour=2
)
set /a grit=%grit%+2
echo You've slain the beast! You got 30 meat and level 2 beast skin armour. Best of all...you built character!
pause
goto options
:winspider
if %armour% LSS 4 (
set /a armour=3
)
set /a swords=%swords%+27
set /a gold=%gold%+38
set /a grit=%grit%+4
set /a spider=0
echo You've slain the spider and looted the chamber! You got iron level 3 armour, 27 swords, and 38 gold. Best of all...you built character!
pause
goto options
:spiderpeople
cls
echo You see some people trapped in spider webs. Do you free them?
CHOICE /c yn
if %ERRORLEVEL%==1 (
set /a loyal=%loyal%+7
set /a total=%total%+7
echo You gained 7 loyal soldiers!
pause
set dmaredirect=spiderintro
goto displaymyarmy
) else (
echo Your soldiers left the others behind
pause
goto spiderintro
)
:winsmalldragon
set /a food=%food%+300
set /a armour=5
echo You've slain the dragon! You gained 300 lbs of meat and level 5 armour.
pause
goto options
:winroyal
echo Your army of %total% men just defeated the Royal Army of 1,680!
echo Take a moment to reflect upon how funny the game mechanics are.
pause
set /a gold=%gold%+100000
set /a food=%food%+1000000
set /a swords=%swords%+1680
set /a bows=%bows%+500
set /a armour=7
set /a arrows=%arrows%+1000000
set /a grit=1000000
echo From the army, you got 100000 lbs of food and gold, 1680 swords, 500 bows, 100000 arrows, and level 7 armour!
echo But let's not forget, best of all... you built LOTS of character!
pause
goto options
:rebellion
cls
if %food% LSS 1 (
echo There is no food left in the camp.
echo Your soldiers decide to turn on you.
) else (
echo Your unloyal soldiers outnumber your loyal ones.
echo Prepare to defend yourself.
)
pause
cls
echo 1: Run away
echo 2: Fight
CHOICE /c 12
goto run%ERRORLEVEL%
:run1
cls
echo You are running for your life from a band of %unloyal% soldiers.
echo How fast do you run?
echo 1: slowly, so you don't wear out
echo 2: moderately
echo 3: as fast as you can
choice /c 123
goto speed%ERRORLEVEL%
:speed1
:speed2
echo Your troops soon caught up to you. Game over.
pause
goto death
:speed3
cls
echo You take off as fast as you can.
echo You see a house, some shrubs, and a tree.
echo Where do you hide?
echo 1: house
echo 2: shrubs
echo 3: tree
CHOICE /c 123
goto hide%ERRORLEVEL%
:hide1
cls
echo You knock on the door because it is locked. An old lady opens up.
echo  HHH
echo (-_-)--What are you doing at my house at this time of night?
echo ( i )
echo  I I
echo.
echo What do you say?
echo 1: I mean you no harm, but I am in great danger and need to come in.
echo 2: Can't talk now, just let me in!
echo 3: Nothing, you just shove her aside and walk in.
CHOICE /c 123
goto explain%ERRORLEVEL%
:explain1
cls
echo  HHH
echo (-_-)--Okay, you can come in...
echo ( i )
echo  I I
pause
cls
echo You stay at the house until the troops are gone. On your way out, you meet three guys who have heard of your army's past strength. They agree to help you.
echo You are back to business.
set /a loyal=3
set /a unloyal=0
set /a total=3
pause
goto options
:explain2
cls
echo  HHH
echo (-_-)--Eh? What'd you say?
echo ( i )
echo  I I
timeout>nul 3
cls 
echo  HHH
echo (-_-)--You'd better look behind you.
echo ( i )
echo  I I
pause
goto found
:explain3
cls
echo You push past the lady and lock the door. You are both inside the house.
pause
cls
echo  HHH
echo ('o')--AAKK! AAAH! SHREEK! SCREAM!
echo ( i )
echo  I I
echo The wild screaming brings the soldiers to the house.
pause
goto found
:hide2
echo You dive into othe shrubs and bury yourself as well as you can in them.
echo You will be there for a while, so just wait.
timeout>nul 1
timeout>nul 1
timeout>nul 1
echo You here a noise.
timeout>nul 1
timeout>nul 1
echo It was probably nothing
timeout>nul 1
timeout>nul 1
timeout>nul 1
timeout>nul 1
echo You are bored of waiting
timeout>nul 1
timeout>nul 1
echo Suddenly, something steps on you! 
timeout>nul 1
echo It's one of the unloyal soldiers!
pause
:hide3
echo     (        )
echo        l l  l
echo    ()   lll
echo    8    ll
echo ~~~~~~~~~~~~
echo You come to the tree.
pause
cls
echo     (    ()  )
echo        l l8 l
echo         lll
echo         ll
echo ~~~~~~~~~~~~
echo You here the army coming, so you climb it.
pause
cls
echo     (    ()  )
echo        l l8 l
echo ()  ()  lll   ()
echo  8  8  ll     8
echo ~~~~~~~~~~~~~~~~~
echo Your old army is right under the tree, but they can't see you.
echo All they see is a bunch of confusing keyboard symbols.
pause
cls
timeout>nul 1
echo You stayed in the tree all night. The next day, you climbed down.
echo You met some folks who had heard of your army's previous strength. 
echo They agreed to help you start a new army.
echo You got 3 loyal soldiers.
set /a loyal=3
set /a unloyal=0
set /a total=3
pause
goto options
:found
cls
echo  _____
echo {(`o`)} --Hey everyone! I found him!
echo I(   )I
echo   I I
echo You are 
echo  here.
timeout>nul 3
cls
echo  _____    _____    _____    _____    _____    _____
echo {(`_`)}  {('_')}  {('_')}  {('_')}  {(~_~)}  {('_')}
echo I(   )I  I(   )I  I( i )I   I( )I   I(   )I   I( )I
echo   I I      I I      I I      I I      I I      I I   
echo Your troops have found you-and they're not happy.
pause
cls
echo  _____    _____    _____    _____    _____    _____
echo {(`_`)}  {('_')}  {('_')}  {('_')}  {(~_~)}  {('_')}--We're going to get yoo!
echo I(   )I  I(   )I  I( i )I   I( )I   I(   )I   I( )I
echo   I I      I I      I I      I I      I I      I I   
echo Dun, dun, dun
pause
goto death
:run2
IF %total% GTR 4 (
goto runb2
) ELSE (
goto runc2
)
:runb2
cls
echo The soldiers greatly outnumber you!
echo  _____    _____    _____    _____    _____    _____
echo {(`_`)}  {('_')}  {('_')}  {('_')}  {(~_~)}  {('_')}--We're going to get yoo!
echo I(   )I  I(   )I  I( i )I   I( )I   I(   )I   I( )I
echo   I I      I I      I I      I I      I I      I I  
pause
cls
echo Dun, dun, dun
pause
goto death
:runc2
goto fight%total%soldiers
:fight1soldiers
cls
echo  _____ 
echo {(`_`)}-I am your only soldier!
echo I(   )I
echo   I I  
echo 1: persuade
echo 2: fight
CHOICE /c 12
goto f1s%ERRORLEVEL%
:f1s1
cls
echo  _____ 
echo {(`_`)}-Fine. I'll stop rebelling.
echo I(   )I
echo   I I  
:f1s2
cls
echo  _____ 
echo {(`_`)}
echo I(   )I
echo   I I  
echo Soldier punches you.
echo 1: punch back
echo 2: run away
CHOICE /c 12
goto f1sb%ERRORLEVEL%
:f1sb1
:f1sb2
:fight2soldiers
echo soldiers win
pause
goto death
:fight3soldiers
echo soldiers win
pause
goto death
:fight4soldiers
echo soldiers win
pause
goto death
:huntintro
cls
set /a animaly=0
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I              II
set hunt4=                  .  
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
echo You are about to hunt. Press 1 to wait. Press 2 to attack an animal if one appears.
pause
:hunt
cls
echo %hunt1%
echo %hunt2%
echo %hunt3%
echo %hunt4%      
echo %hunt5%
echo %hunt6%
echo %hunt7%
echo ---------------------------
echo You see the landscape above.
echo 1: wait
echo 2: attack
CHOICE /c 12
GOTO hunt%ERRORLEVEL%
:hunt1
If %animaly%==0 (
goto randomanimal
) ELSE (
goto animal%animaly%
)
:randomanimal
set /a tempnum=%RANDOM% %%3 +1
IF %tempnum%==1 (
set /a animaly=1
set hunt1=Y YY  M Y Y    Y Y Y
)
goto hunt
:animal1
set /a animaly=2
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )  M         (  ) 
set hunt3=   I              II
set hunt4=                  .  
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
goto hunt
:animal2
set /a tempnum=%RANDOM% %%2 +1
IF %tempnum%==1 (
goto animalb2
) ELSE (
goto animalc2
)
:animalb2
set /a animaly=1
set hunt1=Y YY  M Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I              II
set hunt4=                  .  
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
goto hunt
:animalc2
set /a animaly=3
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )    ()      (  ) 
set hunt3=   I    MM        II
set hunt4=                  .  
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
goto hunt
:animal3
set /a tempnum=%RANDOM% %%2 +1
IF %tempnum%==1 (
goto animalb3
) ELSE (
goto animalc3
)
:animalb3
set /a animaly=2
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )  M         (  ) 
set hunt3=   I              II
set hunt4=                  .  
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
goto hunt
:animalc3
set /a animaly=4
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I     ('')      II
set hunt4=        MMMM
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
goto hunt
:animal4
set /a tempnum=%RANDOM% %%2 +1 
IF %tempnum%==1 (
goto animalb4
) ELSE ( 
goto animalc4
)
:animalb4
set /a animaly=3
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )   ()       (  ) 
set hunt3=   I   MM         II
set hunt4=                  .  
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
goto hunt
:animalc4
set /a animaly=5
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I       YY      II
set hunt4=          ('') 
set hunt5=(    ) (,  ,)
set hunt6=  II              (  )
set hunt7=  II               II
goto hunt
:animal5
set /a tempnum=%RANDOM% %%2 +1
IF %tempnum%==1 (
goto animalb5
) ELSE ( 
goto animalc5
)
:animalb5
set /a animaly=6
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I              II
set hunt4=            Y Y   .  
set hunt5=(    )     ('_')      
set hunt6=  II    (     )   (  )
set hunt7=  II     M   M     II
goto hunt
:animalc5
set /a animaly=4
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I     ('')      II
set hunt4=        MMMM
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
goto hunt
:animal6
set /a tempnum=%RANDOM% %%2 +1
IF %tempnum%==1 (
goto animalb6
) ELSE ( 
goto animalc6
)
:animalb6
set /a animaly=7
set hunt1=     Y Y   Y Y
set hunt2=      Y     Y
set hunt3=  I  _     _  I
set hunt4= I   0     0   I
set hunt5= I   - ..  -   I
set hunt6=  I   _____   I
set hunt7= The beast sniffs you.
goto hunt
:animalc6
set /a animaly=5
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I       YY     II
set hunt4=          ('') 
set hunt5=(    ) (,  ,)
set hunt6=  II              (  )
set hunt7=  II               II
goto hunt
:animal7
set /a tempnum=%RANDOM% %%2 +1
set hunt4=               .  
IF %tempnum%==1 (
goto animalb7
) ELSE ( 
goto hunt
)
:animalb7
set /a animaly=6
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I              II
set hunt4=            Y Y   .  
set hunt5=(    )     ('_')      
set hunt6=  II    (     )   (  )
set hunt7=  II     M   M     II
goto hunt
:hunt2
set /a tempnum=8-%animaly%
set /a tempnum2=%random% %%tempnum +1
IF %tempnum2% LSS 3 (
echo You caught the beast.
echo You got 50 lbs of meat.
set /a food=%food%+50
pause
goto options
) ELSE (
echo Your soldiers couldn't catch the beast. It was too far away.
pause
goto options
)
set hunt1=Y YY    Y Y    Y Y Y
set hunt2=  ( )            (  ) 
set hunt3=   I              II
set hunt4=                  .  
set hunt5=(    )
set hunt6=  II              (  )
set hunt7=  II               II
:displaymyarmy
set myarmydisplay= 
set loop=0
:loop
set /a tempnum=%total%
set myarmydisplay=%myarmydisplay%i 
set /a loop=%loop%+1
if %loop% LSS %tempnum% (
goto loop
) ELSE (
goto loopb
)
:loopb
if %spidertame%==1 (
set myarmydisplay=%myarmydisplay%}o{
)
goto %dmaredirect%
:winroyaltown
echo A white flag appears on the top of the main castle. 
echo 1: 
:winwrath
cls
echo As you deliver the final blow, a bright light flashes.
pause
cls
echo The world around you starts to fade. Your troops splinter apart into thousands of tiny keyboard symbols.
pause
echo It becomes clear that the game is ending. You have done all that you can do here.
pause
echo The last sentence in the world appears on the screen, and the game ends.
REM woohoo
pause
goto end
:end
cls
echo Brought to you by the i.
echo  ('__')-roar.
echo  (      )
echo   I I I I
echo Thanks. to all who played and tested this game.
pause