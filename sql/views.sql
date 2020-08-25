CREATE ALGORITHM=UNDEFINED DEFINER=`marketdata`@`%` SQL SECURITY DEFINER VIEW `market_data_analysis` AS select `market_data_source`.`symbol` AS `symbol`,`market_data_source`.`name` AS `name`,`market_data_source`.`sector` AS `sector`,`market_data_source`.`industry` AS `industry`,`market_data_source`.`open` AS `open`,`market_data_source`.`high` AS `high`,`market_data_source`.`low` AS `low`,`market_data_source`.`close` AS `close`,`market_data_source`.`adj_close` AS `adj_close`,`market_data_source`.`volume` AS `volume`,`market_data_source`.`dividend_amount` AS `dividend_amount`,`market_data_source`.`split_coefficient` AS `split_coefficient`,`market_data_source`.`fte` AS `fte`,`market_data_source`.`fiscal_ye` AS `fiscal_ye`,`market_data_source`.`latest_qtr` AS `latest_qtr`,`market_data_source`.`market_cap` AS `market_cap`,`market_data_source`.`ebitda` AS `ebitda`,`market_data_source`.`pe_ratio` AS `pe_ratio`,`market_data_source`.`peg_ratio` AS `peg_ratio`,`market_data_source`.`book_value` AS `book_value`,`market_data_source`.`div_per_share` AS `div_per_share`,`market_data_source`.`div_yield` AS `div_yield`,`market_data_source`.`eps` AS `eps`,`market_data_source`.`revenue_per_share` AS `revenue_per_share`,`market_data_source`.`profit_margin` AS `profit_margin`,`market_data_source`.`return_on_assets` AS `return_on_assets`,`market_data_source`.`return_on_equity` AS `return_on_equity`,`market_data_source`.`revenue` AS `revenue`,`market_data_source`.`gross_profit` AS `gross_profit`,`market_data_source`.`diluted_eps` AS `diluted_eps`,`market_data_source`.`qtr_earnings_growth_yoy` AS `qtr_earnings_growth_yoy`,`market_data_source`.`qtr_revenue_growth_yoy` AS `qtr_revenue_growth_yoy`,`market_data_source`.`analyst_target_price` AS `analyst_target_price`,`market_data_source`.`trailing_pe` AS `trailing_pe`,`market_data_source`.`forward_pe` AS `forward_pe`,`market_data_source`.`price_to_sales_ratio` AS `price_to_sales_ratio`,`market_data_source`.`price_to_book_ratio` AS `price_to_book_ratio`,`market_data_source`.`ev_to_revenue` AS `ev_to_revenue`,`market_data_source`.`ev_to_ebitda` AS `ev_to_ebitda`,`market_data_source`.`beta` AS `beta`,`market_data_source`.`52_week_high` AS `52_week_high`,`market_data_source`.`52_week_low` AS `52_week_low`,`market_data_source`.`50_day_moving_avg` AS `50_day_moving_avg`,`market_data_source`.`200_day_moving_avg` AS `200_day_moving_avg`,`market_data_source`.`shares_outstanding` AS `shares_outstanding`,`market_data_source`.`shares_float` AS `shares_float`,`market_data_source`.`shares_short` AS `shares_short`,`market_data_source`.`shares_short_prior_month` AS `shares_short_prior_month`,`market_data_source`.`short_ratio` AS `short_ratio`,`market_data_source`.`short_percent_outstanding` AS `short_percent_outstanding`,`market_data_source`.`short_percent_float` AS `short_percent_float`,`market_data_source`.`percent_insider` AS `percent_insider`,`market_data_source`.`percent_institution` AS `percent_institution`,`market_data_source`.`forward_annual_div_rate` AS `forward_annual_div_rate`,`market_data_source`.`forward_annual_div_yield` AS `forward_annual_div_yield`,`market_data_source`.`payout_ratio` AS `payout_ratio`,`market_data_source`.`sma` AS `sma`,`market_data_source`.`ema` AS `ema`,`market_data_source`.`macd` AS `macd`,`market_data_source`.`macd_signal` AS `macd_signal`,`market_data_source`.`macd_hist` AS `macd_hist`,`market_data_source`.`stoch_slow_d` AS `stoch_slow_d`,`market_data_source`.`stoch_slow_k` AS `stoch_slow_k`,`market_data_source`.`rsi` AS `rsi`,`market_data_source`.`stochrsi_fast_d` AS `stochrsi_fast_d`,`market_data_source`.`stochrsi_fast_k` AS `stochrsi_fast_k`,`market_data_source`.`willr` AS `willr`,`market_data_source`.`roc` AS `roc`,`market_data_source`.`rocr` AS `rocr`,`market_data_source`.`bbands_upper` AS `bbands_upper`,`market_data_source`.`bbands_middle` AS `bbands_middle`,`market_data_source`.`bbands_lower` AS `bbands_lower`,`market_data_source`.`refresh_date` AS `refresh_date` from `market_data_source` where `market_data_source`.`close` > 0 and `market_data_source`.`market_cap` > 0 and `market_data_source`.`pe_ratio` > 0 and `market_data_source`.`ebitda` > 0 and `market_data_source`.`sma` > 0 and `market_data_source`.`macd` > 0 and `market_data_source`.`bbands_upper` > 0 and `market_data_source`.`bbands_middle` > 0 and `market_data_source`.`bbands_lower` > 0 order by `market_data_source`.`symbol`

