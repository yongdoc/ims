--+up
CREATE TABLE
    ims.product_category (category varchar PRIMARY KEY);

INSERT INTO
    ims.product_category (category)
VALUES
    ('book'),
    ('technology'),
    ('accessory'),
    ('apparel'),
    ('other');

CREATE TABLE
    ims.product (
        id uuid PRIMARY KEY,
        name varchar not null,
        sku varchar not null,
        category varchar not null default 'other',
        description varchar not null default '',
        image_url varchar,
        created_at timestamptz NOT NULL DEFAULT current_timestamp,
        updated_at timestamptz,
        
        constraint fk_prd_type foreign key (category) references product_category (category)
    );

--+down
DROP TABLE ims.product;

DROP TABLE ims.product_category;