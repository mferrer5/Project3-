DROP TABLE dish CASCADE CONSTRAINTS;
CREATE TABLE dish (
  dishNum           number(2) not null,
  dishName          varchar2(60) not null, 
  restaurantName    varchar2(50) not null,
  primary key(dishNum)
);

DROP TABLE restaurant CASCADE CONSTRAINTS;
CREATE TABLE restaurant (
  rName         varchar2(25) not null,
  rNumber       number(3) not null,
  primary key (rNumber),
  unique (rName)
);

ALTER TABLE dish ADD (
  foreign key (restaurantName) references restaurant(rName)
);

DROP TABLE located_in CASCADE CONSTRAINTS;
CREATE TABLE located_in (
    rNumber     number(3) not null,
    rCountry    varchar2(25) not null,
    primary key (rNumber, rCountry),
    foreign key (rNumber) references restaurant(rNumber)
);
    