CREATE ALGORITHM=UNDEFINED DEFINER=`marketdata`@`%` SQL SECURITY DEFINER VIEW `market_data_fundamental` AS select `market_data_source`.`symbol` AS `symbol`,`market_data_source`.`name` AS `name`,`market_data_source`.`sector` AS `sector`,`market_data_source`.`industry` AS `industry`,`market_data_source`.`open` AS `open`,`market_data_source`.`high` AS `high`,`market_data_source`.`low` AS `low`,`market_data_source`.`close` AS `close`,`market_data_source`.`adj_close` AS `adj_close`,`market_data_source`.`volume` AS `volume`,`market_data_source`.`dividend_amount` AS `dividend_amount`,`market_data_source`.`split_coefficient` AS `split_coefficient`,`market_data_source`.`fte` AS `fte`,`market_data_source`.`fiscal_ye` AS `fiscal_ye`,`market_data_source`.`latest_qtr` AS `latest_qtr`,`market_data_source`.`market_cap` AS `market_cap`,`market_data_source`.`ebitda` AS `ebitda`,`market_data_source`.`pe_ratio` AS `pe_ratio`,`market_data_source`.`peg_ratio` AS `peg_ratio`,`market_data_source`.`book_value` AS `book_value`,`market_data_source`.`div_per_share` AS `div_per_share`,`market_data_source`.`div_yield` AS `div_yield`,`market_data_source`.`eps` AS `eps`,`market_data_source`.`revenue_per_share` AS `revenue_per_share`,`market_data_source`.`profit_margin` AS `profit_margin`,`market_data_source`.`return_on_assets` AS `return_on_assets`,`market_data_source`.`return_on_equity` AS `return_on_equity`,`market_data_source`.`revenue` AS `revenue`,`market_data_source`.`gross_profit` AS `gross_profit`,`market_data_source`.`diluted_eps` AS `diluted_eps`,`market_data_source`.`qtr_earnings_growth_yoy` AS `qtr_earnings_growth_yoy`,`market_data_source`.`qtr_revenue_growth_yoy` AS `qtr_revenue_growth_yoy`,`market_data_source`.`analyst_target_price` AS `analyst_target_price`,`market_data_source`.`trailing_pe` AS `trailing_pe`,`market_data_source`.`forward_pe` AS `forward_pe`,`market_data_source`.`price_to_sales_ratio` AS `price_to_sales_ratio`,`market_data_source`.`price_to_book_ratio` AS `price_to_book_ratio`,`market_data_source`.`ev_to_revenue` AS `ev_to_revenue`,`market_data_source`.`ev_to_ebitda` AS `ev_to_ebitda`,`market_data_source`.`beta` AS `beta`,`market_data_source`.`52_week_high` AS `52_week_high`,`market_data_source`.`52_week_low` AS `52_week_low`,`market_data_source`.`50_day_moving_avg` AS `50_day_moving_avg`,`market_data_source`.`200_day_moving_avg` AS `200_day_moving_avg`,`market_data_source`.`shares_outstanding` AS `shares_outstanding`,`market_data_source`.`shares_float` AS `shares_float`,`market_data_source`.`shares_short` AS `shares_short`,`market_data_source`.`shares_short_prior_month` AS `shares_short_prior_month`,`market_data_source`.`short_ratio` AS `short_ratio`,`market_data_source`.`short_percent_outstanding` AS `short_percent_outstanding`,`market_data_source`.`short_percent_float` AS `short_percent_float`,`market_data_source`.`percent_insider` AS `percent_insider`,`market_data_source`.`percent_institution` AS `percent_institution`,`market_data_source`.`forward_annual_div_rate` AS `forward_annual_div_rate`,`market_data_source`.`forward_annual_div_yield` AS `forward_annual_div_yield`,`market_data_source`.`payout_ratio` AS `payout_ratio`,`market_data_source`.`sma` AS `sma`,`market_data_source`.`ema` AS `ema`,`market_data_source`.`macd` AS `macd`,`market_data_source`.`macd_signal` AS `macd_signal`,`market_data_source`.`macd_hist` AS `macd_hist`,`market_data_source`.`stoch_slow_d` AS `stoch_slow_d`,`market_data_source`.`stoch_slow_k` AS `stoch_slow_k`,`market_data_source`.`rsi` AS `rsi`,`market_data_source`.`stochrsi_fast_d` AS `stochrsi_fast_d`,`market_data_source`.`stochrsi_fast_k` AS `stochrsi_fast_k`,`market_data_source`.`willr` AS `willr`,`market_data_source`.`roc` AS `roc`,`market_data_source`.`rocr` AS `rocr`,`market_data_source`.`bbands_upper` AS `bbands_upper`,`market_data_source`.`bbands_middle` AS `bbands_middle`,`market_data_source`.`bbands_lower` AS `bbands_lower`,`market_data_source`.`refresh_date` AS `refresh_date` from `market_data_source` where `market_data_source`.`close` > 0 and `market_data_source`.`market_cap` > 0 and `market_data_source`.`pe_ratio` > 0 and `market_data_source`.`ebitda` > 0 order by `market_data_source`.`symbol`

