CREATE SCHEMA IF NOT EXISTS SG;
USE SG;

DROP TABLE IF EXISTS s_customer;
CREATE TABLE s_customer 
 (id                         VARCHAR(3)  NOT NULL,
  nombre                       VARCHAR(20) NOT NULL,
  telefono                      VARCHAR(20) NOT NULL,
  direccion                    VARCHAR(20),
  ciudad                       VARCHAR(20),
  estados                      VARCHAR(15),
  pais                    VARCHAR(20),
  zip_code                   VARCHAR(15),
  clasificacion              VARCHAR(9),
  sales_rep_id               VARCHAR(3),
  region_id                  VARCHAR(3),
  comments                   VARCHAR(255),
  CONSTRAINT s_customer_id_pk PRIMARY KEY (id),
  CONSTRAINT s_customer_credit_rating_ck
  CHECK (credit_rating IN ('EXCELLENT', 'GOOD', 'POOR'))
 );


INSERT INTO s_customer VALUES ('301', 'Sports,Inc', '540-123-4567','72 High St',
'Harrisonburg', 'VA','US', '22809','EXCELLENT', '12', '1', NULL);
INSERT INTO s_customer VALUES ('302', 'Toms Sporting Goods', '540-987-6543','6741 Main St',
'Harrisonburg', 'VA','US', '22809','POOR', '14', '1', NULL);
INSERT INTO s_customer VALUES ('303', 'Athletic Attire', '540-123-6789','54 Market St',
'Harrisonburg', 'VA','US', '22808','GOOD', '14', '1', NULL);
INSERT INTO s_customer 
VALUES ('304', 'Athletics For All', '540-987-1234','286 Main St', 'Harrisonburg', 'VA',
'US', '22808','EXCELLENT', '12', '1', NULL);
INSERT INTO s_customer VALUES ('305', 'Shoes for Sports', '540-123-9876','538 High St',
'Harrisonburg', 'VA','US', '22809','EXCELLENT', '14', '1', NULL);
INSERT INTO s_customer VALUES ('306', 'BJ Athletics', '540-987-9999','632 Water St',
'Harrisonburg', 'VA','US', '22810','POOR', '12', '1', NULL);


