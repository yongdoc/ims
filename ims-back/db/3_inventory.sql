--+up
CREATE TABLE ims.inventory (
    id uuid PRIMARY KEY,
    product_id uuid NOT NULL,
    rack_id uuid NOT NULL,
    created_at timestamptz NOT NULL DEFAULT current_timestamp,
    updated_at timestamptz,

    constraint fk_inv_product foreign key (product_id) references product(id),
    constraint fk_inv_rack foreign key (rack_id) REFERENCES rack(id)
);

--+down
DROP TABLE ims.inventory;