CREATE ALGORITHM=UNDEFINED DEFINER=`marketdata`@`%` SQL SECURITY DEFINER VIEW `market_data_source` AS select `p`.`symbol` AS `symbol`,`o`.`name` AS `name`,`o`.`sector` AS `sector`,`o`.`industry` AS `industry`,`p`.`open` AS `open`,`p`.`high` AS `high`,`p`.`low` AS `low`,`p`.`close` AS `close`,`p`.`adj_close` AS `adj_close`,`p`.`volume` AS `volume`,`p`.`dividend_amount` AS `dividend_amount`,`p`.`split_coefficient` AS `split_coefficient`,`o`.`fte` AS `fte`,`o`.`fiscal_ye` AS `fiscal_ye`,cast(`o`.`latest_qtr` as date) AS `latest_qtr`,`o`.`market_cap` AS `market_cap`,`o`.`ebitda` AS `ebitda`,`o`.`pe_ratio` AS `pe_ratio`,`o`.`peg_ratio` AS `peg_ratio`,`o`.`book_value` AS `book_value`,`o`.`div_per_share` AS `div_per_share`,`o`.`div_yield` AS `div_yield`,`o`.`eps` AS `eps`,`o`.`revenue_per_share` AS `revenue_per_share`,`o`.`profit_margin` AS `profit_margin`,`o`.`return_on_assets` AS `return_on_assets`,`o`.`return_on_equity` AS `return_on_equity`,`o`.`revenue` AS `revenue`,`o`.`gross_profit` AS `gross_profit`,`o`.`diluted_eps` AS `diluted_eps`,`o`.`qtr_earnings_growth_yoy` AS `qtr_earnings_growth_yoy`,`o`.`qtr_revenue_growth_yoy` AS `qtr_revenue_growth_yoy`,`o`.`analyst_target_price` AS `analyst_target_price`,`o`.`trailing_pe` AS `trailing_pe`,`o`.`forward_pe` AS `forward_pe`,`o`.`price_to_sales_ratio` AS `price_to_sales_ratio`,`o`.`price_to_book_ratio` AS `price_to_book_ratio`,`o`.`ev_to_revenue` AS `ev_to_revenue`,`o`.`ev_to_ebitda` AS `ev_to_ebitda`,`o`.`beta` AS `beta`,`o`.`52_week_high` AS `52_week_high`,`o`.`52_week_low` AS `52_week_low`,`o`.`50_day_moving_avg` AS `50_day_moving_avg`,`o`.`200_day_moving_avg` AS `200_day_moving_avg`,`o`.`shares_outstanding` AS `shares_outstanding`,`o`.`shares_float` AS `shares_float`,`o`.`shares_short` AS `shares_short`,`o`.`shares_short_prior_month` AS `shares_short_prior_month`,`o`.`short_ratio` AS `short_ratio`,`o`.`short_percent_outstanding` AS `short_percent_outstanding`,`o`.`short_percent_float` AS `short_percent_float`,`o`.`percent_insider` AS `percent_insider`,`o`.`percent_institution` AS `percent_institution`,`o`.`forward_annual_div_rate` AS `forward_annual_div_rate`,`o`.`forward_annual_div_yield` AS `forward_annual_div_yield`,`o`.`payout_ratio` AS `payout_ratio`,`t`.`sma` AS `sma`,`t`.`ema` AS `ema`,`t`.`macd` AS `macd`,`t`.`macd_signal` AS `macd_signal`,`t`.`macd_hist` AS `macd_hist`,`t`.`stoch_slow_d` AS `stoch_slow_d`,`t`.`stoch_slow_k` AS `stoch_slow_k`,`t`.`rsi` AS `rsi`,`t`.`stochrsi_fast_d` AS `stochrsi_fast_d`,`t`.`stochrsi_fast_k` AS `stochrsi_fast_k`,`t`.`willr` AS `willr`,`t`.`roc` AS `roc`,`t`.`rocr` AS `rocr`,`t`.`bbands_upper` AS `bbands_upper`,`t`.`bbands_middle` AS `bbands_middle`,`t`.`bbands_lower` AS `bbands_lower`,cast(`p`.`price_update_date` as date) AS `refresh_date` from ((`security_price` `p` left join `security_overview` `o` on(`p`.`uuid` = `o`.`uuid`)) left join `security_technical` `t` on(`p`.`uuid` = `t`.`uuid` and `p`.`price_update_date` = `t`.`technical_update_date`)) order by `p`.`price_update_date`,`p`.`symbol`

