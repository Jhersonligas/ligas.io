:- use_module(library(date_time)).

% 1 gigasecond = 1,000,000,000 seconds
gigasecond(1000000000).

% Rule: add 1 gigasecond to a given Date
add_gigasecond(Date, GigasecondDate) :-
    gigasecond(GS),

    
    % convert given date to a timestamp
    date_time_stamp(Date, StartStamp),

    
    % add 1 gigasecond
    EndStamp is StartStamp + GS,

    
    % convert back to a date
    stamp_date_time(EndStamp, GigasecondDate, 'UTC').


%A gigasecond is 1,000,000,000 seconds.