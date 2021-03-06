alter table regions add column dummy tinyint(1);
update regions set dummy=1;
ALTER TABLE regions MODIFY COLUMN dummy int(1) NOT NULL DEFAULT 1;
alter table comments change column from_user_id from_user int(10) unsigned not null, algorithm=inplace;
alter table comments change column to_user_id to_user int(10) unsigned not null, algorithm=inplace;
alter table categories add column dummy tinyint(1), algorithm=inplace;
update categories set dummy=1;
ALTER TABLE categories MODIFY COLUMN dummy int(1) NOT NULL DEFAULT 1;
alter table comments change column item_id item int(10) unsigned not null, algorithm=inplace;
alter table bids change column item_id item int(10) unsigned not null, algorithm=inplace;
alter table bids change column user_id user int(10) unsigned not null, algorithm=inplace;
rename table buy_now to buynow;
alter table buynow change column buyer_id buyer int(10) unsigned not null, algorithm=inplace;
alter table buynow change column item_id item int(10) unsigned not null, algorithm=inplace;
alter table users change column nickname nickname varchar(50) not null, algorithm=inplace;