CREATE ALGORITHM=UNDEFINED DEFINER=`marketdata`@`%` SQL SECURITY DEFINER VIEW `market_data_technical` AS select `market_data_source`.`symbol` AS `symbol`,`market_data_source`.`name` AS `name`,`market_data_source`.`sector` AS `sector`,`market_data_source`.`industry` AS `industry`,`market_data_source`.`open` AS `open`,`market_data_source`.`high` AS `high`,`market_data_source`.`low` AS `low`,`market_data_source`.`close` AS `close`,`market_data_source`.`adj_close` AS `adj_close`,`market_data_source`.`volume` AS `volume`,`market_data_source`.`dividend_amount` AS `dividend_amount`,`market_data_source`.`split_coefficient` AS `split_coefficient`,`market_data_source`.`fte` AS `fte`,`market_data_source`.`fiscal_ye` AS `fiscal_ye`,`market_data_source`.`latest_qtr` AS `latest_qtr`,`market_data_source`.`market_cap` AS `market_cap`,`market_data_source`.`ebitda` AS `ebitda`,`market_data_source`.`pe_ratio` AS `pe_ratio`,`market_data_source`.`peg_ratio` AS `peg_ratio`,`market_data_source`.`book_value` AS `book_value`,`market_data_source`.`div_per_share` AS `div_per_share`,`market_data_source`.`div_yield` AS `div_yield`,`market_data_source`.`eps` AS `eps`,`market_data_source`.`revenue_per_share` AS `revenue_per_share`,`market_data_source`.`profit_margin` AS `profit_margin`,`market_data_source`.`return_on_assets` AS `return_on_assets`,`market_data_source`.`return_on_equity` AS `return_on_equity`,`market_data_source`.`revenue` AS `revenue`,`market_data_source`.`gross_profit` AS `gross_profit`,`market_data_source`.`diluted_eps` AS `diluted_eps`,`market_data_source`.`qtr_earnings_growth_yoy` AS `qtr_earnings_growth_yoy`,`market_data_source`.`qtr_revenue_growth_yoy` AS `qtr_revenue_growth_yoy`,`market_data_source`.`analyst_target_price` AS `analyst_target_price`,`market_data_source`.`trailing_pe` AS `trailing_pe`,`market_data_source`.`forward_pe` AS `forward_pe`,`market_data_source`.`price_to_sales_ratio` AS `price_to_sales_ratio`,`market_data_source`.`price_to_book_ratio` AS `price_to_book_ratio`,`market_data_source`.`ev_to_revenue` AS `ev_to_revenue`,`market_data_source`.`ev_to_ebitda` AS `ev_to_ebitda`,`market_data_source`.`beta` AS `beta`,`market_data_source`.`52_week_high` AS `52_week_high`,`market_data_source`.`52_week_low` AS `52_week_low`,`market_data_source`.`50_day_moving_avg` AS `50_day_moving_avg`,`market_data_source`.`200_day_moving_avg` AS `200_day_moving_avg`,`market_data_source`.`shares_outstanding` AS `shares_outstanding`,`market_data_source`.`shares_float` AS `shares_float`,`market_data_source`.`shares_short` AS `shares_short`,`market_data_source`.`shares_short_prior_month` AS `shares_short_prior_month`,`market_data_source`.`short_ratio` AS `short_ratio`,`market_data_source`.`short_percent_outstanding` AS `short_percent_outstanding`,`market_data_source`.`short_percent_float` AS `short_percent_float`,`market_data_source`.`percent_insider` AS `percent_insider`,`market_data_source`.`percent_institution` AS `percent_institution`,`market_data_source`.`forward_annual_div_rate` AS `forward_annual_div_rate`,`market_data_source`.`forward_annual_div_yield` AS `forward_annual_div_yield`,`market_data_source`.`payout_ratio` AS `payout_ratio`,`market_data_source`.`sma` AS `sma`,`market_data_source`.`ema` AS `ema`,`market_data_source`.`macd` AS `macd`,`market_data_source`.`macd_signal` AS `macd_signal`,`market_data_source`.`macd_hist` AS `macd_hist`,`market_data_source`.`stoch_slow_d` AS `stoch_slow_d`,`market_data_source`.`stoch_slow_k` AS `stoch_slow_k`,`market_data_source`.`rsi` AS `rsi`,`market_data_source`.`stochrsi_fast_d` AS `stochrsi_fast_d`,`market_data_source`.`stochrsi_fast_k` AS `stochrsi_fast_k`,`market_data_source`.`willr` AS `willr`,`market_data_source`.`roc` AS `roc`,`market_data_source`.`rocr` AS `rocr`,`market_data_source`.`bbands_upper` AS `bbands_upper`,`market_data_source`.`bbands_middle` AS `bbands_middle`,`market_data_source`.`bbands_lower` AS `bbands_lower`,`market_data_source`.`refresh_date` AS `refresh_date` from `market_data_source` where `market_data_source`.`sma` > 0 and `market_data_source`.`macd` > 0 and `market_data_source`.`bbands_upper` > 0 and `market_data_source`.`bbands_middle` > 0 and `market_data_source`.`bbands_lower` > 0 order by `market_data_source`.`symbol`

