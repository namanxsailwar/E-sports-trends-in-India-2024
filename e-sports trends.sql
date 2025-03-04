select*from e_sports;
ALTER TABLE e_sports
RENAME COLUMN "In_game_Purchases_($)" TO in_game_purchase_usd;
Alter table e_sports
Rename column "Revenue_($)" to revenue_usd;
create table esports2024 as 
select*
from e_sports
where "Date" >='2024-01-01' and "Date" <'2025-01-01';
select*from esports2024;
-- According to Platforms
select "Platform", sum("Daily_Active_Users")as daily_active_user,sum("New_Registrations")as new_registrations,
sum("in_game_purchase_usd")as in_game_purchases_USD,sum("Social_Media_Mentions")as social_media_mentions,
sum("Stream_Viewership")as stream_viewership,sum("revenue_usd")as revenue_USD
from esports2024
group by "Platform"
order by sum("revenue_usd");
-- According to Genre
select "Top _genre", sum("Daily_Active_Users")as daily_active_user,sum("New_Registrations")as new_registrations,
sum("in_game_purchase_usd")as in_game_purchases_USD,sum("Social_Media_Mentions")as social_media_mentions,
sum("Stream_Viewership")as stream_viewership,sum("revenue_usd")as revenue_USD
from esports2024
group by "Top _genre"
order by sum("revenue_usd");