CREATE ALGORITHM=UNDEFINED DEFINER=`marketdata`@`%` SQL SECURITY DEFINER VIEW `security_obs` AS select row_number() over ( order by `security`.`uuid`) AS `obs`,`security`.`uuid` AS `uuid`,`security`.`symbol` AS `symbol` from `security` order by `security`.`uuid`

CREATE ALGORITHM=UNDEFINED DEFINER=`marketdata`@`%` SQL SECURITY DEFINER VIEW `security_overview` AS select `s`.`uuid` AS `uuid`,`s`.`symbol` AS `symbol`,`o`.`name` AS `name`,`o`.`sector` AS `sector`,`o`.`industry` AS `industry`,`o`.`fte` AS `fte`,`o`.`fiscal_ye` AS `fiscal_ye`,cast(`o`.`latest_qtr` as date) AS `latest_qtr`,`o`.`market_cap` AS `market_cap`,`o`.`ebitda` AS `ebitda`,`o`.`pe_ratio` AS `pe_ratio`,`o`.`peg_ratio` AS `peg_ratio`,`o`.`book_value` AS `book_value`,`o`.`div_per_share` AS `div_per_share`,`o`.`div_yield` AS `div_yield`,`o`.`eps` AS `eps`,`o`.`revenue_per_share` AS `revenue_per_share`,`o`.`profit_margin` AS `profit_margin`,`o`.`return_on_assets` AS `return_on_assets`,`o`.`return_on_equity` AS `return_on_equity`,`o`.`revenue` AS `revenue`,`o`.`gross_profit` AS `gross_profit`,`o`.`diluted_eps` AS `diluted_eps`,`o`.`qtr_earnings_growth_yoy` AS `qtr_earnings_growth_yoy`,`o`.`qtr_revenue_growth_yoy` AS `qtr_revenue_growth_yoy`,`o`.`analyst_target_price` AS `analyst_target_price`,`o`.`trailing_pe` AS `trailing_pe`,`o`.`forward_pe` AS `forward_pe`,`o`.`price_to_sales_ratio` AS `price_to_sales_ratio`,`o`.`price_to_book_ratio` AS `price_to_book_ratio`,`o`.`ev_to_revenue` AS `ev_to_revenue`,`o`.`ev_to_ebitda` AS `ev_to_ebitda`,`o`.`beta` AS `beta`,`o`.`52_week_high` AS `52_week_high`,`o`.`52_week_low` AS `52_week_low`,`o`.`50_day_moving_avg` AS `50_day_moving_avg`,`o`.`200_day_moving_avg` AS `200_day_moving_avg`,`o`.`shares_outstanding` AS `shares_outstanding`,`o`.`shares_float` AS `shares_float`,`o`.`shares_short` AS `shares_short`,`o`.`shares_short_prior_month` AS `shares_short_prior_month`,`o`.`short_ratio` AS `short_ratio`,`o`.`short_percent_outstanding` AS `short_percent_outstanding`,`o`.`short_percent_float` AS `short_percent_float`,`o`.`percent_insider` AS `percent_insider`,`o`.`percent_institution` AS `percent_institution`,`o`.`forward_annual_div_rate` AS `forward_annual_div_rate`,`o`.`forward_annual_div_yield` AS `forward_annual_div_yield`,`o`.`payout_ratio` AS `payout_ratio`,cast(`o`.`div_date` as date) AS `div_date`,cast(`o`.`ex_div_date` as date) AS `ex_div_date`,`o`.`last_split_factor` AS `last_split_factor`,cast(`o`.`last_split_date` as date) AS `last_split_date` from (`overview` `o` left join `security` `s` on(`o`.`security_id` = `s`.`uuid`)) order by `s`.`symbol`

CREATE ALGORITHM=UNDEFINED DEFINER=`marketdata`@`%` SQL SECURITY DEFINER VIEW `security_price` AS select `s`.`uuid` AS `uuid`,`s`.`symbol` AS `symbol`,`t`.`type` AS `type`,`e`.`exchange` AS `exchange`,`p`.`open` AS `open`,`p`.`high` AS `high`,`p`.`low` AS `low`,`p`.`close` AS `close`,`p`.`adj_close` AS `adj_close`,`p`.`volume` AS `volume`,`p`.`div_amt` AS `dividend_amount`,`p`.`split_c` AS `split_coefficient`,cast(`p`.`date` as date) AS `price_update_date` from (((`security` `s` left join `type` `t` on(`s`.`type_id` = `t`.`uuid`)) left join `exchange` `e` on(`s`.`exchange_id` = `e`.`uuid`)) left join `price` `p` on(`p`.`security_id` = `s`.`uuid`)) where `p`.`close` is not null order by `p`.`date`,`s`.`symbol`

CREATE ALGORITHM=UNDEFINED DEFINER=`marketdata`@`%` SQL SECURITY DEFINER VIEW `security_segment` AS select `security_obs`.`obs` AS `obs`,`security_obs`.`uuid` AS `uuid`,`security_obs`.`symbol` AS `symbol`,case when (`security_obs`.`obs` >= 1 and `security_obs`.`obs` < 1500) then 'A' when (`security_obs`.`obs` >= 1500 and `security_obs`.`obs` < 3000) then 'B' when (`security_obs`.`obs` >= 3000 and `security_obs`.`obs` < 4500) then 'C' when (`security_obs`.`obs` >= 4500 and `security_obs`.`obs` < 6000) then 'D' when (`security_obs`.`obs` >= 6000 and `security_obs`.`obs` < 7500) then 'E' else 'X' end AS `segment` from `security_obs`

CREATE ALGORITHM=UNDEFINED DEFINER=`marketdata`@`%` SQL SECURITY DEFINER VIEW `security_technical` AS select `s`.`uuid` AS `uuid`,`s`.`symbol` AS `symbol`,`t`.`sma` AS `sma`,`t`.`ema` AS `ema`,`t`.`macd` AS `macd`,`t`.`macd_signal` AS `macd_signal`,`t`.`macd_hist` AS `macd_hist`,`t`.`stoch_slow_d` AS `stoch_slow_d`,`t`.`stoch_slow_k` AS `stoch_slow_k`,`t`.`rsi` AS `rsi`,`t`.`stochrsi_fast_d` AS `stochrsi_fast_d`,`t`.`stochrsi_fast_k` AS `stochrsi_fast_k`,`t`.`willr` AS `willr`,`t`.`roc` AS `roc`,`t`.`rocr` AS `rocr`,`t`.`bbands_upper` AS `bbands_upper`,`t`.`bbands_middle` AS `bbands_middle`,`t`.`bbands_lower` AS `bbands_lower`,cast(`t`.`date` as date) AS `technical_update_date` from (`technical` `t` left join `security` `s` on(`t`.`security_id` = `s`.`uuid`)) where `t`.`sma` is not null order by `t`.`date`,`s`.`symbol`